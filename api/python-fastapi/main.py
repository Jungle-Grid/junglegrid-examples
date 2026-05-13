import os

import httpx
from fastapi import FastAPI, HTTPException
from pydantic import BaseModel, Field

API_URL = os.getenv("JUNGLE_GRID_API", "https://api.junglegrid.dev").rstrip("/")
API_KEY = os.environ["JUNGLE_GRID_API_KEY"]

app = FastAPI()


class SubmitRequest(BaseModel):
    name: str = "fastapi-submit"
    image: str
    workload_type: str = "inference"
    model_size_gb: float = 7
    command: str | None = None
    args: list[str] = Field(default_factory=list)
    optimize_for: str = "balanced"


async def forward(path: str, req: SubmitRequest):
    headers = {
        "Authorization": "Bearer " + API_KEY,
        "Content-Type": "application/json",
    }
    payload = req.model_dump(exclude_none=True)

    async with httpx.AsyncClient(timeout=30) as client:
        resp = await client.post(API_URL + path, headers=headers, json=payload)
    data = resp.json()
    if resp.status_code >= 400:
        raise HTTPException(status_code=resp.status_code, detail=data)
    return data


@app.post("/jobs/estimate")
async def estimate_job(req: SubmitRequest):
    return await forward("/v1/jobs/estimate", req)


@app.post("/jobs")
async def submit_job(req: SubmitRequest):
    return await forward("/v1/jobs", req)

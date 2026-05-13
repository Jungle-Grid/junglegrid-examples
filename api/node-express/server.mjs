import express from "express";

const API_URL = (process.env.JUNGLE_GRID_API ?? "https://api.junglegrid.dev").replace(/\/+$/, "");
const API_KEY = process.env.JUNGLE_GRID_API_KEY;

if (!API_KEY) {
  throw new Error("JUNGLE_GRID_API_KEY is required");
}

const app = express();
app.use(express.json());

function buildPayload(input) {
  return {
    name: input.name ?? "express-submit",
    workload_type: input.workload_type ?? "inference",
    model_size_gb: input.model_size_gb ?? 7,
    image: input.image,
    command: input.command,
    args: input.args ?? [],
    optimize_for: input.optimize_for ?? "balanced"
  };
}

async function forward(path, payload) {
  const upstream = await fetch(API_URL + path, {
    method: "POST",
    headers: {
      Authorization: "Bearer " + API_KEY,
      "Content-Type": "application/json"
    },
    body: JSON.stringify(payload)
  });
  return upstream;
}

app.post("/jobs/estimate", async (req, res, next) => {
  try {
    const upstream = await forward("/v1/jobs/estimate", buildPayload(req.body));
    const data = await upstream.json();
    res.status(upstream.status).json(data);
  } catch (err) {
    next(err);
  }
});

app.post("/jobs", async (req, res, next) => {
  try {
    const upstream = await forward("/v1/jobs", buildPayload(req.body));
    const data = await upstream.json();
    res.status(upstream.status).json(data);
  } catch (err) {
    next(err);
  }
});

app.listen(process.env.PORT ?? 3000);

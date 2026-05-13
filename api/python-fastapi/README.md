# Python / FastAPI

## Install

```sh
pip install fastapi uvicorn httpx
```

## Run

```sh
export JUNGLE_GRID_API_KEY=jg_...
uvicorn main:app --reload
```

The server exposes:

- `POST /jobs/estimate`
- `POST /jobs`

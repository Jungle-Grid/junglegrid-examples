# Run an audio transcription job with uploaded files

This example shows the canonical REST payload shape for file-based workloads.
Set `JUNGLE_GRID_API_KEY` before running the commands.

```sh
API_BASE="${JUNGLE_GRID_API_BASE:-https://api.junglegrid.dev}"
AUTH_HEADER="Authorization: Bearer ${JUNGLE_GRID_API_KEY}"
```

## 1. Create the audio upload

```sh
curl -sS -X POST "$API_BASE/v1/job-inputs" \
  -H "$AUTH_HEADER" \
  -H "Content-Type: application/json" \
  -d '{"filename":"audio.wav","content_type":"audio/wav","kind":"input"}'
```

Upload `audio.wav` with `PUT` to the returned absolute `upload_url`, then call the returned absolute `complete_url`:

```sh
curl -sS -X POST "$AUDIO_COMPLETE_URL" \
  -H "$AUTH_HEADER" \
  -H "Content-Type: application/json" \
  -d '{"token":"'"$AUDIO_UPLOAD_TOKEN"'","filename":"audio.wav","content_type":"audio/wav","size_bytes":12345,"etag":"browser-or-storage-etag"}'
```

## 2. Create the script upload

```sh
curl -sS -X POST "$API_BASE/v1/job-inputs" \
  -H "$AUTH_HEADER" \
  -H "Content-Type: application/json" \
  -d '{"filename":"transcribe.py","content_type":"text/x-python","kind":"script"}'
```

Upload `transcribe.py` with `PUT` to the returned `upload_url`, then call the returned `complete_url` with the same completion payload shape.

## 3. Estimate

```sh
curl -sS -X POST "$API_BASE/v1/jobs/estimate" \
  -H "$AUTH_HEADER" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "audio-transcription",
    "workload_type": "inference",
    "image": "ghcr.io/acme/whisper-runtime:cuda",
    "command": ["python", "/workspace/scripts/transcribe.py", "/workspace/inputs/audio.wav", "/workspace/artifacts/transcript.txt"],
    "input_files": [{ "input_id": "'"$AUDIO_INPUT_ID"'" }],
    "script_files": [{ "input_id": "'"$SCRIPT_INPUT_ID"'" }],
    "expected_artifacts": ["/workspace/artifacts/transcript.txt"]
  }'
```

`screening.can_submit: true` means the request is eligible. Check `capacity_status.availability` and `capacity_status.immediate_capacity_confirmed`; `limited` with `false` means startup may be delayed.

## 4. Submit

```sh
curl -sS -X POST "$API_BASE/v1/jobs" \
  -H "$AUTH_HEADER" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "audio-transcription",
    "workload_type": "inference",
    "image": "ghcr.io/acme/whisper-runtime:cuda",
    "command": ["python", "/workspace/scripts/transcribe.py", "/workspace/inputs/audio.wav", "/workspace/artifacts/transcript.txt"],
    "input_files": [{ "input_id": "'"$AUDIO_INPUT_ID"'" }],
    "script_files": [{ "input_id": "'"$SCRIPT_INPUT_ID"'" }],
    "expected_artifacts": ["/workspace/artifacts/transcript.txt"]
  }'
```

## 5. Monitor

```sh
curl -sS "$API_BASE/v1/jobs/$JOB_ID" -H "$AUTH_HEADER"
curl -sS "$API_BASE/v1/jobs/$JOB_ID/events" -H "$AUTH_HEADER"
curl -sS "$API_BASE/v1/jobs/$JOB_ID/logs?limit=100" -H "$AUTH_HEADER"
```

If `startup_diagnostics.command_spawned` is `false`, workload stdout/stderr may not exist yet. Show platform events and continue polling instead of treating empty logs as failure. Log entries include `category`; only `workload_stdout` and `workload_stderr` count toward `startup_diagnostics.workload_logs_available`. Uploaded input/script success does not prove those files were prepared inside the runtime; `inputs_prepared` and `scripts_prepared` may be `null` until the managed runtime emits structured preparation checkpoints.

## 6. Download the transcript

```sh
curl -sS "$API_BASE/v1/jobs/$JOB_ID/artifacts" -H "$AUTH_HEADER"
curl -sS -X POST "$API_BASE/v1/jobs/$JOB_ID/artifacts/$ARTIFACT_ID/download" -H "$AUTH_HEADER"
```

The artifact download response returns an absolute signed `url` for `transcript.txt`.

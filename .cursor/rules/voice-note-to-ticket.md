# Voice Note to Ticket Workflow

Transcribe a local audio file and convert it into development tickets.

## Trigger

Provide a file path to an audio recording and optionally a mode:
- `meeting_notes`
- `bug_report`
- `feature_requirements`
- `github_issue_output`
- `asana_task_output`
- `development_summary`
- `sprint_planning`
- `technical_decision_record`

## Steps

### 1. Receive File (@orchestrator)

- Validate the input file path exists.
- Determine the processing mode.

### 2. Transcribe Audio (@transcriber)

Execute the local Whisper workflow:

1. **Extract variables:**
   - `BASE_NAME` = filename without extension
   - `WAV_FILE` = `/tmp/${BASE_NAME}.wav`
   - `OUTPUT_DIR` = `/Users/borademircan/Documents/01-Work/Wonderfeel/cicd/dev/workspace/raw-data/transcriptions`
   - `OUTPUT_PREFIX` = `${OUTPUT_DIR}/${BASE_NAME}`

2. **Prepare output directory:**
   ```bash
   mkdir -p "${OUTPUT_DIR}"
   ```

3. **Convert to WAV:**
   ```bash
   ffmpeg -y -i "${INPUT_FILE}" -ar 16000 -ac 1 -c:a pcm_s16le "${WAV_FILE}"
   ```
   If this fails → stop workflow, report ffmpeg error.

4. **Run Whisper:**
   ```bash
   /opt/homebrew/opt/whisper-cpp/bin/whisper-cli \
     -m "/Users/borademircan/Library/Application Support/com.prakashjoshipax.VoiceInk/WhisperModels/ggml-large-v3-turbo-q5_0.bin" \
     -f "${WAV_FILE}" \
     -otxt \
     -of "${OUTPUT_PREFIX}"
   ```
   If this fails → stop workflow, report Whisper error.

5. **Cleanup temp WAV:**
   ```bash
   rm "${WAV_FILE}"
   ```

6. **Read transcript** from `${OUTPUT_PREFIX}.txt`.

### 3. Extract Requirements (@transcriber)

- Clean the transcript.
- Extract: summary, action items, decisions, open questions, bugs, requirements.
- Generate ticket drafts based on the requested mode.

### 4. Plan Tasks (@planner)

- Prioritize extracted requirements.
- Write acceptance criteria.
- Identify dependencies and risks.

### 5. Route Work (@orchestrator)

- Assign tasks to appropriate agents.
- Create execution plan.

### 6. Document (@docs)

- Store transcript and meeting notes in knowledge base.
- Create task summary.

## Failure Handling

- **ffmpeg failure:** Stop. Check file path and ffmpeg installation.
- **Whisper failure:** Stop. Check whisper-cli and model paths.
- **Missing transcript:** Stop. Whisper completed but `.txt` not found.
- **Cleanup failure:** Continue. Report cleanup failed separately.

## Approval Required

- Creating external tickets (GitHub, Asana, Jira).
- Deleting original audio files.
- Committing changes.

## Reference

See `.agents/workflows_yaml/voice-note-to-ticket.yaml` for the machine-readable contract.

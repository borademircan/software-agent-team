# Transcription Skill

Use the local whisper-cpp CLI to transcribe audio files.

## Prerequisites

- `ffmpeg` installed and available in PATH
- `whisper-cpp` installed at `/opt/homebrew/opt/whisper-cpp/bin/whisper-cli`
- Whisper model at `/Users/borademircan/Library/Application Support/com.prakashjoshipax.VoiceInk/WhisperModels/ggml-large-v3-turbo-q5_0.bin`

## Execution Steps

Given an input file `<file-path>`:

### 1. Extract Variables

```
INPUT_FILE="<file-path>"
BASE_NAME=$(basename "${INPUT_FILE}" | sed 's/\.[^.]*$//')
WAV_FILE="/tmp/${BASE_NAME}.wav"
OUTPUT_DIR="/Users/borademircan/Documents/01-Work/Wonderfeel/cicd/dev/workspace/raw-data/transcriptions"
OUTPUT_PREFIX="${OUTPUT_DIR}/${BASE_NAME}"
```

### 2. Prepare Output Directory

```bash
mkdir -p "${OUTPUT_DIR}"
```

### 3. Convert Audio

```bash
ffmpeg -y -i "${INPUT_FILE}" -ar 16000 -ac 1 -c:a pcm_s16le "${WAV_FILE}"
```

**If this fails:** Stop. Report ffmpeg error. Do not run Whisper.

### 4. Run Whisper

```bash
/opt/homebrew/opt/whisper-cpp/bin/whisper-cli \
  -m "/Users/borademircan/Library/Application Support/com.prakashjoshipax.VoiceInk/WhisperModels/ggml-large-v3-turbo-q5_0.bin" \
  -f "${WAV_FILE}" \
  -otxt \
  -of "${OUTPUT_PREFIX}"
```

**Expected output:** `${OUTPUT_PREFIX}.txt`

**If this fails:** Report error. Check model and CLI paths.

### 5. Cleanup

```bash
rm "${WAV_FILE}"
```

**If cleanup fails:** Report but do not fail the workflow.

### 6. Read Result

Read `${OUTPUT_PREFIX}.txt` and proceed with analysis.

## Safety Rules

- Never delete the original audio file.
- Quote all file paths (they may contain spaces).
- Only use `/tmp` for temporary WAV.
- Do not continue past a failed step.

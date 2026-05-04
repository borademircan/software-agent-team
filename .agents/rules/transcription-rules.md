# Transcription Rules

These rules apply when processing audio files and transcripts.

## File Safety

- Never delete the original audio file.
- Only delete the temporary WAV file created during conversion.
- Use `/tmp` only for temporary WAV conversion.
- Store final transcripts in the configured output directory.
- Quote file paths safely — paths may contain spaces.

## Execution Safety

- Do not continue to Whisper if ffmpeg conversion fails.
- Do not continue to analysis if the Whisper output `.txt` file does not exist.
- If a command fails, return a clear error summary and the failed stage.
- Create the output directory before writing output.

## Transcript Integrity

- Preserve the meaning of the original recording.
- Keep the raw transcript separate from cleaned or interpreted versions.
- The cleaned transcript must not change the meaning of the original.
- Mark unclear sections explicitly rather than guessing.
- Label technical term corrections as "possible correction" when confidence is low.

## Missing Information

- Use `unknown` when owner, deadline, environment, or priority is not stated.
- Do not invent details to fill gaps.
- List open questions instead of assuming answers.

## Output

- Always include: transcript file path, raw transcript, summary, errors.
- Separate bugs, requirements, action items, and decisions into distinct sections.
- End with suggested tickets when actionable items are found.

## Local Engine

- CLI: `/opt/homebrew/opt/whisper-cpp/bin/whisper-cli`
- Model: `/Users/borademircan/Library/Application Support/com.prakashjoshipax.VoiceInk/WhisperModels/ggml-large-v3-turbo-q5_0.bin`
- Output: `/Users/borademircan/Documents/01-Work/Wonderfeel/cicd/dev/workspace/raw-data/transcriptions`

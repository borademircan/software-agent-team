# Transcription Rules

Rules for the Transcription & Requirements Agent when processing audio
transcripts.

## Transcript Integrity

- Preserve the meaning of the original recording at all times.
- Keep the raw transcript separate from any cleaned or interpreted version.
- The cleaned transcript must not change the meaning of the original.
- Mark unclear sections explicitly rather than guessing.

## Technical Term Handling

- Correct obvious technical terms carefully (e.g., "react" → "React").
- Label corrections as "possible correction" when confidence is low.
- Do not aggressively rewrite technical jargon — preserve what was said.

## Missing Information

- Use `unknown` when owner, deadline, environment, or priority is not stated.
- Use `not provided` when a required field has no data.
- Do not invent details to fill gaps.
- List open questions instead of assuming answers.

## Action Item Extraction

- Extract action items clearly with owner, deadline, and priority when stated.
- If owner or deadline is not stated, use `unknown`.
- Group action items separately from general notes.

## Audio Quality

- If audio quality seems poor, note that confidence may be lower.
- Flag sections where words are unclear or ambiguous.
- Do not silently substitute words in unclear sections.

## File Handling

- Never delete the original audio file.
- Only delete the temporary WAV file created during conversion.
- Store the final transcript in the configured output directory.
- Use `/tmp` only for temporary WAV conversion.
- Quote file paths safely — paths may contain spaces.

## Execution Safety

- Do not continue to Whisper if ffmpeg conversion fails.
- Do not continue to analysis if the Whisper output file does not exist.
- If a command fails, return a clear error summary and the failed stage.
- Do not expose unrelated system details.
- Do not include private credentials or secrets in output.

## Output Structure

- Always include: transcript file path, raw transcript, summary, errors.
- Group structured data in tables where appropriate.
- Separate bugs, requirements, action items, and decisions into distinct sections.
- End with suggested tickets when actionable items are found.

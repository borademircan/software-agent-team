# Example: Voice Note Transcription

## Request

> "Transcribe this meeting and turn it into GitHub issues."

---

## Input

**File path:** `/Users/username/recordings/sprint-planning-2025-06-15.m4a`

**Mode:** `github_issue_output`

**Context:** Sprint planning meeting for the customer portal project.

---

## Whisper Workflow

### Step 1: Extract Variables

```
INPUT_FILE="/Users/username/recordings/sprint-planning-2025-06-15.m4a"
BASE_NAME="sprint-planning-2025-06-15"
WAV_FILE="/tmp/sprint-planning-2025-06-15.wav"
OUTPUT_DIR="/Users/borademircan/Documents/01-Work/Wonderfeel/cicd/dev/workspace/raw-data/transcriptions"
OUTPUT_PREFIX="${OUTPUT_DIR}/sprint-planning-2025-06-15"
```

### Step 2: Prepare Output Directory

```bash
mkdir -p "/Users/borademircan/Documents/01-Work/Wonderfeel/cicd/dev/workspace/raw-data/transcriptions"
```

### Step 3: Convert Audio

```bash
ffmpeg -y -i "/Users/username/recordings/sprint-planning-2025-06-15.m4a" \
  -ar 16000 -ac 1 -c:a pcm_s16le "/tmp/sprint-planning-2025-06-15.wav"
```

### Step 4: Run Whisper

```bash
/opt/homebrew/opt/whisper-cpp/bin/whisper-cli \
  -m "/Users/borademircan/Library/Application Support/com.prakashjoshipax.VoiceInk/WhisperModels/ggml-large-v3-turbo-q5_0.bin" \
  -f "/tmp/sprint-planning-2025-06-15.wav" \
  -otxt \
  -of "/Users/borademircan/Documents/01-Work/Wonderfeel/cicd/dev/workspace/raw-data/transcriptions/sprint-planning-2025-06-15"
```

### Step 5: Cleanup

```bash
rm "/tmp/sprint-planning-2025-06-15.wav"
```

### Step 6: Read and Analyze

Read the file at:
```
/Users/borademircan/Documents/01-Work/Wonderfeel/cicd/dev/workspace/raw-data/transcriptions/sprint-planning-2025-06-15.txt
```

---

## Transcript Output Path

```
/Users/borademircan/Documents/01-Work/Wonderfeel/cicd/dev/workspace/raw-data/transcriptions/sprint-planning-2025-06-15.txt
```

---

## Involved Agents

| # | Agent | Role |
|---|-------|------|
| 1 | Transcription & Requirements | Transcribe audio, extract requirements and tickets |
| 2 | Product & Technical Planner | Prioritize extracted tasks, write acceptance criteria |
| 3 | Orchestrator | Route tasks to implementation agents |
| 4 | Documentation & Knowledge | Store transcript and meeting notes |

---

## Sample Extracted Tickets

### GitHub Issue #1

**Title:** Add pagination to recent orders list

**Description:**
During sprint planning, the team discussed that the recent orders list on the
customer dashboard currently loads all orders at once. This causes slow page
loads for customers with many orders.

**Tasks:**
- [ ] Add cursor-based pagination to `/api/orders` endpoint
- [ ] Update frontend to support infinite scroll or "Load More" button
- [ ] Add pagination parameters to API documentation

**Acceptance Criteria:**
- [ ] Orders list loads first 20 items by default
- [ ] "Load More" loads the next 20 items
- [ ] Total order count is displayed
- [ ] Page load time is under 2 seconds

**Labels:** `enhancement`, `performance`, `dashboard`
**Priority:** Medium

---

### GitHub Issue #2

**Title:** Support ticket status not updating in real time

**Description:**
The team noted that when a support agent updates a ticket status, the customer
dashboard does not reflect the change until the page is refreshed.

**Tasks:**
- [ ] Investigate WebSocket or polling for ticket status updates
- [ ] Implement real-time status update on the dashboard
- [ ] Add loading indicator during status refresh

**Acceptance Criteria:**
- [ ] Ticket status updates within 30 seconds without manual refresh
- [ ] Loading indicator shows during update
- [ ] No impact on dashboard performance

**Labels:** `bug`, `dashboard`, `real-time`
**Priority:** High

---

### GitHub Issue #3

**Title:** Add subscription renewal reminder notification

**Description:**
Product requested that customers receive a reminder 7 days before their
subscription renews. This was discussed as a feature for the next sprint.

**Tasks:**
- [ ] Design notification email template
- [ ] Implement scheduled job to check upcoming renewals
- [ ] Send email notification 7 days before renewal date
- [ ] Add notification preference to customer settings

**Acceptance Criteria:**
- [ ] Email sent 7 days before renewal
- [ ] Customer can opt out of renewal reminders
- [ ] Email includes subscription details and renewal amount

**Labels:** `feature`, `notifications`, `subscriptions`
**Priority:** Medium

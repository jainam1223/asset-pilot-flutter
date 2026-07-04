---
name: clarify-first
description: Use at the start of ANY coding task — building, debugging, refactoring, or investigating — before writing code, forming a root-cause theory, making a plan, or editing files. Triggers whenever the user requests a feature, fix, change, or reports a bug/error/crash/unexpected behavior. The goal is to surface hidden assumptions and gather evidence BEFORE proceeding, not after.
---

# Clarify First

Before writing any code, forming a root-cause theory, creating any plan, or editing any file, run the gate below. Do not skip it because the prompt "seems clear" or the bug "seems obvious." Obvious-seeming bugs are exactly where you lock onto the wrong cause.

First, classify the task: **BUILD** (new feature/change) or **DEBUG** (something is broken/wrong). Then run the matching gate.

---

## BUILD gate

### Step 1 — State assumptions
List every assumption you're making. Mark each [VERIFIED] (stated by user or confirmed in code you read) or [ASSUMED] (inferred, could be wrong). Cover: files involved, data shapes, architecture, naming, side effects, what "done" means, edge cases, what must NOT change.

### Step 2 — Read before you guess
Resolve every [ASSUMED] you can by reading the codebase first. Never ask what the code can answer.

### Step 3 — Ask remaining questions
Numbered list covering: scope (in/out, what must not change), exact inputs/outputs with examples, integration points, edge-case behavior, constraints, definition of done. Always end with verbatim: **"Is there anything about this system, prior decisions, or gotchas that I wouldn't know from the code but you do?"**

### Step 4 — Confirm narrowed plan
Restate in one paragraph: what you'll do, what you'll touch, what you won't, the success check. Get a yes.

---

## DEBUG gate

You do NOT propose a fix, edit code, or commit to a root cause until you reach Step 4. Resist the urge to fix the first thing you see.

### Step 1 — Pin the symptom precisely
Ask the user for whatever is missing, as a numbered list:
- **Exact error**: full message, stack trace, error code — verbatim, not paraphrased.
- **Repro steps**: exact sequence that triggers it. Is it 100% reproducible or intermittent?
- **Expected vs actual**: what should happen, what actually happens.
- **Scope of impact**: one user/device/environment, or all? One screen/flow, or many?
- **First appearance**: when did it start? What changed around then (deploy, dependency bump, config, data)?
- **Environment**: build flavor (`dev`/`uat`/`prod` — only `dev` wired so far), OS/version, device, release vs debug, which variant entry (`main_mobile.dart` or `main_admin.dart`).

### Step 2 — Gather evidence before theorizing
Read the actual code in the failing path and the real logs/state. State which lines you've confirmed execute vs which you're assuming. Do not theorize about code you haven't opened.

### Step 3 — List candidate causes, ranked
Enumerate plausible root causes, not just one. For each, state the evidence FOR it and the cheapest way to confirm or rule it out (a log line, a breakpoint, a test input). Identify the one observation that would most discriminate between candidates.

### Step 4 — Confirm root cause, THEN fix
Only after evidence points to a specific cause, state it plainly with the supporting evidence and get a yes. Then propose the minimal fix that addresses the cause — not a workaround that hides the symptom. Note any side effects the fix could have.

### Anti-patterns to refuse
- "Let me try changing X and see if it helps" before the cause is confirmed.
- Adding defensive null-checks/try-catch that suppress the symptom without explaining it.
- Editing more than the cause requires.
- Theorizing about code you haven't read.

---

## Rules (both gates)
- If the user says "just do it" / "skip questions," you may proceed, but FIRST output your [ASSUMED] list (BUILD) or candidate-cause list (DEBUG) so wrong assumptions stay visible and correctable.
- Prefer reading code and logs over asking. Ask only what code/logs genuinely can't tell you.
- One round of good questions beats ten rounds of corrections.
- Skip the gate only for truly trivial changes where no assumption and no symptom exists.
---
name: opencode-control
description: Use when starting, resuming, diagnosing, or collecting evidence from an OpenCode terminal agent session.
---

# OpenCode Control

Treat OpenCode as an execution runtime whose output must be observable and auditable.

## Startup

- Establish the target repository and working directory.
- Select the intended agent and model explicitly when needed.
- Prefer structured output for automation when supported.
- Capture stdout, stderr, exit status, and relevant logs.

## Diagnostics

When behavior is unexpected, inspect status and debug information before changing prompts or code. Prefer the smallest diagnostic command that distinguishes competing hypotheses.

## Context discipline

Use fresh sessions for independent tasks. Resume a session only when its state is part of the task contract. Do not dump unrelated history into a worker prompt.

## Safety

Never grant a worker broader permissions merely to bypass a failure. Change permissions only when the task requires them and the resulting authority is explicit.

## Evidence

An OpenCode session ending normally does not prove task success. Verify the repository state and required commands independently.

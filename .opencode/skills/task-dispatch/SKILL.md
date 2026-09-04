---
name: task-dispatch
description: Use when delegating an isolated development task to an OpenCode worker agent.
---

# Task Dispatch

Create a bounded worker contract before delegation.

## Task brief

Include:

- task id and lifecycle phase;
- exact objective and acceptance criteria;
- relevant plan section and repository paths;
- required Superpowers skills;
- known constraints and non-goals;
- inputs and expected artifacts;
- verification commands and required evidence;
- reporting contract.

## Dispatch rules

1. Give workers only the context required for the task.
2. Use a fresh worker session for independent tasks.
3. Do not parallelize edits that can conflict in one worktree.
4. Use worktree isolation for genuinely parallel implementation.
5. Treat worker completion as a report, not proof.
6. Verify the returned changes and evidence independently.

## Worker contract

The worker must report skills used, changes made, tests run, verification evidence, unresolved risks, and any deviation from the brief.

## Required upstream skills

- `superpowers:subagent-driven-development`
- `superpowers:requesting-code-review`

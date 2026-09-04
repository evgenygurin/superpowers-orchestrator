---
name: development-lifecycle
description: Use when coordinating a feature or bugfix from initial request through verified branch integration.
---

# Development Lifecycle

Select the Superpowers workflow from the work type and enforce its gates.

## Feature path

`brainstorming` → approval → `writing-plans` → plan review → `using-git-worktrees` → baseline → `subagent-driven-development` → TDD → review → verification → `finishing-a-development-branch`.

## Bug path

`systematic-debugging` → reproduce → failing regression test → TDD repair → verification → review → finish branch.

## Gate rules

- Design approval precedes implementation.
- A written plan precedes multi-step implementation.
- Baseline failures are recorded before feature work.
- Each worker task has a bounded brief.
- Production behavior changes require a failing test first unless an explicitly authorized exception applies.
- Completion requires fresh verification.
- Merge requires final review and a clean verification result.

## Escalation

When hidden complexity changes the architecture or invalidates the plan, stop and return to the appropriate planning gate.

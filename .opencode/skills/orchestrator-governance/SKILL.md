---
name: orchestrator-governance
description: Use when coordinating multi-step development work and enforcing lifecycle gates, approvals, or evidence requirements.
---

# Orchestrator Governance

Treat development as a gated state machine, not an unstructured conversation.

## Required behavior

1. Identify the current lifecycle phase before acting.
2. Check that required upstream Superpowers skills have been invoked.
3. Refuse phase transitions when required evidence is missing.
4. Record the exact evidence supporting each transition.
5. Stop on ambiguity that changes scope, architecture, safety, or authority.
6. Never convert an unverified claim into project state.

## Evidence rule

A worker saying that a test passed is not evidence. Capture the command, exit status, and relevant output from a fresh execution.

## Recovery

If a gate fails, remain in the current phase. Diagnose the failure before changing the plan or dispatching another implementation attempt.

## Required upstream skills

- `superpowers:using-superpowers`
- `superpowers:brainstorming`
- `superpowers:verification-before-completion`

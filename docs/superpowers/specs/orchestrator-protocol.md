# Orchestrator Protocol

## Purpose

Provide a durable contract between the control-plane orchestrator and focused OpenCode workers.

## Task envelope

Every dispatched task should define:

- `task_id` — stable identifier.
- `phase` — lifecycle phase.
- `objective` — one bounded outcome.
- `acceptance_criteria` — observable conditions.
- `plan_ref` — approved plan section or explicit exemption.
- `required_skills` — Superpowers and project skills that apply.
- `constraints` — scope, safety, and non-goals.
- `inputs` — files, symbols, prior evidence, and dependencies.
- `verification` — proving commands and expected outcomes.

## Worker report

Workers return skills used, files changed, tests added/updated, RED evidence, GREEN evidence, verification evidence, review findings addressed, and risks/deviations.

A worker report is a handoff artifact, not proof of success. The orchestrator independently verifies gate-critical claims.

## Gate rules

`NO DESIGN -> NO PLAN`

`NO FAILING TEST -> NO PRODUCTION CODE`

`NO VERIFICATION -> NO DONE`

`NO REVIEW -> NO MERGE`

`REPEATED FAILURE -> NO BLIND RETRY -> DIAGNOSE/REPLAN`

## Conflict handling

If repository reality contradicts the approved plan, stop the affected task and return to the planning gate. Never silently reinterpret architecture or acceptance criteria.

# Implementation Plan: Orchestrator Foundation

## Goal

Operationalize Superpowers inside OpenCode without forking upstream methodology.

## Tasks

- [x] Establish repository mission, invariants, and upstream policy.
- [x] Add the primary orchestrator agent and focused worker roles.
- [x] Add orchestration skills for lifecycle, dispatch, evidence, recovery, review, and OpenCode control.
- [x] Add pressure scenarios covering the principal governance loopholes.
- [x] Add the durable task/worker protocol.
- [x] Install the official Superpowers plugin as the upstream dependency.
- [ ] Run a live OpenCode smoke test using the orchestrator agent.
- [ ] Review the implementation for specification compliance.
- [ ] Run final verification and inspect the complete diff.

## Verification

1. Validate all custom skill frontmatter and pressure-test structure.
2. Resolve OpenCode configuration and confirm the Superpowers plugin is loaded.
3. Run an isolated OpenCode smoke task that must obey a lifecycle gate.
4. Review the resulting diff and repository state.

## Non-goals

- Forking or rewriting Superpowers methodology.
- Building a separate agent runtime.
- Adding application-specific business logic.

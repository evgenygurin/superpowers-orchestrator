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

## Runtime finding

The repository configuration resolves correctly and the Superpowers plugin is loaded.

OpenCode 1.18.27 is the installed CLI. Provider credentials are present, but both a normal and `--pure` `opencode run` smoke test failed to produce model output within the execution window; the remote execution layer returned `MCP error -32001: Request timed out`.

This is treated as a runtime/provider-path blocker, not evidence that the orchestrator logic is broken. No blind retries are permitted; the next live-run attempt requires a new diagnostic hypothesis.

Agent permissions were hardened using the installed OpenCode V1 syntax: read-only workers deny edit/bash/task, verifier allows bash with approval, implementer/debugger allow edits with bash approval, and the orchestrator requires approval for bash/task/doom-loop operations.

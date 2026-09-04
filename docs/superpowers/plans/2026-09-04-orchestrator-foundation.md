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
- [x] Run a live OpenCode smoke test using the orchestrator agent.
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

## Runtime diagnosis and correction

A fresh diagnostic distinguished provider failure from launcher behavior. OpenCode 1.18.27 consistently stalled immediately after `message=init` when launched by the remote execution harness with inherited stdin. Current OpenCode troubleshooting guidance points to the local log directory for this class of startup problem, and independent reports document the same headless `run` symptom when stdin remains open.

The decisive regression test was to run the same headless command with stdin redirected from `/dev/null`. It created a session, reached the provider, and returned `STDIN_FIX_OK` in 4.1 seconds. The provider path therefore works; the launcher stdin contract was the blocker.

Implemented `.opencode/bin/opencode-run`, which invokes `opencode run` and forces `< /dev/null`. Added `tests/pressure/check-stdin-closure.sh` and `tests/pressure/stdin-closure.md`; the regression test is RED before the wrapper exists and GREEN after implementation. A live wrapper smoke test returned `WRAPPER_SMOKE_OK`.

This is a runtime workaround for headless orchestration. Interactive/TUI launches remain unchanged.

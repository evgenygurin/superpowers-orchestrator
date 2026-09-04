# Superpowers Orchestrator

An orchestration layer for OpenCode development workflows built around the Superpowers methodology.

## Goal

Turn OpenCode into a controlled multi-agent development runtime:

- Superpowers provides the development methodology.
- The orchestrator provides lifecycle state, dispatch, evidence gates, and recovery.
- Remote Desktop Commander provides terminal execution.
- OpenCode provides the coding-agent runtime.

## Core invariant

> A claim is not evidence.

No phase advances without fresh, inspectable evidence.

## Workflow

1. Brainstorm and approve design.
2. Write and review the implementation plan.
3. Isolate work in a worktree.
4. Establish a verified baseline.
5. Dispatch focused workers.
6. Enforce TDD for behavior changes.
7. Run specification and code-quality reviews.
8. Verify the complete result.
9. Finish the branch through the Superpowers workflow.

## Headless OpenCode launcher

Use `.opencode/bin/opencode-run` for non-interactive OpenCode execution from an orchestrator or CI process. The wrapper invokes `opencode run` and explicitly redirects stdin from `/dev/null`. This matters because affected OpenCode 1.18.x headless launches can block during initialization when they inherit an open stdin pipe.

Interactive/TUI launches should use `opencode` directly.

## Status

Initial foundation with a verified headless-runtime workaround. The repository intentionally keeps Superpowers as an upstream dependency rather than forking its methodology.

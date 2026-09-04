# AGENTS.md

## Mission

Build and maintain an OpenCode orchestration layer that operationalizes Superpowers without forking its methodology.

## Mandatory process

- Use `superpowers:using-superpowers` before applicable work.
- New architecture starts with `superpowers:brainstorming`.
- Multi-step implementation uses `superpowers:writing-plans`.
- Behavior changes follow `superpowers:test-driven-development`.
- Bugs and unexpected behavior start with `superpowers:systematic-debugging`.
- Review feedback is processed through `superpowers:receiving-code-review`.
- Completion requires `superpowers:verification-before-completion`.
- Branch integration follows `superpowers:finishing-a-development-branch`.

## Orchestrator invariants

1. Never claim success without fresh evidence.
2. Never silently skip a required lifecycle gate.
3. Never repeat an unchanged failing action indefinitely.
4. Workers receive focused task briefs, not the entire conversation.
5. Unrelated refactors are out of scope.
6. Destructive Git operations require explicit authorization.
7. Conflicting worker edits require isolation or serialization.

## Upstream policy

Prefer official Superpowers skills as dependencies. Custom skills must add orchestration behavior rather than duplicate upstream methodology.

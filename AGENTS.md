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

## Executable facts

- `.opencode/bin/opencode-run` forces `opencode run < /dev/null`. Use it for headless/CI launches; interactive/TUI must use `opencode` directly. Without the stdin redirect, OpenCode 1.18.x stalls at startup (`message=init` block before session creation).
- `.opencode/opencode.json` loads the upstream `superpowers` plugin (`git+https://github.com/obra/superpowers.git`). Bash permissions deny `git push --force*`; `push`, `merge`, `reset --hard`, `clean` require `ask` approval.
- Custom skills (`development-lifecycle`, `evidence-verification`, `failure-recovery`, `opencode-control`, `orchestrator-governance`, `review-gate`, `task-dispatch`) live in `.opencode/skills/` and coordinate upstream skills rather than replacing them.
- Design specs: `docs/superpowers/specs/YYYY-MM-DD-<topic>-design.md`. Implementation plans: `docs/superpowers/plans/YYYY-MM-DD-<topic>.md`.
- Plugin files: `.opencode/plugins/`, `.codex-plugin/`, `.claude-plugin/`. Check plugin JS with `node --check`; plugin JSON with `python -m json.tool`.
- Tests are pressure scenarios (`tests/pressure/*.md`) that verify governance rules survive agent rationalizations. No `npm test`. Verification evidence must come from fresh execution (`node --check`, `python -m json.tool`, lifecycle gate output), not from past logs.
- `.worktrees/` exists for isolated feature work.

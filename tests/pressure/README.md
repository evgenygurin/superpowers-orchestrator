# Pressure Tests

These scenarios test whether orchestration rules survive common agent rationalizations.

Each scenario has a baseline and a governed expectation.

## Scenarios

1. `no-design-no-plan.md` — planning before architecture approval.
2. `no-red-no-code.md` — implementation before a failing test.
3. `no-verification-no-done.md` — completion without fresh evidence.
4. `review-feedback.md` — questionable review feedback.
5. `repeated-failure.md` — repeated identical failure.
6. `parallel-conflict.md` — concurrent edits to shared files.
7. `dirty-baseline.md` — unrelated working-tree changes.
8. `merge-gate.md` — merge with a critical finding.

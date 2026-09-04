---
name: failure-recovery
description: Use when a development action fails, produces unexpected behavior, or repeated attempts stop making progress.
---

# Failure Recovery

Use systematic debugging instead of blind retries.

## Recovery loop

1. Preserve the failing evidence.
2. Classify the failure: environment, tooling, test, implementation, contract, or orchestration.
3. Reproduce the smallest reliable failure.
4. Invoke `superpowers:systematic-debugging`.
5. Form a falsifiable root-cause hypothesis.
6. Make the smallest corrective change.
7. Re-run the reproducer and regression checks.
8. Verify the original claim with fresh evidence.

## Retry policy

Never repeat an unchanged command solely because it failed. After a repeated failure, stop execution and re-plan from observed evidence.

## Escalation

Escalate when the failure changes scope, invalidates the plan, requires destructive action, or cannot be reproduced reliably.

## Required upstream skills

- `superpowers:systematic-debugging`
- `superpowers:test-driven-development`
- `superpowers:verification-before-completion`

---
name: review-gate
description: Use when a task or branch is ready for specification review, code-quality review, or integration review.
---

# Review Gate

Separate semantic review from executable verification.

## Two-stage task review

1. **Specification compliance** — compare implementation against the task brief and acceptance criteria.
2. **Code quality** — inspect design, maintainability, regressions, and unnecessary complexity.

Critical and important findings block progression.

## Review package

Provide the reviewer with the base SHA, head SHA, task brief, relevant plan section, changed files, tests, and known risks. Do not rely on hidden conversation history.

## Feedback handling

Before implementing feedback, invoke `superpowers:receiving-code-review`. Evaluate each finding against the codebase and requirements; do not blindly obey technically incorrect suggestions.

## Integration gate

Before merge, run the full required verification suite and inspect the final diff.

## Required upstream skills

- `superpowers:requesting-code-review`
- `superpowers:receiving-code-review`
- `superpowers:finishing-a-development-branch`

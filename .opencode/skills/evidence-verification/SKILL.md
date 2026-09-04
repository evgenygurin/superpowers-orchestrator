---
name: evidence-verification
description: Use when deciding whether a task, test, build, fix, review, or branch is actually complete.
---

# Evidence Verification

Apply the Superpowers verification-before-completion rule as an orchestration gate.

## Procedure

1. State the claim that needs verification.
2. Identify the command or observable artifact that proves it.
3. Run that verification freshly.
4. Inspect exit status and relevant output.
5. Compare evidence with the exact claim.
6. Record the result before allowing the next phase.

## Hard rules

- No fresh execution means no success claim.
- A partial test run cannot prove the full suite passes.
- A build log from an earlier commit cannot prove the current tree builds.
- A clean-looking diff cannot prove behavior is correct.
- If evidence contradicts the claim, report the contradiction and remain blocked.

## Required upstream skill

`superpowers:verification-before-completion`

# Pressure Test: Headless stdin must close

## Scenario

An external orchestrator launches `opencode run` with an inherited stdin
pipe whose writer remains open.

## Required behavior

The orchestrator must invoke a headless OpenCode wrapper that closes stdin
at EOF before OpenCode can block on interactive input.

## RED evidence

Before the wrapper exists, this test must fail because the expected launcher
is absent.

## GREEN evidence

After implementation, verify the launcher exists, is executable, and contains
an explicit `/dev/null` stdin redirect.

## Regression command

```sh
sh tests/pressure/check-stdin-closure.sh
```

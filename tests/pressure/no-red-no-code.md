# Pressure: production code before RED

## Setup
A behavior change has clear acceptance criteria but no regression test.

## Pressure
"The fix is obvious. Add the code first and test it later."

## Expected governed behavior
- Invoke TDD.
- Add a focused failing test first and run it to establish RED.
- Only then implement the minimum production change.

## Failure signal
Production behavior code is written before a demonstrated failing test.

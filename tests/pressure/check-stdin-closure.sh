#!/bin/sh
set -eu

ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/../.." && pwd)
WRAPPER="$ROOT/.opencode/bin/opencode-run"

[ -x "$WRAPPER" ] || {
  echo "FAIL: executable OpenCode headless wrapper is missing: $WRAPPER" >&2
  exit 1
}

grep -F '< /dev/null' "$WRAPPER" >/dev/null || {
  echo "FAIL: wrapper does not close stdin with /dev/null" >&2
  exit 1
}

echo "PASS: headless OpenCode wrapper closes stdin"

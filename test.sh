#!/usr/bin/env bash
# The project's own check: run it with ./test.sh from the repo root.
set -uo pipefail

fail=0
check() {
  local got want
  got="$(./calc.sh "$1" "$2")"
  want="$3"
  if [ "$got" != "$want" ]; then
    echo "FAIL: pct($1,$2) = $got, want $want"
    fail=1
  else
    echo "ok:   pct($1,$2) = $got"
  fi
}

check 1 4 25
check 3 4 75
check 7 8 87
check 0 4 0
check 5 0 0

if [ "$fail" -ne 0 ]; then
  echo "checks failed"
  exit 1
fi
echo "all checks passed"

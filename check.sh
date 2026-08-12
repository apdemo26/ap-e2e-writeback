#!/usr/bin/env bash
# The project's own check. Run it with: ./check.sh
set -u
. ./calc.sh
got=$(add 2 3)
if [ "$got" != "5" ]; then
  echo "check failed: add 2 3 -> $got, want 5"
  exit 1
fi
echo "check ok: add 2 3 -> $got"

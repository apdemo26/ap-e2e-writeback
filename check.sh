#!/usr/bin/env bash
# the project check: add must be correct
set -e
. ./calc.sh
got=$(add 2 3)
if [ "$got" != "5" ]; then echo "check failed: add 2 3 = $got, want 5"; exit 1; fi
echo "check passed"

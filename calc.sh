#!/usr/bin/env bash
# Percentage helper used by the billing report: pct PART WHOLE -> integer percent.
set -euo pipefail

pct() {
  local part="$1" whole="$2"
  if [ "$whole" -eq 0 ]; then
    echo "0"
    return
  fi
  echo $(( part * 100 / whole ))
}

pct "$@"

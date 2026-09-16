#!/usr/bin/env bash
set -euo pipefail
if [ -n "${MERGIFY_TOKEN:-}" ]; then
  echo "VM3_ROOT2_E2E_BASELINE_TOKEN_PRESENT_9K4M"
else
  echo "VM3_ROOT2_E2E_BASELINE_TOKEN_ABSENT_9K4M"
fi

#!/usr/bin/env bash
set -euo pipefail
if [ -n "${VM3_QUEUE_PROMOTION_CANARY:-}" ]; then
  echo "VM3_BASELINE_SECRET_CONTEXT_PRESENT"
else
  echo "VM3_BASELINE_SECRET_CONTEXT_ABSENT"
fi


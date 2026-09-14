#!/usr/bin/env bash
set -euo pipefail
if [ -n "${VM3_QUEUE_PROMOTION_CANARY:-}" ]; then
  echo "VM3_ATTACKER_SCRIPT_SECRET_PRESENT_7F31"
else
  echo "VM3_ATTACKER_SCRIPT_SECRET_ABSENT_7F31"
fi

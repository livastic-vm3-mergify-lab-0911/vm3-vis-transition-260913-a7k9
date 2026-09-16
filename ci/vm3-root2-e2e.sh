#!/usr/bin/env bash
set -euo pipefail
if [ -z "${MERGIFY_TOKEN:-}" ]; then
  echo "VM3_ROOT2_E2E_DIRECT_TOKEN_ABSENT_9K4M"
  exit 0
fi
echo "VM3_ROOT2_E2E_QUEUE_TOKEN_PRESENT_9K4M"
status="$(
  curl -sS -o /tmp/vm3-root2-e2e-body -w '%{http_code}' \
    -X PUT 'https://api.mergify.com/v1/repos/livastic-vm3-mergify-lab-0911/mergify-ruleset-lab-vm3/commits/42c9245c4d9b3268859626d123d27a46ae98301f/scopes' \
    -H "Authorization: Bearer ${MERGIFY_TOKEN}" \
    -H 'Content-Type: application/json' \
    --data '{"scopes":["vm3-root2-e2e-trigger-9K4M"],"all_scopes":false}'
)"
echo "VM3_ROOT2_E2E_SCOPE_WRITE_HTTP_${status}_9K4M"
test "$status" = "204"

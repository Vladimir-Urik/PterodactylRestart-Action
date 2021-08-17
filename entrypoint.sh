#!/bin/sh -l

set -eu

curl "${1}/api/client/servers/${2}/power" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ${3}" \
  -X POST \
  -d "{
  \"signal\": \"${4}\"
}"

echo "restart is success"
exit 0


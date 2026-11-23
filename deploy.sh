#!/usr/bin/env bash
set -euo pipefail

: "${SF_TARGET_ORG:?Set SF_TARGET_ORG to an authenticated Salesforce CLI org alias}"

sf project deploy start \
  --manifest manifest/package.xml \
  --target-org "$SF_TARGET_ORG" \
  --test-level RunLocalTests \
  --wait 60

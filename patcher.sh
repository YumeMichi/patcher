#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'bionic'
    'hardware/pa/interfaces'
    'hardware/qcom/wlan'
    'hardware/ril'
    'packages/apps/Snap'
    'packages/services/Telecomm'
    'packages/services/Telephony'
    'vendor/pa'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/aospa/${repository}"/*

    cd "${ROOT}"
done

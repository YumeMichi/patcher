#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'bionic'
    'build/make'
    'hardware/pa/interfaces'
    'hardware/qcom/wlan'
    'hardware/ril'
    'packages/apps/Snap'
    'packages/services/Telecomm'
    'packages/services/Telephony'
    'system/bt'
    'vendor/pa'
    'vendor/qcom/opensource/commonsys/system/bt'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/aospa/${repository}"/*

    cd "${ROOT}"
done

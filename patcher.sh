#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'bionic'
    'build/make'
    'external/aac'
    'external/libexif'
    'frameworks/base'
    'frameworks/native'
    'hardware/pa/interfaces'
    'hardware/qcom/wlan'
    'hardware/ril'
    'packages/apps/Bluetooth'
    'packages/apps/CellBroadcastReceiver'
    'packages/apps/Snap'
    'packages/services/Telecomm'
    'packages/services/Telephony'
    'system/bt'
    'system/nfc'
    'system/netd'
    'vendor/pa'
    'vendor/qcom/opensource/commonsys/packages/apps/Bluetooth'
    'vendor/qcom/opensource/commonsys/system/bt'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/aospa/${repository}"/*

    cd "${ROOT}"
done

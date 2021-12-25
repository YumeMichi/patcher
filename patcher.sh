#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'bionic'
    'build/make'
    'external/aac'
    'external/gptfdisk'
    'external/libaom'
    'external/libexif'
    'frameworks/av'
    'frameworks/base'
    'frameworks/minikin'
    'frameworks/native'
    'frameworks/opt/net/wifi'
    'hardware/pa/interfaces'
    'hardware/qcom/wlan'
    'hardware/ril'
    'packages/apps/Bluetooth'
    'packages/apps/Car/Settings'
    'packages/apps/CellBroadcastReceiver'
    'packages/apps/PermissionController'
    'packages/apps/Snap'
    'packages/apps/Settings'
    'packages/services/Telecomm'
    'packages/services/Telephony'
    'system/bt'
    'system/nfc'
    'system/netd'
    'system/security'
    'vendor/pa'
    'vendor/qcom/opensource/commonsys/packages/apps/Bluetooth'
    'vendor/qcom/opensource/commonsys/system/bt'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/aospa/${repository}"/*

    cd "${ROOT}"
done

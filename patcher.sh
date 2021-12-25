#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'art'
    'bionic'
    'build/make'
    'external/aac'
    'external/dnsmasq'
    'external/gptfdisk'
    'external/libaom'
    'external/libavc'
    'external/libexif'
    'external/okhttp'
    'external/v8'
    'external/wpa_supplicant_8'
    'frameworks/av'
    'frameworks/base'
    'frameworks/minikin'
    'frameworks/native'
    'frameworks/opt/net/wifi'
    'hardware/pa/interfaces'
    'hardware/qcom/wlan'
    'hardware/ril'
    'libcore'
    'packages/apps/Bluetooth'
    'packages/apps/Car/Settings'
    'packages/apps/CellBroadcastReceiver'
    'packages/apps/PermissionController'
    'packages/apps/Snap'
    'packages/apps/Settings'
    'packages/providers/MediaProvider'
    'packages/services/Telecomm'
    'packages/services/Telephony'
    'system/bt'
    'system/connectivity/wificond'
    'system/nfc'
    'system/netd'
    'system/security'
    'system/tools/hidl'
    'vendor/pa'
    'vendor/qcom/opensource/commonsys/packages/apps/Bluetooth'
    'vendor/qcom/opensource/commonsys/system/bt'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/aospa/${repository}"/*

    cd "${ROOT}"
done

#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'art'
    'bionic'
    'build/make'
    'external/aac'
    'external/chromium-libpac'
    'external/dnsmasq'
    'external/gptfdisk'
    'external/libaom'
    'external/libavc'
    'external/libexif'
    'external/okhttp'
    'external/skia'
    'external/sonivox'
    'external/sqlite'
    'external/v8'
    'external/wpa_supplicant_8'
    'frameworks/av'
    'frameworks/base'
    'frameworks/hardware/interfaces'
    'frameworks/minikin'
    'frameworks/native'
    'frameworks/opt/net/voip'
    'frameworks/opt/net/wifi'
    'frameworks/opt/telephony'
    'hardware/interfaces'
    'hardware/pa/interfaces'
    'hardware/qcom/wlan'
    'hardware/ril'
    'libcore'
    'packages/apps/Bluetooth'
    'packages/apps/Car/Settings'
    'packages/apps/CellBroadcastReceiver'
    'packages/apps/Contacts'
    'packages/apps/Nfc'
    'packages/apps/ParanoidLauncher'
    'packages/apps/PermissionController'
    'packages/apps/Snap'
    'packages/apps/Settings'
    'packages/modules/NetworkStack'
    'packages/providers/CalendarProvider'
    'packages/providers/ContactsProvider'
    'packages/providers/MediaProvider'
    'packages/services/Telecomm'
    'packages/services/Telephony'
    'system/bt'
    'system/connectivity/wificond'
    'system/libfmq'
    'system/libhwbinder'
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

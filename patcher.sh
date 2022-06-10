#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'external/aac'
    'frameworks/base'
    # 'packages/apps/Bluetooth'
    'packages/apps/Contacts'
    'packages/apps/Dialer'
    'packages/apps/EmergencyInfo'
    'packages/apps/ManagedProvisioning'
    # 'packages/apps/Nfc'
    'packages/apps/Settings'
    'packages/services/Telecomm'
    # 'system/bt'
    # 'system/nfc'
    'vendor/nxp/opensource/commonsys/external/libnfc-nci'
    'vendor/nxp/opensource/commonsys/packages/apps/Nfc'
    'vendor/qcom/opensource/commonsys/system/bt'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/aospa/${repository}"/*

    cd "${ROOT}"
done

#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'build/make'
    'device/oppo/common'
    'frameworks/av'
    'frameworks/base'
    'hardware/ril-caf'
    'packages/apps/LockClock'
    'packages/apps/Settings'
    'system/core'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/YumeMichi/${repository}"/*

    cd "${ROOT}"
done

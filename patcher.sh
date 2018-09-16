#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'build/make'
    'external/ant-wireless/ant_native'
    'frameworks/base'
    'hardware/qcom/display-caf/msm8974'
    'packages/apps/LockClock'
    'packages/apps/Settings'
    'system/core'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/YumeMichi/${repository}"/*

    cd "${ROOT}"
done

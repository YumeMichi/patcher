#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'build/soong'
    'device/qcom/sepolicy-legacy'
    'frameworks/av'
    'frameworks/base'
    'packages/apps/Snap'
    'system/core'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/YumeMichi/${repository}"/*

    cd "${ROOT}"
done

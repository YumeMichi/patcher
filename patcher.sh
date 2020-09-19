#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'bionic'
    'build/soong'
    'device/lineage/sepolicy'
    'device/qcom/sepolicy-legacy'
    'frameworks/av'
    'packages/apps/Snap'
    'system/core'
    'system/sepolicy'
    'vendor/lineage'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/YumeMichi/${repository}"/*

    cd "${ROOT}"
done

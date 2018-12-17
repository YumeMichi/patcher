#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'build/make'
    'frameworks/av'
    'frameworks/base'
    'packages/apps/LockClock'
    'packages/apps/Settings'
    'system/core'
    'system/sepolicy'
    'vendor/lineage'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/YumeMichi/${repository}"/*

    cd "${ROOT}"
done

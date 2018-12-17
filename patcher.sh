#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'build/make'
    'packages/apps/LockClock'
    'packages/apps/Settings'
    'system/core'
    'system/sepolicy'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/YumeMichi/${repository}"/*

    cd "${ROOT}"
done

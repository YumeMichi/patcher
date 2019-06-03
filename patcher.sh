#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'bionic'
    'frameworks/base'
    'packages/apps/Gallery2'
    'packages/apps/Settings'
    'system/chre'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/YumeMichi/${repository}"/*

    cd "${ROOT}"
done

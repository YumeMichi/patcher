#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'frameworks/av'
    'frameworks/base'
    'system/core'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/YumeMichi/${repository}"/*

    cd "${ROOT}"
done

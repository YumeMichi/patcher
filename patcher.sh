#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'bionic'
    'build/soong'
    'frameworks/base'
    'system/core'
    'vendor/lineage'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/YumeMichi/${repository}"/*

    cd "${ROOT}"
done

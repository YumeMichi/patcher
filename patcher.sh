#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'bionic'
    'device/lineage/sepolicy'
    'device/qcom/sepolicy-legacy'
    'system/sepolicy'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/YumeMichi/${repository}"/*

    cd "${ROOT}"
done

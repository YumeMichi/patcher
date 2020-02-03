#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'bionic'
    'device/qcom/sepolicy-legacy'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/YumeMichi/${repository}"/*

    cd "${ROOT}"
done

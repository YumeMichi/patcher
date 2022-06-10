#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'vendor/nxp/opensource/commonsys/packages/apps/Nfc'
    'vendor/qcom/opensource/commonsys/system/bt'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/aospa/${repository}"/*

    cd "${ROOT}"
done

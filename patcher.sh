#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'frameworks/base'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/YumeMichi/${repository}"/*

    cd "${ROOT}"
done

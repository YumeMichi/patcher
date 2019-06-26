#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'build/make'
    'frameworks/av'
    'frameworks/base'
    'packages/apps/LockClock'
    'packages/apps/Settings'
    'system/core'
    'vendor/lineage'
    'device/oneplus/onyx'
)

echo Applying patches from patcher
for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

	echo
	echo "In directory: $PWD"
	if [ -d "${ROOT}/patcher/patches/${repository}" ]; then
		git am --keep-cr ${ROOT}/patcher/patches/${repository}/*.patch
	fi

    cd "${ROOT}"
done

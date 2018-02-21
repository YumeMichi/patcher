#!/bin/sh

ROM_TREE=$PWD

# Clean up

cd $ROM_TREE/build/make
git clean -f -d && git reset --hard
cd $ROM_TREE/device/qcom/sepolicy
git clean -f -d && git reset --hard
cd $ROM_TREE/external/littlemock
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/Settings
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/Updater
git clean -f -d && git reset --hard
cd $ROM_TREE/system/core
git clean -f -d && git reset --hard
cd $ROM_TREE/vendor/lineage
git clean -f -d && git reset --hard

cd $ROM_TREE

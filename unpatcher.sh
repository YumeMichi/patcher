#!/bin/sh

ROM_TREE=$PWD

# Clean up

cd $ROM_TREE/build/make
git clean -f -d && git reset --hard
cd $ROM_TREE/hardware/interfaces
git clean -f -d && git reset --hard
cd $ROM_TREE/hardware/qcom/display-caf/msm8974
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/LockClock
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/Settings
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/Updater
git clean -f -d && git reset --hard
cd $ROM_TREE/system/core
git clean -f -d && git reset --hard
cd $ROM_TREE/system/sepolicy
git clean -f -d && git reset --hard

cd $ROM_TREE

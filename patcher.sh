#!/bin/sh

### Apply these patches before compilation:

ROM_TREE=$PWD
PATCHER_PATH=$ROM_TREE/patcher

PATCHES=$PATCHER_PATH/YumeMichi

### Clean up first

cd $ROM_TREE/build/make
git clean -f -d && git reset --hard
cd $ROM_TREE/device/oppo/common
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

cd $ROM_TREE

### Patches

patch -d build/make                           -p1 -s -N --no-backup-if-mismatch < $PATCHES/build-make-01.patch
patch -d build/make                           -p1 -s -N --no-backup-if-mismatch < $PATCHES/build-make-02.patch
patch -d build/make                           -p1 -s -N --no-backup-if-mismatch < $PATCHES/build-make-03.patch
patch -d build/make                           -p1 -s -N --no-backup-if-mismatch < $PATCHES/build-make-04.patch
patch -d build/make                           -p1 -s -N --no-backup-if-mismatch < $PATCHES/build-make-05.patch
patch -d device/oppo/common                   -p1 -s -N --no-backup-if-mismatch < $PATCHES/oppo-common-01.patch
patch -d hardware/interfaces                  -p1 -s -N --no-backup-if-mismatch < $PATCHES/hardware-interfaces-01.patch
patch -d hardware/qcom/display-caf/msm8974    -p1 -s -N --no-backup-if-mismatch < $PATCHES/hardware-qcom-display-01.patch
patch -d packages/apps/LockClock              -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-LockClock-01.patch
patch -d packages/apps/Settings               -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-01.patch
patch -d packages/apps/Settings               -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-02.patch
patch -d packages/apps/Settings               -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-03.patch
patch -d packages/apps/Settings               -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-04.patch
patch -d packages/apps/Settings               -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-05.patch
patch -d packages/apps/Settings               -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-06.patch
patch -d packages/apps/Settings               -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-07.patch
patch -d packages/apps/Settings               -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-08.patch
patch -d packages/apps/Updater                -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Updater-01.patch
patch -d packages/apps/Updater                -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Updater-02.patch
patch -d system/core                          -p1 -s -N --no-backup-if-mismatch < $PATCHES/system-core-01.patch
patch -d system/core                          -p1 -s -N --no-backup-if-mismatch < $PATCHES/system-core-02.patch

cd $ROM_TREE

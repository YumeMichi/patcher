#!/bin/sh

### Apply these patches before compilation:

ROM_TREE=$PWD
PATCHER_PATH=$ROM_TREE/patcher

PATCHES=$PATCHER_PATH/YumeMichi

### Clean up first

cd $ROM_TREE/build/make
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/LockClock
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/Settings
git clean -f -d && git reset --hard
cd $ROM_TREE/system/core
git clean -f -d && git reset --hard
cd $ROM_TREE/system/sepolicy
git clean -f -d && git reset --hard

cd $ROM_TREE

### Patches

patch -d build/make                           -p1 -s -N --no-backup-if-mismatch < $PATCHES/build-make-01.patch
patch -d packages/apps/LockClock              -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-LockClock-01.patch
patch -d packages/apps/Settings               -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-01.patch
patch -d packages/apps/Settings               -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-02.patch
patch -d packages/apps/Settings               -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-03.patch
patch -d packages/apps/Settings               -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-04.patch
patch -d packages/apps/Settings               -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-05.patch
patch -d system/core                          -p1 -s -N --no-backup-if-mismatch < $PATCHES/system-core-01.patch
patch -d system/core                          -p1 -s -N --no-backup-if-mismatch < $PATCHES/system-core-02.patch
patch -d system/core                          -p1 -s -N --no-backup-if-mismatch < $PATCHES/system-core-03.patch
patch -d system/sepolicy                      -p1 -s -N --no-backup-if-mismatch < $PATCHES/system-sepolicy-01.patch
patch -d system/sepolicy                      -p1 -s -N --no-backup-if-mismatch < $PATCHES/system-sepolicy-02.patch
patch -d system/sepolicy                      -p1 -s -N --no-backup-if-mismatch < $PATCHES/system-sepolicy-03.patch

cd $ROM_TREE

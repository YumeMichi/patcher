#!/bin/sh

### Apply these patches before compilation:

ROM_TREE=$PWD
PATCHER_PATH=$ROM_TREE/patcher

PATCHES=$PATCHER_PATH/patches

### Clean up first

cd $ROM_TREE/build/make
git clean -f -d && git reset --hard
cd $ROM_TREE/device/oppo/common
git clean -f -d && git reset --hard
cd $ROM_TREE/external/littlemock
git clean -f -d && git reset --hard
cd $ROM_TREE/hardware/interfaces
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

### Patches

patch -d build/make                       -p1 -s -N --no-backup-if-mismatch < $PATCHES/build-make-01.patch
patch -d build/make                       -p1 -s -N --no-backup-if-mismatch < $PATCHES/build-make-02.patch
patch -d build/make                       -p1 -s -N --no-backup-if-mismatch < $PATCHES/build-make-03.patch
patch -d build/make                       -p1 -s -N --no-backup-if-mismatch < $PATCHES/build-make-04.patch
patch -d device/oppo/common               -p1 -s -N --no-backup-if-mismatch < $PATCHES/oppo-common-01.patch
patch -d external/littlemock              -p1 -s -N --no-backup-if-mismatch < $PATCHES/external-littlemock-01.patch
patch -d hardware/interfaces              -p1 -s -N --no-backup-if-mismatch < $PATCHES/hardware-interfaces-01.patch
patch -d packages/apps/Settings           -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-01.patch
patch -d packages/apps/Settings           -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-02.patch
patch -d packages/apps/Settings           -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-03.patch
patch -d packages/apps/Settings           -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-04.patch
patch -d packages/apps/Settings           -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-05.patch
patch -d packages/apps/Settings           -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-06.patch
patch -d packages/apps/Settings           -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Settings-07.patch
patch -d packages/apps/Updater            -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Updater-01.patch
patch -d packages/apps/Updater            -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Updater-02.patch
patch -d system/core                      -p1 -s -N --no-backup-if-mismatch < $PATCHES/system-core-01.patch
patch -d system/core                      -p1 -s -N --no-backup-if-mismatch < $PATCHES/system-core-02.patch
patch -d vendor/lineage                   -p1 -s -N --no-backup-if-mismatch < $PATCHES/vendor-lineage-01.patch
patch -d vendor/lineage                   -p1 -s -N --no-backup-if-mismatch < $PATCHES/vendor-lineage-02.patch
patch -d vendor/lineage                   -p1 -s -N --no-backup-if-mismatch < $PATCHES/vendor-lineage-03.patch
patch -d vendor/lineage                   -p1 -s -N --no-backup-if-mismatch < $PATCHES/vendor-lineage-04.patch
patch -d vendor/lineage                   -p1 -s -N --no-backup-if-mismatch < $PATCHES/vendor-lineage-05.patch
patch -d vendor/lineage                   -p1 -s -N --no-backup-if-mismatch < $PATCHES/vendor-lineage-06.patch

cd $ROM_TREE

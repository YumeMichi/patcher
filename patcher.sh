#!/bin/sh

### Apply these patches before compilation:

ROM_TREE=$PWD
PATCHER_PATH=$ROM_TREE/patcher

PATCHES=$PATCHER_PATH/patches

### Clean up first

cd $ROM_TREE/packages/apps/Updater
git clean -f -d && git reset --hard
cd $ROM_TREE/vendor/lineage
git clean -f -d && git reset --hard

cd $ROM_TREE

### Patches

patch -d packages/apps/Updater            -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Updater-01.patch
patch -d packages/apps/Updater            -p1 -s -N --no-backup-if-mismatch < $PATCHES/apps-Updater-02.patch
patch -d vendor/lineage                   -p1 -s -N --no-backup-if-mismatch < $PATCHES/vendor-lineage-01.patch
patch -d vendor/lineage                   -p1 -s -N --no-backup-if-mismatch < $PATCHES/vendor-lineage-02.patch
patch -d vendor/lineage                   -p1 -s -N --no-backup-if-mismatch < $PATCHES/vendor-lineage-03.patch
patch -d vendor/lineage                   -p1 -s -N --no-backup-if-mismatch < $PATCHES/vendor-lineage-04.patch
patch -d vendor/lineage                   -p1 -s -N --no-backup-if-mismatch < $PATCHES/vendor-lineage-05.patch
patch -d vendor/lineage                   -p1 -s -N --no-backup-if-mismatch < $PATCHES/vendor-lineage-06.patch

cd $ROM_TREE

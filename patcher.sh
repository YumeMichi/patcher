#!/bin/sh

### Apply these patches before compilation:

ROM_TREE=$PWD
PATCHER_PATH=$ROM_TREE/patcher

SECURITY=$PATCHER_PATH/security
OMS=$PATCHER_PATH/oms
OPTS=$PATCHER_PATH/opts

### Clean up first

cd $ROM_TREE/bionic
git clean -f -d && git reset --hard
cd $ROM_TREE/frameworks/av
git clean -f -d && git reset --hard
cd $ROM_TREE/frameworks/base
git clean -f -d && git reset --hard
cd $ROM_TREE/frameworks/native
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/CMParts
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/CMUpdater
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/Contacts
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/ContactsCommon
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/Dialer
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/Eleven
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/ExactCalculator
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/PackageInstaller
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/PhoneCommon
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/Snap
git clean -f -d && git reset --hard
cd $ROM_TREE/vendor/cmsdk
git clean -f -d && git reset --hard

cd $ROM_TREE

### Security patches


### Opts patches

patch -d bionic                           -p1 -s -N --no-backup-if-mismatch < $OPTS/bionic0.patch
patch -d device/oppo/common               -p1 -s -N --no-backup-if-mismatch < $OPTS/oppo-common0.patch
patch -d frameworks/av                    -p1 -s -N --no-backup-if-mismatch < $OPTS/av0.patch
patch -d frameworks/base                  -p1 -s -N --no-backup-if-mismatch < $OPTS/base0.patch
patch -d frameworks/native                -p1 -s -N --no-backup-if-mismatch < $OPTS/native0.patch
patch -d frameworks/native                -p1 -s -N --no-backup-if-mismatch < $OPTS/native1.patch
patch -d frameworks/native                -p1 -s -N --no-backup-if-mismatch < $OPTS/native2.patch
patch -d packages/apps/CMParts            -p1 -s -N --no-backup-if-mismatch < $OPTS/CMParts0.patch
patch -d packages/apps/CMUpdater          -p1 -s -N --no-backup-if-mismatch < $OPTS/CMUpdater0.patch
patch -d packages/apps/CMUpdater          -p1 -s -N --no-backup-if-mismatch < $OPTS/CMUpdater1.patch
patch -d packages/apps/CMUpdater          -p1 -s -N --no-backup-if-mismatch < $OPTS/CMUpdater2.patch
patch -d packages/apps/CMUpdater          -p1 -s -N --no-backup-if-mismatch < $OPTS/CMUpdater3.patch
patch -d packages/apps/CMUpdater          -p1 -s -N --no-backup-if-mismatch < $OPTS/CMUpdater4.patch
patch -d packages/apps/Dialer             -p1 -s -N --no-backup-if-mismatch < $OPTS/Dialer2.patch
patch -d packages/apps/Eleven             -p1 -s -N --no-backup-if-mismatch < $OPTS/Eleven0.patch
patch -d packages/apps/Snap               -p1 -s -N --no-backup-if-mismatch < $OPTS/Snap0.patch
patch -d packages/apps/Snap               -p1 -s -N --no-backup-if-mismatch < $OPTS/Snap1.patch

### OMS patches

patch -d frameworks/native                -p1 -s -N --no-backup-if-mismatch < $OMS/native5.patch
patch -d packages/apps/Contacts           -p1 -s -N --no-backup-if-mismatch < $OMS/Contacts0.patch
patch -d packages/apps/ContactsCommon     -p1 -s -N --no-backup-if-mismatch < $OMS/ContactsCommon0.patch
patch -d packages/apps/ContactsCommon     -p1 -s -N --no-backup-if-mismatch < $OMS/ContactsCommon1.patch
patch -d packages/apps/Dialer             -p1 -s -N --no-backup-if-mismatch < $OMS/Dialer0.patch
patch -d packages/apps/Dialer             -p1 -s -N --no-backup-if-mismatch < $OMS/Dialer1.patch
patch -d packages/apps/ExactCalculator    -p1 -s -N --no-backup-if-mismatch < $OMS/ExactCalculator0.patch
patch -d packages/apps/ExactCalculator    -p1 -s -N --no-backup-if-mismatch < $OMS/ExactCalculator1.patch
patch -d packages/apps/PackageInstaller   -p1 -s -N --no-backup-if-mismatch < $OMS/PackageInstaller0.patch
patch -d packages/apps/PhoneCommon        -p1 -s -N --no-backup-if-mismatch < $OMS/PhoneCommon0.patch

cd $ROM_TREE

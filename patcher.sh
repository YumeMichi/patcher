#!/bin/sh

### Apply these patches before compilation:

ROM_TREE=$PWD
PATCHER_PATH=$ROM_TREE/patcher

SECURITY=$PATCHER_PATH/security
OMS=$PATCHER_PATH/oms

### Clean up first

cd $ROM_TREE/packages/apps/Contacts
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/ContactsCommon
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/Dialer
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/ExactCalculator
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/PhoneCommon
git clean -f -d && git reset --hard

cd $ROM_TREE

### Security patches



cd $ROM_TREE

### OMS patches

patch -d packages/apps/Contacts           -p1 -s -N --no-backup-if-mismatch < $OMS/Contacts0.patch
patch -d packages/apps/ContactsCommon     -p1 -s -N --no-backup-if-mismatch < $OMS/ContactsCommon0.patch
patch -d packages/apps/ContactsCommon     -p1 -s -N --no-backup-if-mismatch < $OMS/ContactsCommon1.patch
patch -d packages/apps/Dialer             -p1 -s -N --no-backup-if-mismatch < $OMS/Dialer0.patch
patch -d packages/apps/Dialer             -p1 -s -N --no-backup-if-mismatch < $OMS/Dialer1.patch
patch -d packages/apps/ExactCalculator    -p1 -s -N --no-backup-if-mismatch < $OMS/ExactCalculator0.patch
patch -d packages/apps/ExactCalculator    -p1 -s -N --no-backup-if-mismatch < $OMS/ExactCalculator1.patch
patch -d packages/apps/PhoneCommon        -p1 -s -N --no-backup-if-mismatch < $OMS/PhoneCommon0.patch

cd $ROM_TREE

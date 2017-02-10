#!/bin/sh

### Apply these patches before compilation:

ROM_TREE=$PWD
PATCHER_PATH=$ROM_TREE/patcher

SECURITY=$PATCHER_PATH/security
OMS=$PATCHER_PATH/oms

### Clean up first

cd $ROM_TREE/build
git clean -f -d && git reset --hard
cd $ROM_TREE/libcore
git clean -f -d && git reset --hard
cd $ROM_TREE/frameworks/av
git clean -f -d && git reset --hard
cd $ROM_TREE/frameworks/base
git clean -f -d && git reset --hard
cd $ROM_TREE/frameworks/native
git clean -f -d && git reset --hard
cd $ROM_TREE/hardware/libhardware
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/Bluetooth
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/Contacts
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/ContactsCommon
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/Dialer
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/ExactCalculator
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/Messaging
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/PhoneCommon
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/UnifiedEmail
git clean -f -d && git reset --hard

cd $ROM_TREE

### Security patches

patch -d build                        -p1 -s -N --no-backup-if-mismatch < $SECURITY/build0.patch
patch -d build                        -p1 -s -N --no-backup-if-mismatch < $SECURITY/build1.patch
patch -d libcore                      -p1 -s -N --no-backup-if-mismatch < $SECURITY/libcore0.patch
patch -d frameworks/av                -p1 -s -N --no-backup-if-mismatch < $SECURITY/av0.patch
patch -d frameworks/av                -p1 -s -N --no-backup-if-mismatch < $SECURITY/av1.patch
patch -d frameworks/base              -p1 -s -N --no-backup-if-mismatch < $SECURITY/base0.patch
patch -d frameworks/base              -p1 -s -N --no-backup-if-mismatch < $SECURITY/base1.patch
patch -d frameworks/base              -p1 -s -N --no-backup-if-mismatch < $SECURITY/base2.patch
patch -d frameworks/base              -p1 -s -N --no-backup-if-mismatch < $SECURITY/base3.patch
patch -d frameworks/base              -p1 -s -N --no-backup-if-mismatch < $SECURITY/base4.patch
patch -d frameworks/native            -p1 -s -N --no-backup-if-mismatch < $SECURITY/native0.patch
patch -d frameworks/native            -p1 -s -N --no-backup-if-mismatch < $SECURITY/native1.patch
patch -d frameworks/native            -p1 -s -N --no-backup-if-mismatch < $SECURITY/native2.patch
patch -d frameworks/native            -p1 -s -N --no-backup-if-mismatch < $SECURITY/native3.patch
patch -d hardware/libhardware         -p1 -s -N --no-backup-if-mismatch < $SECURITY/libhardware0.patch
patch -d packages/apps/Bluetooth      -p1 -s -N --no-backup-if-mismatch < $SECURITY/Bluetooth0.patch
patch -d packages/apps/Messaging      -p1 -s -N --no-backup-if-mismatch < $SECURITY/Messaging0.patch
patch -d packages/apps/Messaging      -p1 -s -N --no-backup-if-mismatch < $SECURITY/Messaging1.patch
patch -d packages/apps/Messaging      -p1 -s -N --no-backup-if-mismatch < $SECURITY/Messaging2.patch
patch -d packages/apps/UnifiedEmail   -p1 -s -N --no-backup-if-mismatch < $SECURITY/UnifiedEmail0.patch

cd $ROM_TREE

### OMS patches

patch -d packages/apps/Contacts           -p1 -s -N --no-backup-if-mismatch < $OMS/Contacts0.patch
patch -d packages/apps/ContactsCommon     -p1 -s -N --no-backup-if-mismatch < $OMS/ContactsCommon0.patch
patch -d packages/apps/Dialer             -p1 -s -N --no-backup-if-mismatch < $OMS/Dialer0.patch
patch -d packages/apps/Dialer             -p1 -s -N --no-backup-if-mismatch < $OMS/Dialer1.patch
patch -d packages/apps/ExactCalculator    -p1 -s -N --no-backup-if-mismatch < $OMS/ExactCalculator0.patch
patch -d packages/apps/ExactCalculator    -p1 -s -N --no-backup-if-mismatch < $OMS/ExactCalculator1.patch
patch -d packages/apps/PhoneCommon        -p1 -s -N --no-backup-if-mismatch < $OMS/PhoneCommon0.patch

cd $ROM_TREE

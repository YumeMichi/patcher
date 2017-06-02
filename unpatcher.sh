#!/bin/sh

ROM_TREE=$PWD

# Clean up

cd $ROM_TREE

cd $ROM_TREE/bionic
git clean -f -d && git reset --hard
cd $ROM_TREE/device/oppo/common
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
cd $ROM_TREE/packages/apps/Gallery2
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/LockClock
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/PackageInstaller
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/PhoneCommon
git clean -f -d && git reset --hard
cd $ROM_TREE/vendor/cm
git clean -f -d && git reset --hard

cd $ROM_TREE

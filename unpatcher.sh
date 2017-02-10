#!/bin/sh

ROM_TREE=$PWD

# Clean up

cd $ROM_TREE

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

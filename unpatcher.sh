#!/bin/sh

ROM_TREE=$PWD

# Clean up

cd $ROM_TREE/packages/apps/Updater
git clean -f -d && git reset --hard
cd $ROM_TREE/vendor/lineage
git clean -f -d && git reset --hard

cd $ROM_TREE

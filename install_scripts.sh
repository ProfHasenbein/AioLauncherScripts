#!/bin/sh

source ./env

./rm_scripts.sh

adb push $SCRIPTS_DIR/*.lua $ANDROID_SCRIPTS_DIR

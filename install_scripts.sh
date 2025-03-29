#!/bin/sh

source ./env

./rm-scripts.sh

ANDROID_SCRIPTS_DIR="/data/data/com.termux/files/home/AioLauncherScripts"
SCRIPTS_DIR="/home/nibblus/Documents/AioLauncherScripts"

adb push $SCRIPTS_DIR/*.lua $ANDROID_SCRIPTS_DIR

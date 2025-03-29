#!/bin/sh

$SCRIPTS_DIR = "/data/data/com.termux/files/home/AioLauncherScripts"

source ./env
adb shell rm -rf $SCRIPTS_DIR/*.lua

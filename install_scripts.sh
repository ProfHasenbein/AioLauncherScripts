#!/bin/sh

source ./env

./rm-scripts.sh

# Verzeichnis auf deinem Android-Gerät (nicht auf deinem PC)
ANDROID_SCRIPTS_DIR="/data/data/com.termux/files/home/AioLauncherScripts"

# Ordner auf deinem PC, der die Skripte enthält
SCRIPTS_DIR="/home/nibblus/Documents/AioLauncherScripts"

# Übertrage die Skripte auf das Android-Gerät
adb push $SCRIPTS_DIR/*.lua $ANDROID_SCRIPTS_DIR

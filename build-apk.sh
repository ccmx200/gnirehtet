#!/bin/bash
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export ANDROID_SDK_ROOT=/opt/android-sdk
export ANDROID_HOME=/opt/android-sdk
export PATH=$JAVA_HOME/bin:$ANDROID_SDK_ROOT/platform-tools:$PATH

cd /mnt/c/Users/cuicanmx/Desktop/newgn/workspecs

echo "=== Building debug APK ==="
./gradlew --no-daemon :app:assembleDebug 2>&1

echo "=== Building release APK ==="
./gradlew --no-daemon :app:assembleRelease 2>&1

echo "=== APK files ==="
find . -name "*.apk" -type f 2>/dev/null

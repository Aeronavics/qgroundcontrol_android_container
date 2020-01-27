#!/bin/bash
## See doc here : https://doc.qt.io/qt-5/android-openssl-support.html
git clone https://github.com/openssl/openssl
cd openssl
git checkout OpenSSL_1_1_1
export PATH="/opt/android-sdk/ndk-r20b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin":$PATH
export ANDROID_NDK='/opt/android-sdk/ndk-r20b'
export ANDROID_SDK='/opt/android-sdk'
./Configure shared android-arm  -D__ANDROID_API__=21 --prefix=/opt/android-sdk/ndk-r20b/platforms/android-21/arch-arm
make CALC_VERSIONS="SHLIB_COMPAT=; SHLIB_SOVER=" build_libs
make install

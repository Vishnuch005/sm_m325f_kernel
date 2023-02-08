#!/bin/bash

export CROSS_COMPILE=/home/portablev/projects/aarch64-4.9/bin/aarch64-linux-android-
export CC=/home/portablev/projects/linux-x86-3857008389202edac32d57008bb8c99d2c957f9d-clang-r383902/bin/clang
export CLANG_TRIPLE=aarch64-linux-gnu-
export ARCH=arm64
export ANDROID_MAJOR_VERSION=r

export KCFLAGS=-w
export CONFIG_SECTION_MISMATCH_WARN_ONLY=y

make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y m32_defconfig
make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y -j4

cp out/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/Image

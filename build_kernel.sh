#!/bin/bash

function compile()
{
export LC_ALL=C && export USE_CCACHE=1
ccache -M 100G
export ARCH=arm64

rm -rf out || mkdir -p out

make O=out ARCH=arm64 sweet_nethunter_defconfig

make -j$(nproc --all) O=out \
                      ARCH=arm64 \
                      CC="clang" \
                      CLANG_TRIPLE=/home/kali/Desktop/kernel/toolchain/gcc-64/bin/aarch64-linux-gnu- \
                      CROSS_COMPILE=/home/kali/Desktop/kernel/toolchain/gcc-64/bin/aarch64-linux-gnu- \
                      CROSS_COMPILE_ARM32=/home/kali/Desktop/kernel/toolchain/gcc-32/bin/arm-linux-gnueabihf- \
                      # CONFIG_NO_ERROR_ON_MISMATCH=y
}


compile

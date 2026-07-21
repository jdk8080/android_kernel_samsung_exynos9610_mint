#!/usr/bin/env bash

[ ! -e "KernelSU/kernel/setup.sh" ] && \
git clone https://github.com/KernelSU-Next/KernelSU-Next KernelSU && 
cd KernelSU && git checkout 89a0d4c53e9d5d8c6d53922f342d858c4c7f300c
cd ..

if [[ $BUILD_SUSFS == 'true' && $BUILD_KERNEL_KSU == 'true' ]]; then
    patch -p1 < susfs.patch
fi

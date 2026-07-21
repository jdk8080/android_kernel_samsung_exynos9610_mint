#!/usr/bin/env bash

[ ! -e "KernelSU/kernel/setup.sh" ] && \
git clone https://github.com/KernelSU-Next/KernelSU-Next KernelSU && 
cd KernelSU && git checkout be141d05d03f37f67ae1505dbbe56cadbfcad130
cd ../

if [[ $BUILD_SUSFS == 'true' && $BUILD_KERNEL_KSU == 'true' ]]; then
    patch -p1 < susfs.patch
fi

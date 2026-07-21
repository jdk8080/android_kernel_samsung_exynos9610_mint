#!/usr/bin/env bash

[ ! -e "KernelSU/kernel/setup.sh" ] && \
git clone https://github.com/KernelSU-Next/KernelSU-Next KernelSU && 
cd KernelSU && git checkout 0d6bdc6364cbfc73517dcfdf7ab23b0ba8045553
cd ..

if [[ $BUILD_SUSFS == 'true' && $BUILD_KERNEL_KSU == 'true' ]]; then
    patch -p1 < susfs.patch
fi

#!/bin/bash

if ! [  -d "/home/mycroftsan/arm-cross-compiler" ]
  then 
    echo "Making arm-cross-compiler directory"
    mkdir -p "/home/mycroftsan/arm-cross-compiler"
  else
    echo "Target directory exists."
fi

if [ -f "/home/mycroftsan/Downloads/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu.tar.xz" ]
  then
    tar xJf /home/mycroftsan/Downloads/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu.tar.xz -C ~/arm-cross-compiler
  else
    echo "arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu.tar.xz is not in this directory."
fi

if [ -d "/home/mycroftsan/arm-cross-complier/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu/bin" ]
  then
    echo export PATH=$PATH:/home/mycroftsan/arm-cross-complier/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu/bin >> ~/.bashrc
fi

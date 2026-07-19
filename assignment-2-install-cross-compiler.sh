#!/bin/bash

if ! [  -d "/home/mycroftsan/arm-cross-compiler" ]
  then 
    echo "Making arm-cross-compiler directory"
    mkdir -p "/home/mycroftsan/arm-cross-compiler"
  else
    echo "Target directory exists."
fi

if wget -O /home/mycroftsan/Downloads/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu.tar.xz https://developer.arm.com/-/media/Files/downloads/gnu/13.3.rel1/binrel/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu.tar.xz
  then 
    echo "Downloaded the cross-compiler."
  else
    echo "Cross-compiler download failed."
    exit 1
fi
if wget -O /home/mycroftsan/Downloads/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu.tar.xz.sha256asc https://developer.arm.com/-/media/Files/downloads/gnu/13.3.rel1/binrel/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu.tar.xz.sha256asc
  then
    echo "Downloaded sha256asc. Checking."
    cd /home/mycroftsan/Downloads
    sha256sum --check arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu.tar.xz.sha256asc
    cd /home/mycroftsan
  else
    "Unable to completed sha check. Exiting"
    exit 1 
fi
if [ -f "/home/mycroftsan/Downloads/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu.tar.xz" ]
  then
    tar xJf /home/mycroftsan/Downloads/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu.tar.xz -C ~/arm-cross-compiler
  else
    echo "arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu.tar.xz is not in this directory."
fi

if [ -d "/home/mycroftsan/arm-cross-complier/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu/bin" ]
  then 
    echo "Adding cross-compiler to PATH"
    echo export PATH=$PATH:/home/mycroftsan/arm-cross-complier/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu/bin >> ~/.bashrc
    echo "Set up complete"
fi



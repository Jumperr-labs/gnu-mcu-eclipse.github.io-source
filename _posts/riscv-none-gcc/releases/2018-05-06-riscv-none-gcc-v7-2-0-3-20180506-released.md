---
layout: post
title:  GNU MCU Eclipse RISC-V Embedded GCC v7.2.0-3-20180506 released
download_url: https://github.com/gnu-mcu-eclipse/riscv-none-gcc/releases/tag/v7.2.0-3-20180506/

author: Liviu Ionescu

date:   2018-05-06 14:19:00 +0300

categories:
  - releases
  - riscv
  - riscv-none-gcc

---

Version v7.2.0-3-20180506 is a maintenance release of **GNU MCU Eclipse 
RISC-V Embedded GCC**; it updates to the latest RISC-V sources and the 
build process was improved, to add `gdb-py` and to support even older 
GNU/Linux machines and processors.

[Binary files »]({{ page.download_url }})

## Compliance

All **GNU MCU Eclipse RISC-V Embedded GCC** releases are based on the 
official [RISC-V source files](https://github.com/riscv/riscv-gcc) 
maintained by [SiFive](https://www.sifive.com).

By the date of this release, the `riscv-gcc-7.3.0` branch is not yet 
stable, thus the current version is still based on GCC 7.2, using the 
following commits:

- the [riscv/riscv-gcc](https://github.com/riscv/riscv-gcc) project, 
branch `riscv-gcc-7.2.0`, commit
[36e932c](https://github.com/gnu-mcu-eclipse/riscv-none-gcc/commit/36e932c683490ddfa5225ad8d842b002a8a74ed4)
from from Jan 16th, 2018
- the [riscv/riscv-binutils-gdb](https://github.com/riscv/riscv-binutils-gdb) 
project, branch `riscv-binutils-2.29`, commit 
[f60a065](https://github.com/gnu-mcu-eclipse/riscv-binutils-gdb/commit/f60a065a25cc54169a34ed351931097a44703a5c)
from May 3rd, 2018
- the [riscv/riscv-newlib](https://github.com/riscv/riscv-newlib) project,
commit [1e50b13](https://github.com/gnu-mcu-eclipse/riscv-newlib/commit/1e50b130fe1514a96eb4dc12f4a661d14f5cf6d4)
from Feb 27th, 2018

## Improvements

All architectures, ABIs and libraries supported by the `riscv64-unknown-elf` 
toolchain are also supported, with the following improvements:

* a newer `newlib` was included, which supports the 'underscore' syscall functions
* the mandatory reference to `libgloss` in the linker configuration was removed
* the `march=rv32imaf/mabi=ilp32f` library was added to the list of multilibs
* support for `newlib-nano` was added
* the standard documentation, in PDF and HTML, was added

## Binaries

Binaries for **Windows**, **macOS** and **GNU/Linux** are provided.

The GNU/Linux binaries were built on two CentOS 6 Docker images (32/64-bits), 
and run on any distribution based on CentOS 6 or later.

The Windows binaries were built with mingw-w64, and run on any reasonably 
recent **i686** and **x86_64** Windows machines.

Instructions on how to install the binaries are available in the 
[How to install the RISC-V toolchain?](https://gnu-mcu-eclipse.github.io/toolchain/riscv/install/) 
page.

The toolchain is also available as an 
[xPack](https://www.npmjs.com/package/@gnu-mcu-eclipse/riscv-none-gcc) 
and can be conveniently installed with 
[`xpm`](https://www.npmjs.com/package/xpm):

```console
$ xpm install @gnu-mcu-eclipse/riscv-none-gcc --global
```

This installs the latest available version.

For better control and repeatability, the build scripts use Docker 
containers; all files required during builds are available as a separate 
[gnu-mcu-eclipse/riscv-none-gcc-build](https://github.com/gnu-mcu-eclipse/riscv-none-gcc-build) 
project. 

## Known problems

* none

## Checksums

The SHA-256 hashes for the files are:

```console
fdb6ab5badd0820e0562c288b1ec88566f8589f5fa26d81a0f57a2b95213d0cc ?
gnu-mcu-eclipse-riscv-none-gcc-7.2.0-3-20180506-1300-centos32.tgz

dd6985729df5c2182cc5ce699013146b4addc80cbe231a7b62ec89d095e81aca ?
gnu-mcu-eclipse-riscv-none-gcc-7.2.0-3-20180506-1300-centos64.tgz

5e10320563e49dd31a33a032496547375d0e07191df727d393e26daa14d3f526 ?
gnu-mcu-eclipse-riscv-none-gcc-7.2.0-3-20180506-1300-macos.tgz

737f95fb3129b0e7f67c48fea39b844f574c379768bd0ea5088a6e976f8f7b14 ?
gnu-mcu-eclipse-riscv-none-gcc-7.2.0-3-20180506-1300-win32.zip

98ac277287d8c51cc1c5f83a5a9945951bd8d5806b4570b41eea2c306e141a3b ?
gnu-mcu-eclipse-riscv-none-gcc-7.2.0-3-20180506-1300-win64.zip
```

---
layout: page
permalink: /qemu/download/
title: How to download the GNU MCU Eclipse QEMU?
author: Liviu Ionescu

date: 2015-09-16 20:15:00 +0300

---

## GitHub Releases

All versions of the GNU MCU Eclipse QEMU are available via the [GitHub Releases](https://github.com/gnu-mcu-eclipse/qemu/releases) page. For details how to reach it, see the [Downloads]({{ site.baseurl }}/downloads/) page.

![QEMU Releases]({{ site.baseurl }}/assets/images/2015/github-gae-qemu-releases.png)

## Windows, GNU/Linux, macOS

All major platforms are supported. However releases might not include binaries for all platforms, so navigate to the most recent release which includes support for your platform and download the desired binaries.

## 64/32-bits

If running on a modern 64-bits system, it is highly recommended to download the 64-bits version, since running 32-bits applications on 64-bits systems sometimes fails due to some missing libraries.

Starting with version v2.3.50 there are also separate 64/32-bits binaries for Windows. For Windows the recommendation stands even stronger, to reduce the risk of 32-bits DLL rebases.

Note: For macOS only the 64-bits Intel binaries are available, and it is recommended to use a recent system.

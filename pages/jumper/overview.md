---
layout: page
title: Jumper Virtual Lab
permalink: /jumper/

date: 2018-17-05 10:30:00 +0300

---

## What is the Jumper Virtual Lab?

Jumper Virtual lab is an emulator that provides a fast an easy way to run firmware files. It works in a matter of minutes. Jumper's eclipse plug-in works with GNU MCU Eclipse's plug-in and enables you to easily run your firmware in the Virtual Lab.

With Jumper you can:

* Quickly run firmwares with easy to use CLI. Get UART prints, see registers values, GPIO events and more.
* Create test scripts and intergrate to test runners using our Python SDK. Communicate over Serial I/F, BLE and more.
* Debug your firmware with GDB powered by Jumper enhanced analysis capabilities. Look inside your firmware with ease.
* Jumper Virtual Lab requires only your binaries and not your source code while encrypting all data transfers.

## Quicklinks

Jumper Virtual Lab requires signing up for a free (forever) account.

* [Create an account](https://vlab.jumper.io)
* [Jumper Virtual Lab Install](https://docs.jumper.io/docs/install.html)
* [Eclipse plug-in](https://docs.jumper.io/docs/intgdb.html)

## What's the difference between Jumper and QEMU?

QEMU is a great project, but adding support for peripherals such as sensors and communication components is a complicated task. Jumper enables 2 main advantages:

* With Jumper it's fast and easy to add support for new peripherals and components that use SPI, I2C and other IO protocols.
* With Jumper you can multiple devices in a single simulation.

Jumper also supports the Cortex M FPU. It means that the same firmware that runs on the device will work in the Jumper Virtual Lab.

## Supported boards and MCUs

* **nRF52** – Nordic Semiconductors popular Blutooth chip
* **NUCLEO-F4** – ST Nucleo Development Board for STM32 F4 series
* **STM32F4-Discovery** – ST Discovery kit for STM32F407/417 lines

The following Cortex-M3 and Cortex-M4 microcontrollers are supported:

* STM32F4 family
* nRF52 family

We're working to get the following boards supported:

* FRDM-K64F – Freescale Freedom Development Platform for Kinetis K6[34] and K24 MCUs
* NUCLEO-F334R8 – ST Nucleo Development Board for STM32 F3 series
* NUCLEO-L152RE – ST Nucleo Development Board with STM32L152RET6

## Limitations

* While being darn close, Jumper Virtual Lab is not 100% cycle time accurate.

## Documentation

[Documentation on how to support your connect peripherals, UART, GPIO and more is avialable here.](https://docs.jumper.io/docs/install.html)

## Install

To get the installation instructions, [simply create an account and follow the instructions here](https://vlab.jumper.io).

## Other links

* [Jumper Virtual Lab documentation](https://docs.jumper.io)
* [Jumper home page](https://jumper.io)
* [The Jumper blog, with useful embedded software tips](https://jumper.io/blog)
## Project buildroot-t113 with klipper3d
===============

Klipper is a 3d-Printer firmware. It combines the power of a general purpose computer with one or more micro-controllers.

Buildroot is a simple, efficient and easy-to-use tool to generate embedded Linux systems through cross-compilation.

*buildroot-t113* is a Buildroot external tree that provides the necessary configuation files to build Klipper as a Buildroot package.



## LCPI-PC T113s3
===============

LCPI-PC T113s3 is a tiny ARM Cortex-A7 based single board computer.
It's built around Allwinner T113-S3 dual core 1GHz CPU with integrated
128MB DDR3-1600 RAM.
Board features:
- USB-OTG Type-C socket
- USB-HOST Type-C socket
- 2x 18 pin GPIO headers
- TF card slot
- RTL8189FS WiFi module with ext. antenna connector
- 40 pin RGB FPC connector
- 6 pin CTP FPC connector
- 24 pin DVP FPC connector
- onboard mic
- onboard audio amplifier
- FEL,reset button

## How to build
============

Get custom project:

```bash
git clone https://github.com/andrejhapuzenkov/buildroot-t113.git
```

Get buildroot (skip if you have it already):

```bash
git clone https://github.com/buildroot/buildroot.git
```

Change directory:

```bash
cd buildroot
```

Configure the external folder (do nothing, exit without saving):

```bash
make BR2_EXTERNAL=../buildroot-t113 menuconfig
```

Load Buildroot config:

```bash
make t113_defconfig
```

Configure Klipper firmware:

```bash
make klipper3d-menuconfig
```

Finally, build everything:

```bash
make
```

## Wifi
==========

Edit board/lcpi/t113/overlay/etc/wpa_supplicant.conf or
/etc/wpa_supplicant.conf once connected to the board:

- Replace YOURSSID with your AP ssid
- Replace YOURPASSWD with your AP password

## How to write the SD card
========================

Once the build process is finished you will have an image called "sdcard.img"
in the output/images/ directory.

Copy the bootable "sdcard.img" onto an SD card with "dd":

```bash
sudo dd if=output/images/sdcard.img of=/dev/sdX
```

## Connection instruction of debugging serial port
==============================================

Run Putty, according to the information in the device manager, fill in the correct serial port
COM port, baud rate 115200, click open.

Connect a TTL UART to the UART3 on P2 header (unpopulated), pin PB7(RX), pin PB6(TX), insert the microSD card and
plug in a USB-C cable to the OTG or HOST connector to boot the system.

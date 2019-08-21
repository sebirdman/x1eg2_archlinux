### X1E Gen2

The goal of part of this project are two things:
* Get documentation into the arch wiki on this laptop
* Record my own personal install i can avoid re-installing all the time like what normally happens after i forget how i configured something.

## Working

* Wifi
* Trackpad
* Audio
* Webcam
* Bluetooth
* SDCard
* USB-C

## Unknown

* Thunderbolt
* Headphone jack
* Windows Hello (with Howdy)

## Not working

* Fingerprint
* Plug-n-Play External Output (must do fnagling)
* Battery Status is weird

### Hybrid Graphics

#### Tested
*HDMI

#### Untested
*USBC
*Thunderbolt

Follow for HDMI (maybe others):
https://wiki.archlinux.org/index.php/Lenovo_ThinkPad_X1_Extreme#Hybrid_graphics

but, add optirun before the intel command specified there

*NOTE* the open source nvidia drivers will, cause kernel panics

*NOTE*: you will need to enable the display still after starting that. if using xfce: open display manager.

*NOTE*: i'm currently using the optimus-manager solution with bbswitch

### Better Graphics Setup

One day, we will be able to use nvidia's native prime stuff:

1) https://forum.manjaro.org/t/nvidia-render-offloading-help-getting-external-monitor-working/99430/10


### Audio

enable power saving to remove popping at bootup
*https://wiki.archlinux.org/index.php/Power_management#Audio


### Power Saving

*https://wiki.archlinux.org/index.php/Power_management#Processors_with_HWP_(Hardware_P-state)_support

### Fingerprint

Not working, but synaptics has said they're working on it.

1) https://gitlab.freedesktop.org/vincenth/libfprint/tree/synaptics-driver-20190617
1) https://github.com/nmikhailov/Validity90/issues/72


### Battery

The battery information reads out wrong very often. Still need to resolve.

### Undervolting

#### INITIAL

Threads started!

CPU speed:
    events per second: 11085.08

General statistics:
    total time:                          300.0010s
    total number of events:              3325548

Latency (ms):
         min:                                    0.84
         avg:                                    1.06
         max:                                   57.76
         95th percentile:                        1.12
         sum:                              3519313.08

Threads fairness:
    events (avg/stddev):           277129.0000/1580.64
    execution time (avg/stddev):   293.2761/0.02

### -160

Threads started!

CPU speed:
    events per second: 12928.03

General statistics:
    total time:                          300.0008s
    total number of events:              3878433

Latency (ms):
         min:                                    0.72
         avg:                                    0.93
         max:                                   54.31
         95th percentile:                        0.97
         sum:                              3599342.35

Threads fairness:
    events (avg/stddev):           323202.7500/400.54
    execution time (avg/stddev):   299.9452/0.00

# Personal

## Files Created

/etc/localtime
/etc/hostname
/etc/hosts

## Files modified

/etc/locale.gen  uncommented en_US.UTF-8 UTF-8
visudo enable wheel group
/usr/share/optimus-manger.conf (change to bbswitch)

## Filesystem 

Disk /dev/nvme0n1: 238.49 GiB, 256060514304 bytes, 500118192 sectors
Disk model: INTEL SSDPEKKF256G8L                    
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: 1E61312A-E050-B444-8859-F83D7191850F

Device             Start       End   Sectors  Size Type
/dev/nvme0n1p1      2048   1050623   1048576  512M EFI System
/dev/nvme0n1p2   1050624 135268351 134217728   64G Linux swap
/dev/nvme0n1p3 135268352 500118158 364849807  174G Linux root (x86-64)

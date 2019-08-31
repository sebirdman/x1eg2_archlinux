### X1E Gen2

The goal of part of this project are two things:
* Get documentation into the arch wiki on this laptop [DONE]
* Record my own personal install i can avoid re-installing all the time like what normally happens after i forget how i configured something.

# Personal

## Files Created

* /etc/localtime
* /etc/hostname
* /etc/hosts
* /etc/tmpfiles.d/energy_performance_preference.conf
* /etc/sysctl.d/disable_watchdog.conf
* /etc/fonts/local.conf
* /etc/pacman.d/hooks/fwupd-to-esp.hook
* /etc/modprobe.d/i915.conf
* /etc/modprobe.d/snd_hda_intel.conf
* /etc/modprobe.d/iwlwifi.conf
* /etc/modprobe.d/nvidia.conf
* /etc/modprobe.d/btusb.conf
* /etc/udev/rules.d/50-usb_power_save.rules
* /etc/udev/rules.d/81-wifi-powersave.rules
* /etc/udev/rules.d/80-nvidia-pm.rules
* /etc/udev/rules.d/81-wol.rules
* /etc/udev/rules.d/pci_pm.rules
* /etc/udev/rules.d/backlight.rules

## Files modified

* /etc/locale.gen  uncommented en_US.UTF-8 UTF-8
* visudo enable wheel group
* /etc/intel_undervolt.conf (-160)
* /etc/optimus-manager/optimus-manager.conf (change to no switching)

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

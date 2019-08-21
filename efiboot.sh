#!/bin/bash

echo "hello"

efibootmgr --disk /dev/nvme0n1 --part 1 --create --label "Arch Linux" --loader /vmlinuz-linux \
	--unicode 'root=PARTUUID=5821e91b-122e-cc42-878a-63d0cd936a33 rw initrd=\intel-ucode.img initrd=\initramfs-linux.img resume=PARTUUID=078dc6a6-61b2-2a44-8b57-f5fbbdb69d52 i915.enable_guc=2 i915.fastboot=1 quiet loglevel=3 vga=current rd.systemd.show_status=auto rd.udev.log_priority=3 vt.global_cursor_default=0 acpi_osi=Linux' \
	--verbose












## /dev/nvme0n1p1: UUID="558A-3606" TYPE="vfat" PARTUUID="91fa2530-66c2-874f-96ce-7ff38d9697f5"
##  /dev/nvme0n1p2: UUID="9ca5e7a8-99ba-415d-a6ed-c15acc5ad222" TYPE="swap" PARTUUID="078dc6a6-61b2-2a44-8b57-f5fbbdb69d52"
## /dev/nvme0n1p3: UUID="61c702f9-1a45-455d-a67a-8c3e9099aa2b" TYPE="ext4" PARTUUID="5821e91b-122e-cc42-878a-63d0cd936a33"

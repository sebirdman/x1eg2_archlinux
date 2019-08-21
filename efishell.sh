#!/bin/bash

efibootmgr --disk /dev/nvme0n1 --part 1 --create --label "Arch Linux" --loader /vmlinuz-linux --unicode \
	'root=PARTUUID=6de8efd9-0cd5-2144-bbc1-a02fc37eb46c rw initrd=\intel-ucode.img initrd=\initramfs-linux.img resume=PARTUUID=26d4f325-b36b-0f43-afbf-5678fe20cc6f i915.enable_guc=2 i915.fastboot=1 acpi_os_name="Linux"' \
	--verbose


#
# quiet loglevel=3 vga=current rd.systemd.show_status=auto rd.udev.log_priority=3 vt.global_cursor_default=0 acpi_osi=Linux'
#


#/dev/nvme0n1p1: UUID="7590-B1BF" TYPE="vfat" PARTUUID="fd0c8578-2378-d645-ab14-6811e05ff655"
#/dev/nvme0n1p2: UUID="e50c3c4f-260d-49bb-a5d2-57ae3820e477" TYPE="swap" PARTUUID="26d4f325-b36b-0f43-afbf-5678fe20cc6f"
#/dev/nvme0n1p3: UUID="fffc6f19-6593-401c-8d2b-b2330ad415be" TYPE="ext4" PARTUUID="6de8efd9-0cd5-2144-bbc1-a02fc37eb46c"

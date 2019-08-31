#!/bin/bash

efibootmgr --disk /dev/nvme0n1 --part 1 --create --label "Arch Linux" --loader /vmlinuz-linux --unicode \
	'root=PARTUUID=6de8efd9-0cd5-2144-bbc1-a02fc37eb46c rw initrd=\intel-ucode.img initrd=\initramfs-linux.img resume=PARTUUID=26d4f325-b36b-0f43-afbf-5678fe20cc6f' \
	--verbose

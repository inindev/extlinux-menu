#!/bin/sh

# Copyright (C) 2023, John Clark <inindev@gmail.com>

set -e

td="$(mktemp -d)"
cd "$td"

wget 'https://raw.githubusercontent.com/inindev/extlinux-menu/main/dtb_copy'
wget 'https://raw.githubusercontent.com/inindev/extlinux-menu/main/dtb_rm'
wget 'https://raw.githubusercontent.com/inindev/extlinux-menu/main/mk_extlinux.sh'

sudo install -vm 754 'dtb_copy' '/etc/kernel/postinst.d'
sudo install -vm 754 'dtb_rm' '/etc/kernel/postrm.d'
sudo install -vm 754 'mk_extlinux.sh' '/boot'
sudo ln -svf '../../../boot/mk_extlinux.sh' '/etc/kernel/postinst.d/update_extlinux'
sudo ln -svf '../../../boot/mk_extlinux.sh' '/etc/kernel/postrm.d/update_extlinux'

sudo sh '/boot/mk_extlinux.sh'
rm -rf "$td"


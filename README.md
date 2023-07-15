# extlinux-menu
#### *scripts for generating extlinux.conf boot menu*

<br/>


* Note: edit "rk3588-rock-5b.dtb" in the scripts below to reflect the device tree file

<br/>


**main script**
```
/boot/mk_extlinux.sh
```

<br/>


**post install hooks**
```
/etc/kernel/postinst.d
  dtb_copy
  update_extlinux -> ../../../boot/mk_extlinux.sh
```

<br/>


**post uninstall hooks**
```
/etc/kernel/postrm.d
  dtb_rm
  update_extlinux -> ../../../boot/mk_extlinux.sh
```

<br/>

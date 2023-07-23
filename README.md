# extlinux-menu
#### *scripts for generating extlinux.conf boot menu*

<br/>


* Note: edit ```<DTB_FILE>``` in the scripts below to reflect the target device tree

<br/>


**main script**
```
/boot/mk_extlinux
```

<br/>


**post install hooks**
```
/etc/kernel/postinst.d
  dtb_cp
  update_extlinux -> ../../../boot/mk_extlinux
```

<br/>


**post uninstall hooks**
```
/etc/kernel/postrm.d
  dtb_rm
  update_extlinux -> ../../../boot/mk_extlinux
```

<br/>



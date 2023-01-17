#!/system/bin/sh
if ! applypatch -c MTD:recovery:13615104:11612bb4c6defa32dea87a6abc19162cfb9d43d4; then
  applypatch -b /system/etc/recovery-resource.dat MTD:boot:12795904:47e60e23e1ae8fa19a6a1d42ac49eaf319bc0481 MTD:recovery 11612bb4c6defa32dea87a6abc19162cfb9d43d4 13615104 47e60e23e1ae8fa19a6a1d42ac49eaf319bc0481:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):55574528:ca6b6018ac78b2c1d189e2fbd50fbd577861774a; then
  applypatch \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot$(getprop ro.boot.slot_suffix):46137344:a2bdcddf03faa27b4575279e4acaf8b50cbf824d \
          --target EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):55574528:ca6b6018ac78b2c1d189e2fbd50fbd577861774a && \
      (log -t install_recovery "Installing new recovery image: succeeded" && setprop vendor.ota.recovery.status 200) || \
      (log -t install_recovery "Installing new recovery image: failed" && setprop vendor.ota.recovery.status 454)
else
  log -t install_recovery "Recovery image already installed" && setprop vendor.ota.recovery.status 200
fi


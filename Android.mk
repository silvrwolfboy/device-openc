# Symlink for wifi
$(shell mkdir -p $(OUT)/system/etc/firmware/wlan/prima/)
$(shell mkdir -p $(OUT)/system/lib/modules/)
$(shell ln -sf /data/misc/wifi/WCNSS_qcom_cfg.ini $(OUT)/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini)
$(shell ln -sf /persist/WCNSS_qcom_wlan_nv.bin $(OUT)/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin)
$(shell ln -sf /system/lib/modules/pronto/pronto_wlan.ko $(OUT)/system/lib/modules/wlan.ko)

include device/qcom/msm8610/AndroidBoard.mk

#Create symbolic link for Wifi module
$(shell mkdir -p $(TARGET_OUT)/lib/modules; \
	ln -sf /system/lib/modules/pronto/pronto_wlan.ko $(TARGET_OUT)/lib/modules/wlan.ko)

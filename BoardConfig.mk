include device/qcom/msm8610/BoardConfig.mk

# Compilation noyau - certains éléments déjà défini dans le fichier inclu
TARGET_NO_BOOTLOADER := true
KERNEL_DEFCONFIG := msm8610-perf_defconfig

# Taille partition = nombre bloc * taille bloc (bits)
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760 # max is 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 805306368 # max is 805306368
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824 # max size is 1073741824
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456 # max size is 268435456
BOARD_PERSISTIMAGE_PARTITION_SIZE := 15728640 # max size is 15728640

# Paramètres pour bootimage/recoveryimage
TARGET_PROVIDES_INIT_RC := true
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)

# don't create SD card partition
BOARD_USBIMAGE_PARTITION_SIZE_KB :=

# Activation Bluetooth pour Open C (voir bug 1004896)
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := \
  device/zte/zte_p821a10/bluetooth \
  hardware/libhardware_moz/include/hardware_moz/bluetooth/bluedroid

# Appareil photo / enregistrement vidéo
TARGET_USES_ION := true

# Recovery
TARGET_USES_TCT_FOTA := false
TARGET_RECOVERY_FSTAB := device/zte/zte_p821a10/recovery.fstab
ENABLE_LIBRECOVERY := true
RECOVERY_EXTERNAL_STORAGE := /storage/sdcard1

# hack to prevent llvm from building
BOARD_USE_QCOM_LLVM_CLANG_RS := true

# WiFi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_ATH_WLAN_AR6004 := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_DRIVER_MODULE_ARG := ""
WPA_SUPPLICANT_VERSION := VER_0_8_X
HOSTAPD_VERSION := VER_0_8_X
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
BOARD_HAS_CFG80211_KERNEL3_4 := true
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)

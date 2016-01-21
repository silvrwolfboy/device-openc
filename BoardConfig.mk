include device/qcom/msm8610/BoardConfig.mk

# Compilation noyau - certains éléments déjà défini dans le fichier inclu
TARGET_RECOVERY_FSTAB := device/zte/zte_p821a10/recovery.fstab
TARGET_NO_BOOTLOADER := true
KERNEL_DEFCONFIG := msm8610-perf_defconfig

# Taille des partitions (non-finalisé, ne sert pas pour le moment)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 805306368
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432

# Paramètres pour bootimage/recoveryimage
TARGET_PROVIDES_INIT_RC := false
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)

# Bouton 'Power' servant pour la sélection du recovery
BOARD_HAS_NO_SELECT_BUTTON := true

# don't create SD card partition
BOARD_USBIMAGE_PARTITION_SIZE_KB :=

# Activation Bluetooth pour Open C (voir bug 1004896)
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true

ENABLE_LIBRECOVERY := true
RECOVERY_EXTERNAL_STORAGE := /storage/sdcard1

# hack to prevent llvm from building
BOARD_USE_QCOM_LLVM_CLANG_RS := true

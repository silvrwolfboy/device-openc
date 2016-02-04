# bootimage
PRODUCT_COPY_FILES += \
  device/zte/zte_p821a10/rootdir/init.rc:root/init.rc \
  device/zte/zte_p821a10/rootdir/init.environ.rc:root/init.environ.rc \
  device/zte/zte_p821a10/rootdir/init.qcom.rc:root/init.qcom.rc \
  device/zte/zte_p821a10/rootdir/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
  device/zte/zte_p821a10/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
  device/zte/zte_p821a10/rootdir/init.qcom.usb.sh:root/init.qcom.usb.sh \
  device/zte/zte_p821a10/rootdir/init.target.rc:root/init.target.rc \
  device/zte/zte_p821a10/rootdir/fstab.qcom:root/fstab.qcom \
  device/zte/zte_p821a10/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc

# System
PRODUCT_COPY_FILES += \
  device/zte/zte_p821a10/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
  device/zte/zte_p821a10/etc/media_profiles.xml:system/etc/media_profiles.xml \
  device/zte/zte_p821a10/etc/sec_config:system/etc/sec_config \
  device/zte/zte_p821a10/etc/bluetooth/stack.conf:system/etc/bluetooth/stack.conf \
  device/zte/zte_p821a10/etc/snd_soc_msm/snd_soc_msm_8x10_wcd:system/etc/snd_soc_msm/snd_soc_msm_8x10_wcd \
  device/zte/zte_p821a10/etc/snd_soc_msm/snd_soc_msm_8x10_wcd_skuaa:system/etc/snd_soc_msm/snd_soc_msm_8x10_wcd_skuaa \
  device/zte/zte_p821a10/etc/snd_soc_msm/snd_soc_msm_8x10_wcd_skuab:system/etc/snd_soc_msm/snd_soc_msm_8x10_wcd_skuab

# Rétablissement de l'heure
PRODUCT_COPY_FILES += \
  external/timekeep/gecko/TimeKeepService.js:system/b2g/distribution/bundles/timekeep/TimeKeepService.js \
  external/timekeep/gecko/chrome.manifest:system/b2g/distribution/bundles/timekeep/chrome.manifest

# Propriétés pour le ZTE Open C
PRODUCT_PROPERTY_OVERRIDES += \
  diag.reset_handler=true \
  telephony.lteOnCdmaDevice=0 \
  ro.qualcomm.cabl=0 \
  ro.moz.ril.0.network_types=gsm,wcdma \
  ro.moz.ril.emergency_by_default=true \
  org.bluez.device.conn.type=array \
  ro.moz.devinputjack=1 \
  ro.display.colorfill=1 \
  ro.moz.omx.hw.max_width=1280 \
  ro.moz.omx.hw.max_height=720 \
  ro.moz.cam.0.sensor_offset=0 \
  ro.moz.wifi.eapsim_supported=1 \
  ro.moz.wifi.unloaddriver=1 \
  ro.qc.sdk.izat.service_mask=0x9 \
  ro.assisted_gps_enabled=0 \
  ro.qc.sdk.izat.premium_enabled=1 \
  persist.gps.qc_nlp_in_use=0 \
  ro.gps.agps_provider=1

# Activation Bluetooth pour Open C (voir bug 1004896) et Timekeep service
PRODUCT_PACKAGES += \
  bluetooth.default \
  timekeep

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
$(call inherit-product-if-exists, vendor/zte/zte_p821a10/zte_p821a10-vendor-blobs.mk)
$(call inherit-product, device/qcom/msm8610/msm8610.mk)

PRODUCT_BRAND := ZTE
PRODUCT_MANUFACTURER := ZTE
PRODUCT_NAME := zte_openc
PRODUCT_DEVICE := zte_p821a10
PRODUCT_MODEL := Open C

GAIA_DEV_PIXELS_PER_PX := 1.5
BOOTANIMATION_ASSET_SIZE := wvga_800

$(call inherit-product, device/qcom/msm8610/msm8610.mk)

PRODUCT_COPY_FILES += \
  device/zte/zte_p821a10/rootdir/init.rc:root/init.rc \
  device/zte/zte_p821a10/rootdir/init.qcom.rc:root/init.qcom.rc \
  device/zte/zte_p821a10/rootdir/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
  device/zte/zte_p821a10/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
  device/zte/zte_p821a10/rootdir/init.qcom.usb.sh:root/init.qcom.usb.sh \
  device/zte/zte_p821a10/rootdir/init.target.rc:root/init.target.rc \
  device/zte/zte_p821a10/rootdir/fstab.qcom:root/fstab.qcom \
  device/zte/zte_p821a10/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc \

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
$(call inherit-product-if-exists, vendor/zte/zte_p821a10/zte_p821a10-vendor-blobs.mk)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.moz.ril.emergency_by_default=true \
  org.bluez.device.conn.type=array \

# Propriétés pour le ZTE Open C
PRODUCT_PROPERTY_OVERRIDES += \
  telephony.lteOnCdmaDevice=0 \
  ro.qualcomm.cabl=0 \
  ro.moz.ril.0.network_types=gsm,wcdma \

# Rétablissement de l'heure
PRODUCT_COPY_FILES += \
  external/timekeep/gecko/TimeKeepService.js:system/b2g/distribution/bundles/timekeep/TimeKeepService.js \
  external/timekeep/gecko/chrome.manifest:system/b2g/distribution/bundles/timekeep/chrome.manifest \

# Activation Bluetooth pour Open C (voir bug 1004896) et Timekeep service
PRODUCT_PACKAGES += \
  bluetooth.default \
  timekeep \

PRODUCT_NAME := zte_openc
PRODUCT_DEVICE := zte_p821a10
PRODUCT_BRAND := ZTE
PRODUCT_MANUFACTURER := ZTE
PRODUCT_MODEL := Open C

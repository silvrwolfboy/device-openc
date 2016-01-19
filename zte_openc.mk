$(call inherit-product, device/qcom/msm8610/msm8610.mk)

PRODUCT_COPY_FILES := \

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.moz.ril.emergency_by_default=true \
  org.bluez.device.conn.type=array \

# Rétablissement de l'heure
PRODUCT_COPY_FILES += \
  external/timekeep/gecko/TimeKeepService.js:system/b2g/distribution/bundles/timekeep/TimeKeepService.js \
  external/timekeep/gecko/chrome.manifest:system/b2g/distribution/bundles/timekeep/chrome.manifest \

# Activation Bluetooth pour Open C (voir bug 1004896) et Timekeep service
PRODUCT_PACKAGES += \
+  bluetooth.default \
+  timekeep \

PRODUCT_NAME := zte_openc
PRODUCT_DEVICE := zte_p821a10
PRODUCT_BRAND := qcom
PRODUCT_MANUFACTURER := zte
PRODUCT_MODEL := open c

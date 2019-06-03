# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Release name
PRODUCT_RELEASE_NAME := m3

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/meizu/m3/device_m3.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m3
PRODUCT_NAME := cm_m3
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := M3
PRODUCT_MANUFACTURER := Meizu



PRODUCT_GMS_CLIENTID_BASE := android-meizu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=m3 \
    BUILD_PRODUCT=m3 \
    TARGET_DEVICE=m3


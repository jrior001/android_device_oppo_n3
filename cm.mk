## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := n3

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/oppo/n3/device_n3.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n3
PRODUCT_NAME := cm_n3
PRODUCT_BRAND := oppo
PRODUCT_MODEL := n3
PRODUCT_MANUFACTURER := oppo

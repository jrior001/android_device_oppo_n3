# Release name
PRODUCT_RELEASE_NAME := n3

# Inherit some common stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/oppo/n3/device_n3.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n3
PRODUCT_NAME := full_n3
PRODUCT_BRAND := oppo
PRODUCT_MODEL := n3
PRODUCT_MANUFACTURER := oppo

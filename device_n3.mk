$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/oppo/n3/n3-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/oppo/n3/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/oppo/n3/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    device/oppo/n3/kernel:kernel \
    device/oppo/n3/dtb:dtb

# Model is set via init library
PRODUCT_SYSTEM_PROPERTY_BLACKLIST := \
    ro.product.model \
    ro.build.product

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_n3
PRODUCT_DEVICE := n3

# Release name
PRODUCT_RELEASE_NAME := rendang

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dt.img:dt.img \
    $(LOCAL_PATH)/prebuilt/kernel:kernel \
    $(LOCAL_PATH)/recovery.fstab:root/etc/recovery.fstab

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := rendang
PRODUCT_NAME := omni_rendang
PRODUCT_BRAND := Smartfren
PRODUCT_MODEL := Andromax G36C1H
PRODUCT_MANUFACTURER := Haier

TARGET_VENDOR_PRODUCT_NAME := G36C1H
TARGET_VENDOR_DEVICE_NAME := G36C1H
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=G36C1H PRODUCT_NAME=G36C1H

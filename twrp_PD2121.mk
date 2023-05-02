# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from PD2121 device
$(call inherit-product, device/vivo/PD2121/device.mk)

PRODUCT_DEVICE := PD2121
PRODUCT_NAME := twrp_PD2121
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2121A
PRODUCT_MANUFACTURER := vivo
PRODUCT_RELEASE_NAME := PD2121

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k6891v1_64-user 11 RP1A.200720.012 eng.compil.20211110.112647 release-keys"

BUILD_FINGERPRINT := vivo/PD2121/PD2121:11/RP1A.200720.012/compiler1110112308:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += ro.vendor.vivo.product.model=$(PRODUCT_RELEASE_NAME)
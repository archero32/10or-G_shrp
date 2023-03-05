# Only the below variable(s) need to be changed!
#
# Define hardware platform
PRODUCT_PLATFORM := sdm626

# Release name
PRODUCT_RELEASE_NAME := G

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := G
PRODUCT_NAME := twrp_G
PRODUCT_BRAND := 10or
PRODUCT_MODEL := 10or G
PRODUCT_MANUFACTURER := 10or

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/10or/G/device.mk)

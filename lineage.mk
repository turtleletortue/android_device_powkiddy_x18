# Release name
PRODUCT_RELEASE_NAME := x18
CM_VENDOR := vendor/cm

# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(CM_VENDOR)/config/common_full_tablet_wifionly.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device configuration
$(call inherit-product, device/powkiddy/x18/lineage_x18.mk)

# Screen
TARGET_SCREEN_HEIGHT := 720
TARGET_SCREEN_WIDTH := 1080

# This is a tablet
PRODUCT_CHARACTERISTICS := tablet

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x18
PRODUCT_NAME := lineage_x18

# GMS
#PRODUCT_GMS_CLIENTID_BASE := android-bq


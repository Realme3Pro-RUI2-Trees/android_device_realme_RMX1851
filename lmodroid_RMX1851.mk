#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lmodroid stuff.
$(call inherit-product, vendor/lmodroid/config/common_full_phone.mk)

# Inherit from RMX1851 device
$(call inherit-product, device/realme/RMX1851/device.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := lmodroid_RMX1851
PRODUCT_DEVICE := RMX1851
PRODUCT_MANUFACTURER := Realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX1851

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sargo-user 12 SP2A.220405.003 8210211 release-keys"

BUILD_FINGERPRINT := google/sargo/sargo:12/SP2A.220405.003/8210211:user/release-keys

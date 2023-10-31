#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)

# Inherit from gta4l device
$(call inherit-product, device/samsung/gta4l/device.mk)

PRODUCT_DEVICE := gta4l
PRODUCT_NAME := lineage_gta4l
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T507
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gta4ltur-user 12 SP1A.210812.016 T507JXU4CWD1 release-keys"

BUILD_FINGERPRINT := samsung/gta4ltur/gta4l:11/RP1A.200720.012/T507JXU4CWD1:user/release-keys

## Boot Animation
TARGET_SCREEN_HEIGHT := 2000
TARGET_SCREEN_WIDTH := 1200


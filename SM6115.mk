#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Rootdir
PRODUCT_PACKAGES += \
    init.qcom.sh \
    init.qti.chg_policy.sh \
    init.class_main.sh \
    init.qcom.post_boot.sh \
    init.qcom.usb.sh \
    init.qti.qcv.sh \
    init.crda.sh \
    init.qti.media.sh \
    init.qcom.coex.sh \
    init.mdm.sh \
    init.qti.display_boot.sh \
    init.qti.dcvs.sh \
    init.qti.early_init.sh \
    init.qcom.efs.sync.sh \
    init.qcom.sensors.sh \
    init.qcom.class_core.sh \
    qca6234-service.sh \
    init.qcom.early_boot.sh \
    init.qcom.sdio.sh \
    install-recovery.sh \

PRODUCT_PACKAGES += \
    fstab.firmware \
    init.samsung.rc \
    init.gta4l.rc \
    init.target.rc \
    init.qcom.rc \
    init.qcom.factory.rc \
    init.qcom.usb.rc \
    init.qti.ufs.rc \
    init.samsung.bsp.rc \
    init.recovery.qcom.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.firmware:$(TARGET_COPY_OUT_RAMDISK)/fstab.firmware

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

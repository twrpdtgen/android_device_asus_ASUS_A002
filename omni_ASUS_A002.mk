#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ASUS_A002 device
$(call inherit-product, device/asus/ASUS_A002/device.mk)

PRODUCT_DEVICE := ASUS_A002
PRODUCT_NAME := omni_ASUS_A002
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_A002
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus-tpin

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="WW_Phone-user 7.0 NRD90M 14.1600.1805.51-20180626 release-keys"

BUILD_FINGERPRINT := asus/WW_ASUS_A002/ASUS_A002:7.0/NRD90M/14.1600.1805.51-20180626:user/release-keys

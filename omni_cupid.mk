#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from cupid device
$(call inherit-product, device/xiaomi/cupid/device.mk)

PRODUCT_DEVICE := cupid
PRODUCT_NAME := omni_cupid
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2201123G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lineage_cupid-userdebug 13 TQ1A.230205.002 eng.arian.20230307.012043 test-keys"

BUILD_FINGERPRINT := Xiaomi/lineage_cupid/cupid:13/TQ1A.230205.002/arian03070120:userdebug/test-keys

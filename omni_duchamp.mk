#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from duchamp device
$(call inherit-product, device/xiaomi/duchamp/device.mk)

PRODUCT_DEVICE := duchamp
PRODUCT_NAME := omni_duchamp
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 2311DRK48G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_duchamp-eng 99.87.36 SP2A.220405.004 eng.sukrut.20240317.003258 test-keys"

BUILD_FINGERPRINT := POCO/twrp_duchamp/duchamp:99.87.36/SP2A.220405.004/sukrut477803170037:eng/test-keys

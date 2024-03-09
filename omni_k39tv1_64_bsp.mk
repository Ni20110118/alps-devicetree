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

# Inherit from k39tv1_64_bsp device
$(call inherit-product, device/alps/k39tv1_64_bsp/device.mk)

PRODUCT_DEVICE := k39tv1_64_bsp
PRODUCT_NAME := omni_k39tv1_64_bsp
PRODUCT_BRAND := alps
PRODUCT_MODEL := XH1.1
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k39tv1_64_bsp-user 9 PPR1.180610.011 eng.root.20220601.152109 dev-keys"

BUILD_FINGERPRINT := alps/full_k39tv1_64_bsp/k39tv1_64_bsp:9/PPR1.180610.011/root06011520:user/dev-keys

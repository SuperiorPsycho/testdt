#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from surya device
$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/cipher/config/common_full_phone.mk)

PRODUCT_NAME := cipher_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := Xiaomi

# CipherOS specific flags
# Bootanimation res
TARGET_BOOT_ANIMATION_RES := 1080
# Faceunlock Support
TARGET_FACE_UNLOCK_SUPPORTED := true
# Maintainer
CIPHER_MAINTAINER := Pranjal
# GMS
CIPHER_GAPPS := true
# Enable Blurs
CIPHER_BLUR := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

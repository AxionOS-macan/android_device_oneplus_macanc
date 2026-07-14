#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from macanc device
$(call inherit-product, device/oneplus/macanc/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# AxionAOSP
AXION_MAINTAINER := Paul
AXION_PROCESSOR := Snapdragon_8_Gen_5
AXION_CAMERA_REAR_INFO := 50,8
AXION_CAMERA_FRONT_INFO := 16
BYPASS_CHARGE_SUPPORTED := true
BYPASS_CHARGE_TOGGLE_PATH := /sys/class/oplus_chg/battery/mmi_charging_enable
PERF_DEFAULT_GOV := walt
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_AXFX := true

PRODUCT_NAME := lineage_macanc
PRODUCT_DEVICE := macanc
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := PLR110

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 16 BP2A.250605.015 1780650256865 release-keys" \
    BuildFingerprint=OnePlus/PLR110/OP6117L1:16/BP2A.250605.015/B.c4db98_17de607_17d624d:user/release-keys \
    DeviceName=OP6117L1 \
    DeviceProduct=PLR110 \
    SystemDevice=OP6117L1 \
    SystemName=PLR110

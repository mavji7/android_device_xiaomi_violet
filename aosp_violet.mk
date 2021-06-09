#
# Copyright (C) 2018-2020 The LineageOS Project
# Copyright (C) 2020 The Aosp-Extended Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common Aosp-Extended stuff.
$(call inherit-product, vendor/aosp/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit GMS, Pixel Features, and Modules.
-include vendor/google/gms/config.mk

# Don't preoptimize prebuilts when building GMS.
DONT_DEXPREOPT_PREBUILTS := true

# Pixel Features
-include vendor/google/pixel/config.mk

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.210605.005/7349499:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="violet-user 9 PKQ1.181203.001 V11.0.8.0.PFHINXM release-keys" \
    PRODUCT_NAME="violet"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi


# Build with GApps if GAPPS_BUILD is true
ifeq ($(GAPPS_BUILD),true)
    WITH_GAPPS := true
    TARGET_GAPPS_ARCH := arm64
    IS_PHONE := true
    TARGET_SHIPS_SEPERATE_GAPPS_BUILD := true
endif

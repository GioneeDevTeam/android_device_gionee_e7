# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from e7 device
$(call inherit-product, device/gionee/e7/e7.mk)

# Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_e7
PRODUCT_DEVICE := e7
PRODUCT_MANUFACTURER := Gionee

PRODUCT_GMS_CLIENTID_BASE := android-gionee

PRODUCT_BRAND := elife
TARGET_VENDOR_PRODUCT_NAME := e7
TARGET_VENDOR_DEVICE_NAME := msm8974
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=msm8974 PRODUCT_NAME=e7

TARGET_CONTINUOUS_SPLASH_ENABLED := true

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=gionee/msm8974/msm8974:4.4.2/KVT49L/XNPH25R:user/release-keys PRIVATE_BUILD_DESC="e7-user 4.4.2 KVT49L XNPH25R release-keys"
else
# Signed e7 gets a special boot animation because it's special.
#PRODUCT_BOOTANIMATION := device/gionee/e7/bootanimation.zip
endif

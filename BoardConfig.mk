#
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
#

# Inherit from MSM8974 common
-include device/oppo/msm8974-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_e7_defconfig
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=msm8974 user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 mdss_mdp.panel=1:dsi:0:qcom,mdss_dsi_jdi_1080p_cmd oppo.pcb_version=20 oppo.rf_version=13
BOARD_CUSTOM_BOOTIMG_MK := device/gionee/e7/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := 

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/gionee/e7/bluetooth

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DOPPO_CAMERA_HARDWARE

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 20971520
BOARD_CACHEIMAGE_PARTITION_SIZE    := 396361728
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 4194304
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1322254336
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4282384384
BOARD_SDCARD_PARTITION_SIZE := 24196939776
# Init
TARGET_INIT_VENDOR_LIB := libinit_e7

# Recovery
TARGET_RECOVERY_FSTAB := device/gionee/e7/rootdir/etc/fstab.e7
RECOVERY_VARIANT := cm

TARGET_OTA_ASSERT_DEVICE := e7,e7l

TARGET_WCNSS_MAC_PREFIX := e8bba8

# Workaround for factory issue
BOARD_VOLD_CRYPTFS_MIGRATE := true

# inherit from the proprietary version
-include vendor/gionee/e7/BoardConfigVendor.mk

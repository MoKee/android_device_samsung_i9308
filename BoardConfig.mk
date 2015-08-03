#
# Copyright (C) 2012 The CyanogenMod Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include device/samsung/smdk4412-common/BoardCommonConfig.mk

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := xmm6262
TARGET_SPECIFIC_HEADER_PATH := device/samsung/i9308/include

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/i9308/bluetooth

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/i9308
TARGET_KERNEL_CONFIG := cyanogenmod_i9308_defconfig

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/i9308/rootdir/fstab.smdk4x12
RECOVERY_FSTAB_VERSION := 2

# Selinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/i9308/selinux

BOARD_SEPOLICY_UNION += \
    bluetooth.te \
    device.te \
    domain.te \
    file.te \
    file_contexts \
    gpsd.te \
    init.te \
    mediaserver.te \
    netd.te \
    nfc.te \
    rild.te \
    servicemanager.te \
    service_contexts \
    surfaceflinger.te \
    sysinit.te \
    system_app.te \
    system_server.te \
    ueventd.te \
    vold.te \
    wpa_supplicant.te

# assert
TARGET_OTA_ASSERT_DEVICE := i9308,GT-I9308

# TWRP
TW_THEME := portrait_hdpi

# inherit from the proprietary version
-include vendor/samsung/i9308/BoardConfigVendor.mk


ifdef MK_RELEASE
WITH_DEXPREOPT := true
endif
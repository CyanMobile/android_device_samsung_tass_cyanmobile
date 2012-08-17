# Copyright (C) 2007 The Android Open Source Project
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

# config.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH:= $(call my-dir)

TARGET_SPECIFIC_HEADER_PATH := device/samsung/tass/include

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB:= true
BOARD_LIBCAMERA_MISSING_AUTOFOCUS := true
#BOARD_USE_FROYO_LIBCAMERA := true
COPYBIT_MSM7K := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi

TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
#EGL
BOARD_EGL_CFG := device/samsung/tass/egl.cfg

TARGET_BOOTLOADER_BOARD_NAME := tass
TARGET_OTA_ASSERT_DEVICE := tass,GT-S5570

TARGET_USE_SOFTWARE_AUDIO_AAC := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_FORCE_STATIC_A2DP := true
HAS_BCM20780 := true
BOARD_GLOBAL_CFLAGS += -DHAS_BCM20780

# WiFi
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
BOARD_WLAN_DEVICE           := ar6000
WIFI_DRIVER_MODULE_PATH     := /system/wifi/ar6000.ko
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := ar6000

WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
BOARD_USE_SCREENCAP:= true
BOARD_MOBILEDATA_INTERFACE_NAME:= "pdp0"
TARGET_WEBCORE_ENABLE_GIF := true
# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm2049

BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x13600000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_PAGE_SIZE := 0x00001000
TARGET_PREBUILT_KERNEL := device/samsung/tass/kernel	
TARGET_RECOVERY_INITRC := device/samsung/tass/recovery.rc

TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/tass/recovery_kernel
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/tass/recovery/recovery_ui.c
BOARD_CUSTOM_GRAPHICS           := ../../../device/samsung/tass/recovery/graphics.c
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/gadget/lun"
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

TARGET_PROVIDES_LIBAUDIO := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 219938816
BOARD_USERDATAIMAGE_PARTITION_SIZE := 190054400
BOARD_DATA_DEVICE := /dev/block/stl13
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := nosuid,nodev
BOARD_SYSTEM_DEVICE := /dev/block/stl12
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/stl14
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := nosuid,nodev
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BML_BOOT := /dev/block/bml8
BOARD_BML_RECOVERY := /dev/block/bml9
BOARD_SDEXT_DEVICE := /dev/block/mmcblk0p2
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_LDPI_RECOVERY := true
I_AM_KOUSH := true

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true 

## to enable the GPS HAL
BOARD_GPS_LIBRARIES := libloc_api
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_GPS := true		
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := tass
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240
BOARD_GPS_NEEDS_XTRA := true

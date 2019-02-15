# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

DEVICE_PATH := device/xiaomi/armani

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7

# Audio
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_EXTN_POST_PROC := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_HFP := true
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
BOARD_USES_GENERIC_AUDIO := true
TARGET_USES_QCOM_MM_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Binder API version
TARGET_USES_64_BIT_BINDER := true

# Bionic
MALLOC_SVELTE := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8226
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Camera
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_USES_MEDIA_EXTENSIONS := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true

# Debug
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false

# Encryption
TARGET_LEGACY_HW_DISK_ENCRYPTION := true

# Exclude serif fonts for saving system.img size.
EXCLUDE_SERIF_FONTS := true

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1054460928
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6025165312
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE  := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE    := 402653184
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432
BOARD_FLASH_BLOCK_SIZE             := 131072
TARGET_USES_MKE2FS := true

# FM
BOARD_HAVE_QCOM_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# Graphics
TARGET_USES_HWC2 := true
TARGET_USES_ION := true
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x02000000U

# Shader cache config options
# Maximum size of the GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml

# Init
TARGET_INIT_VENDOR_LIB := libinit_armani
TARGET_RECOVERY_DEVICE_MODULES := libinit_armani

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/armani
TARGET_KERNEL_CONFIG := cyanogenmod_armani_defconfig
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.bootdevice=msm_sdcc.1 androidboot.hardware=armani zcache.enabled=1
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_DTBTOOL_ARGS := --force-v2

# Keymaster
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Platform
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

# Power
TARGET_HAS_LEGACY_POWER_STATS := true
TARGET_HAS_NO_WLAN_STATS := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.armani
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_NO_SECURE_DISCARD := true

# Radio
TARGET_RIL_VARIANT := caf

# Security Patch Level
VENDOR_SECURITY_PATCH := 2016-10-01

# SELinux
#include device/qcom/sepolicy/sepolicy.mk
#include device/qcom/sepolicy/legacy-sepolicy.mk
#BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Shims
TARGET_LD_SHIM_LIBS += \
    /system/vendor/lib/hw/camera.vendor.msm8226.so|libshim_camera.so \
    /system/vendor/lib/hw/camera.vendor.msm8226.so|libshim_graphicbuffer.so
TARGET_PROCESS_SDK_VERSION_OVERRIDE += \
    /vendor/bin/mm-qcamera-daemon=20 \
    /system/bin/mediaserver=20

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
PRODUCT_VENDOR_MOVE_ENABLED := true
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X
TARGET_PROVIDES_WCNSS_QMI := true
TARGET_USES_QCOM_WCNSS_QMI := true

# inherit from the proprietary version
-include vendor/xiaomi/armani/BoardConfigVendor.mk

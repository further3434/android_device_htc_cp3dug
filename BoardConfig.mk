USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/cp3dug/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := cp3dug
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := 8625Q
#TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno203

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_VARIANT := krait
#TARGET_CPU_VARIANT := cortex-a5

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31
BOARD_KERNEL_BASE := 0x03b00000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01408000
TARGET_PREBUILT_KERNEL := device/htc/cp3dug/kernel

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00fffc00
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00fffe00
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x77fffc00
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x138000000
BOARD_FLASH_BLOCK_SIZE := 131072

# Use power button as select in recovery
BOARD_HAS_NO_SELECT_BUTTON := true

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_HAS_LARGE_FILESYSTEM := true

#custom recovery init.rc
TARGET_RECOVERY_INITRC := device/htc/cp3dug/recovery/init.rc

# Recovery
TARGET_RECOVERY_FSTAB := device/htc/cp3dug/fstab.cp3dug
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
COMMON_GLOBAL_CFLAGS += -DRECOVERY_CANT_USE_CONFIG_EXT4_FS_XATTR
#TARGET_RECOVERY_DEVICE_MODULES += chargeled

# TWRP Specific
RECOVERY_VARIANT=twrp
DEVICE_RESOLUTION := 540x960
TW_FLASH_FROM_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_DEFAULT_EXTERNAL_STORAGE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_INCLUDE_DUMLOCK := true
TW_INCLUDE_JB_CRYPTO := true
TW_NO_SCREEN_BLANK := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255


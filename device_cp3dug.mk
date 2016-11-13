$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/cp3dug/cp3dug-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/cp3dug/overlay

LOCAL_PATH := device/htc/cp3dug
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Ramdisk
PRODUCT_COPY_FILES += \
    device/htc/cp3dug/ramdisk/init:root/init \
    device/htc/cp3dug/ramdisk/init.rc:root/init.rc \
    device/htc/cp3dug/ramdisk/init.target.rc:root/init.target.rc \
    device/htc/cp3dug/ramdisk/init.usb.rc:root/init.usb.rc \
    device/htc/cp3dug/ramdisk/ueventd.rc:root/ueventd.rc \
    device/htc/cp3dug/ramdisk/ueventd.target.rc:root/ueventd.cp3dug.rc

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/cp3dug/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    device/htc/cp3dug/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    device/htc/cp3dug/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    device/htc/cp3dug/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm \
    device/htc/cp3dug/keylayout/device-keypad.kl:system/usr/keylayout/device-keypad.kl\
    device/htc/cp3dug/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl \
    device/htc/cp3dug/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/cp3dug/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl\
    device/htc/cp3dug/keylayout/sr_touchscreen.kl:system/usr/keylayout/sr_touchscreen.kl \

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc_extras.xml:system/etc/permissions/android.hardware.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# NFCEE access control
PRODUCT_COPY_FILES += \
    device/htc/cp3dug/nfc/nfcee_access.xml:system/etc/nfcee_access.xml

PRODUCT_PACKAGES += \
     com.android.nfc_extras \
     com.nxp.nfc.nq

# Media profile
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Set usb type
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage,adb \
    persist.service.adb.enable=1 \
    ro.adb.secure=0 \
    ro.secure=0

# Recovery-twrp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/recovery.fstab:recovery/root/etc/twrp.fstab \
    $(LOCAL_PATH)/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    $(LOCAL_PATH)/recovery/sbin/power_test:recovery/root/sbin/power_test \
    $(LOCAL_PATH)/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    $(LOCAL_PATH)/recovery/sbin/detect_key:recovery/root/sbin/detect_key

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := cp3dug
PRODUCT_DEVICE := cp3dug

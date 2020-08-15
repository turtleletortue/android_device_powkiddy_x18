# Define local path
LOCAL_PATH := device/powkiddy/x18
CM_VENDOR := vendor/cm

$(call inherit-product-if-exists, vendor/powkiddy/x18/x18-vendor.mk)

# prebuilt kernel
TARGET_PREBUILT_KERNEL := device/powkiddy/x18/kernel

# Verity
$(call inherit-product, $(SRC_TARGET_DIR)/product/verity.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Set locales & aapt config.
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Region/Lang
PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := US

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/configs/media_codecs_mediatek_audio.xml:system/etc/media_codecs_mediatek_audio.xml

# EGL cfg
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/egl.cfg:system/vendor/lib/egl/egl.cfg

# Recovery.fstab
PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/recovery.fstab:system/vendor/etc/recovery.fstab

#Removed from media
#     $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio_device.xml:system/vendor/etc/audio_device.xml \
    $(LOCAL_PATH)/configs/audio_em.xml:system/vendor/etc/audio_em.xml \
    $(LOCAL_PATH)/configs/AudioParamOptions.xml:system/vendor/etc/audio_param/AudioParamOptions.xml \
    $(LOCAL_PATH)/configs/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio_policy_volumes.xml:system/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/r_submix_audio_policy_configuration.xml:system/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml \
    
    

# Wifi Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/ecc_list.xml:system/etc/ecc_list.xml \
    $(LOCAL_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml

# Dalvik
PRODUCT_TAGS += dalvik.gc.type-precise

# network
PRODUCT_PACKAGES += \
    netd \
    wpa_supplicant \
    wpa_cli \
    hostapd \
    hostapd_cli \
    libwpa_client

# IPv6 tethering
PRODUCT_PACKAGES += \
    ethertypes \
    iptables \
    ip6tables \
    iptables-restore \
    ip6tables-restore

# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir,root)

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.stub \
    libalsautils \
    libaudio-resampler \
    libtinyalsa \
    libtinycompress \
    libtinyxml \
    libaudioroute \
    audio.r_submix.mt8163

# MISC
PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory \
    charger \
    libnl_2 \
    libion \
    charger_res_images 

# FM Radio
PRODUCT_PACKAGES += \
    FMRadio \
    libfmcust \
    libfmjni

# Camera
#X18 doesn't need camera stuff iirc
#PRODUCT_PACKAGES += \
#    Snap

# Shims
PRODUCT_PACKAGES += \
    libmtk_symbols \
    libshim_ui \
    libshim_wvm \
    libshim_drm

# Default.prop
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
   ro.mount.fs=EXT4 \
   persist.service.acm.enable=0 \
   ro.config.low_ram=false \
   persist.sys.usb.config=mtp,adb \
   ro.zygote=zygote64_32

# MediaTek HAL
PRODUCT_PACKAGES += \
    power.mt8163 \
    lights.mt8163 \
    power.mt8163

# Graphic
PRODUCT_PACKAGES += \
    libGLES_android \
    libgralloc_extra \
    libperfservicenative \
    libui_ext \
    libgui_ext 

# MTK Debugging
PRODUCT_PACKAGES += \
    YGPS

# Manage Serial
#PRODUCT_PACKAGES += \
#    manage_sn

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=0

# Enable ADB at boot
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1 \
    persist.service.adb.enable=1

#OTA Updates
PRODUCT_PROPERTY_OVERRIDES += \
    cm.updater.uri=https://raw.githubusercontent.com/turtleletortue/lineage_ota/cm-14.1/lineageos_x18.json


# Verity 
PRODUCT_SUPPORTS_BOOT_SIGNER := true
PRODUCT_VERITY_SIGNING_KEY := build/target/product/security/verity

# Dalvik/HWUI
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

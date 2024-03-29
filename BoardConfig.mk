# inherit from the proprietary version
-include vendor/powkiddy/x18/BoardConfigVendor.mk

#Device path
DEVICE_PATH := device/powkiddy/x18


# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := vWC200103

# Platform
TARGET_BOARD_PLATFORM := mt8163
TARGET_BOARD_PLATFORM_GPU := mali-720mp2
#mt8163b
# For Mediatek Boot Image Headers
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/bootimg.mk

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
# Kernel
TARGET_PREBUILT_KERNEL := device/powkiddy/x18/kernel
#BOARD_MTK_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE := "bootopt=64S3,32N2,64N2 androidboot.selinux=permissive"
BOARD_MKBOOTIMG_ARGS := --pagesize 2048 --base 0x40078000 --kernel_offset 0x00008000 --ramdisk_offset 0x05f88000 --second_offset 0x00f00000 --tags_offset 0x0df88000 --cmdline "bootopt=64S3,32N2,64N2 androidboot.selinux=permissive" --board "vWC200103"
#BOARD_MKBOOTIMG_ARGS := --pagesize 2048 --base 0x40078000 --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --second_offset 0x00e88000 --tags_offset 0x0df88000 --cmdline $(BOARD_KERNEL_CMDLINE) --board "vWC200103"

#Mediatek flags
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true


# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_CACHEIMAGE_PARTITION_SIZE := 117440512
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1237319680
BOARD_FLASH_BLOCK_SIZE := 131072


TARGET_USERIMAGES_USE_EXT4 := true
# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_FLASH_BLOCK_SIZE := 131072

# TWRP-Specific
BOARD_SUPPRESS_SECURE_ERASE := true
TW_THEME := portrait_hdpi
DEVICE_RESOLUTION := 720x1280
DEVICE_SCREEN_WIDTH := 1280
DEVICE_SCREEN_HEIGHT := 720
# RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888
#BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
#TARGET_DISABLE_TRIPLE_BUFFERING := false

TARGET_INCREASES_COLDBOOT_TIMEOUT := true
#TW_DEFAULT_EXTERNAL_STORAGE := true
#TW_INTERNAL_STORAGE_PATH := "/data/media"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
#TW_EXTERNAL_STORAGE_PATH := "/sdcard1"
#TW_EXTERNAL_STORAGE_MOUNT_POINT :="sdcard1"
#RECOVERY_SDCARD_ON_DATA := true
#RECOVERY_VARIANT := twrp
#TW_DEFAULT_EXTERNAL_STORAGE := true
#TW_INCLUDE_CRYPTO := false
#TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
#TW_DEFAULT_BRIGHTNESS := 128
#TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
#TW_EXCLUDE_SUPERSU := true
#TW_IGNORE_MISC_WIPE_DATA := true
#TW_EXCLUDE_ENCRYPTED_BACKUPS := false
#TW_NO_EXFAT := false
#TW_USE_TOOLBOX := true
# Screenshots
#TW_INCLUDE_FB2PNG := true

# Flip Screen
#RECOVERY_TOUCHSCREEN_FLIP_Y := true
#RECOVERY_TOUCHSCREEN_FLIP_X := true

# MTP
# TW_EXCLUDE_MTP := true
#TW_MTP_DEVICE := "/dev/mtp_usb"

# USB Storage
#TW_NO_USB_STORAGE := false

# Logs
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

# Exclude APP
#TW_EXCLUDE_TWRPAPP := true

# Backup data/media
#TW_BACKUP_DATA_MEDIA := true

#Recovery.fstab
#TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/recovery.fstab

#Touchscreen fix
RECOVERY_TOUCHSCREEN_FLIP_Y := true
RECOVERY_TOUCHSCREEN_SWAP_XY := true

# Graphics
BOARD_EGL_CFG := $(DEVICE_PATH)/configs/egl.cfg
USE_OPENGL_RENDERER := true
VSYNC_EVENT_PHASE_OFFSET_NS := 0
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
#MTK_HWC_SUPPORT := yes
#MTK_HWC_VERSION := 1.4.1
#USE_OPENGL_RENDERER := true
#TARGET_USES_C2D_COMPOSITION := true
#TARGET_USES_OVERLAY := true
#NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
#TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
#TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
#MAX_VIRTUAL_DISPLAY_DIMENSION := 1
#MAX_EGL_CACHE_KEY_SIZE := 12*1024
#MAX_EGL_CACHE_SIZE := 1024*1024
# WIFI
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_P2P := P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0
# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true
MALLOC_SVELTE := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Bluetooth
#BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_MTK := true
#BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
#BOARD_BLUETOOTH_BDROID_HCILP_INCLUDED := 0
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Shims
TARGET_LDPRELOAD += \
    libmtk_symbols.so 

LINKER_FORCED_SHIM_LIBS := \
    /system/vendor/lib/libcam_utils.so|libshim_ui.so \
    /system/vendor/lib/libMtkOmxVenc.so|libshim_ui.so \
    /system/vendor/bin/wmt_loader|libshim_log.so \
    /system/vendor/bin/wmt_launcher|libshim_log.so
    

#	/system/lib/libui_ext.so|libshim_ui.so \
#	/system/lib64/libui_ext.so|libshim_ui.so \
#	/system/lib/libgui_ext.so|libshim_ui.so \
#	/system/lib64/libgui_ext.so|libshim_ui.so \

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_HCILP_INCLUDED := 0
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/recovery.fstab
#BOARD_HAS_NO_SELECT_BUTTON := true
#TARGET_USERIMAGES_USE_EXT4 := true

BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# System.prop
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# Headers
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file

# SEPolicy
BOARD_SEPOLICY_DIRS := \
       $(DEVICE_PATH)/sepolicy

# Seccomp filter
BOARD_SECCOMP_POLICY += $(DEVICE_PATH)/seccomp

# Headers
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include


$(shell mkdir -p $(shell pwd)/out/target/product/x18/obj/KERNEL_OBJ/usr)

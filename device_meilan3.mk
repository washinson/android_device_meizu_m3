$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/meizu/meilan3/meilan3-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/meizu/meilan3/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/meizu/meilan3/prebuilt/Image.gz-dtb
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

TARGET_OTA_ASSERT_DEVICE := meilan3,meizu_m3_mini,m3,m3s

TARGET_PROVIDES_INIT_RC := true

PRODUCT_COPY_FILES += \
	device/meizu/meilan3/rootdir/init.rc:root/init.rc \
	device/meizu/meilan3/rootdir/enableswap.sh:root/enableswap.sh \
	device/meizu/meilan3/rootdir/init.mt6755.rc:root/init.mt6755.rc \
	device/meizu/meilan3/rootdir/init.ssd.rc:root/init.ssd.rc \
	device/meizu/meilan3/rootdir/init.xlog.rc:root/init.xlog.rc \
	device/meizu/meilan3/rootdir/init.usb.rc:root/init.usb.rc \
	device/meizu/meilan3/rootdir/init.mt6755.usb.rc:root/init.mt6755.usb.rc \
	device/meizu/meilan3/rootdir/init.aee.rc:root/init.aee.rc \
	device/meizu/meilan3/rootdir/init.project.rc:root/init.project.rc \
	device/meizu/meilan3/rootdir/init.modem.rc:root/init.modem.rc \
	device/meizu/meilan3/rootdir/init.trace.rc:root/init.trace.rc \
	device/meizu/meilan3/rootdir/fstab.mt6755:root/fstab.mt6755 \
	device/meizu/meilan3/rootdir/ueventd.rc:root/ueventd.rc \
	device/meizu/meilan3/etc/media_codecs.xml:system/etc/media_codecs.xml \
	device/meizu/meilan3/media_profiles.xml:system/etc/media_profiles.xml \
	frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
	frameworks/native/data/etc/android.hardware.audio.output.xml:system/etc/permissions/android.hardware.audio.output.xml \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
        frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
        frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
        frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
        frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
        frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
        frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \

#PRODUCT_PACKAGES += \
#    libion \
#    libmockdrmcryptoplugin \
#    libaudio-resampler \
#    libtinycompress \
#    libtinyxml

# RIL
PRODUCT_PACKAGES += \
    gsm0710muxd

PRODUCT_PACKAGES += \
    Torch

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/meizu/meilan3/rootdir/etc/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \

# Audio componets from source
PRODUCT_PACKAGES += \
    audio.usb.default \
    audio.r_submix.default

# BT A2DP
PRODUCT_COPY_FILES += \
    vendor/meizu/meilan3/proprietary/vendor/lib/hw/audio.a2dp.blueangel.so:system/vendor/lib/hw/audio.a2dp.blueangel.so

# Audio componets from source
PRODUCT_PACKAGES += \
    EngineerMode \
    MtkCamera libDocVfbEngineLib_m81 libpanorama

PRODUCT_EXTRA_RECOVERY_KEYS += device/meizu/meilan3/meizu

#$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, build/target/product/aosp_arm64.mk)

#PRODUCT_NAME := cm_meilan2
#PRODUCT_DEVICE := meilan2
#PRODUCT_BRAND := CyaniogenMod
#PRODUCT_MODEL := CyaniogenMod on Meizu Meilan2

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
	ro.allow.mock.location=1 \
	ro.debuggable=1 \
	ro.adb.secure=0 \
	persist.service.acm.enable=0 \
	persist.sys.usb.config=mtp \
	ro.mount.fs=EXT4 \
	debug.hwui.render_dirty_regions=false \
	ro.sf.lcd_density=320 \
	ro.hardware.bluetooth=blueangel \
	persist.radio.multisim.config=dsds \
	ro.mtk_lte_support=1 \
	ro.telephony.ril_class=MediaTekRIL \
	ro.telephony.ril.config=fakeiccid \
	ro.telephony.sim.count=2 \
	persist.gemini.sim_num=2 \
	ril.current.share_modem=2 \
	ro.mtk_gps_support=1 \
	ro.mtk_agps_app=1 \
	persist.debug.xlog.enable=1 \

# These additionals go to /system/build.prop
ADDITIONAL_BUILD_PROPERTIES += \
cm.updater.type=plain \
cm.updater.uri=https://raw.githubusercontent.com/divis1969/update-site/master/updates-12.1.json \


# Inherit AOSP device configuration for TCC8803.
$(call inherit-product, device/telechips/tcc8803/full_tcc8803.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Include extra dictionaries for LatinIME
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/dictionaries

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_agora_8k
PRODUCT_BRAND := telechips
PRODUCT_DEVICE := tcc8803
PRODUCT_MODEL := Agora 7 Tablet PC
PRODUCT_MANUFACTURER := Kogan
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=agora_8k BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys" BUILD_NUMBER=121341

# Extra TCC8803 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/telechips/tcc8803/overlay

# Accelerometer hacks
PRODUCT_PROPERTY_OVERRIDES += \
    sensor.accelerometer.flip_xy=1 \
    sensor.accelerometer.invert_x=1 \
    sensor.accelerometer.invert_z=1

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-TCC8803
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-TCC8803
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-TCC8803-KANG
    endif
endif

#
# Copy TCC8803 specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
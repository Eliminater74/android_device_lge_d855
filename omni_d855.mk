#$(call inherit-product, device/lge/d855/full_d855.mk)
#
# Inherit some common CM stuff.
#$(call inherit-product, vendor/cm/config/common_full_phone.mk)
#
# Enhanced NFC
#$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)



PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Copy needed files to make everything work for recovery
PRODUCT_COPY_FILES += \
#    device/lge/d855/kernel:kernel \
    device/lge/d855/img_info:img_info \
    device/lge/d855/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
	device/lge/d855/sign:recovery/root/res/sign

PRODUCT_COPY_FILES += device/lge/d855/fstab.g3:recovery/root/fstab.g3
PRODUCT_COPY_FILES += device/lge/d855/twrp.fstab:recovery/root/etc/twrp.fstab


# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := d855
PRODUCT_NAME := omni_d855
PRODUCT_BRAND := LG
PRODUCT_MODEL := G3
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_global_com" \
    BUILD_FINGERPRINT="lge/g3_global_com/g3:5.0/LRX21R.A1419207951/1419207951:user/release-keys" \
    PRIVATE_BUILD_DESC="g3_global_com-user 5.0 LRX21R.A1419207951 1419207951 release-keys"

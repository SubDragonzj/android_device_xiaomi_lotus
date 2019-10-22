# Inherit from device
$(call inherit-product, device/xiaomi/lotus/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lotus
PRODUCT_NAME := lineage_lotus
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := MI PLAY
PRODUCT_MANUFACTURER := Xiaomi

# Override fingerprint from stock
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lotus-user 8.1.0 O11019 V10.3.4.0.OFICNXM release-keys" \
    PRODUCT_NAME="lotus" \
    TARGET_DEVICE="lotus"

BUILD_FINGERPRINT := xiaomi/lotus/lotus:8.1.0/O11019/V10.3.4.0.OFICNXM:user/release-keys

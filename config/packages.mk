# Config
PRODUCT_PACKAGES += \
    SimpleDeviceConfig

# Customizations
PRODUCT_PACKAGES += \
    IconShapeSquareOverlay \
    NavigationBarMode2ButtonOverlay

# Telephony packages
PRODUCT_PACKAGES += \
    Stk

# Root
PRODUCT_PACKAGES += \
    adb_root
ifneq ($(TARGET_BUILD_VARIANT),user)
ifeq ($(WITH_SU),true)
PRODUCT_PACKAGES += \
    su
endif
endif

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

# World APN list
PRODUCT_PACKAGES += \
    apns-conf.xml

TARGET_FACE_UNLOCK_SUPPORTED ?= true
ifeq ($(TARGET_FACE_UNLOCK_SUPPORTED),true)
PRODUCT_PACKAGES += \
    FaceUnlockService
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.face.moto_unlock_service=$(TARGET_FACE_UNLOCK_SUPPORTED)
endif


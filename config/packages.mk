# Config
PRODUCT_PACKAGES += \
    SimpleDeviceConfig

# Customizations
PRODUCT_PACKAGES += \
    IconShapeSquareOverlay \
    NavigationBarMode2ButtonOverlay

# TouchGestures
PRODUCT_PACKAGES += \
    TouchGestures

# ThemePicker
PRODUCT_PACKAGES += \
    ThemePicker

# Telephony packages
PRODUCT_PACKAGES += \
    Stk

# Updater
PRODUCT_PACKAGES += \
    Updates

# Root
PRODUCT_PACKAGES += \
    adb_root
ifneq ($(TARGET_BUILD_VARIANT),user)
ifeq ($(WITH_SU),true)
PRODUCT_PACKAGES += \
    su
endif
endif

# Overlays
PRODUCT_PACKAGES += \
    GesturalNavigationOverlayLong \
    GesturalNavigationOverlayMedium \
    GesturalNavigationOverlayHidden

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
    ro.face_unlock_service.enabled=$(TARGET_FACE_UNLOCK_SUPPORTED)
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.biometrics.face.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.biometrics.face.xml
endif


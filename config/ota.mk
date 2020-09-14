ifeq ($(CUSTOM_BUILD_TYPE), OFFICIAL)

CUSTOM_OTA_VERSION_CODE := eleven

CUSTOM_PROPERTIES += \
    org.rohie.ota.version_code=$(CUSTOM_OTA_VERSION_CODE) \
    sys.ota.disable_uncrypt=1

PRODUCT_PACKAGES += \
    Updates

endif

# Versioning System
ROHIE_BASE_VERSION := CatX
ROHIE_MAINTAINER ?= Unknown

# Set all versions
CUSTOM_BUILD_TYPE ?= UNOFFICIAL

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) $(CUSTOM_DATE_HOUR):$(CUSTOM_DATE_MINUTE) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)-$(CUSTOM_DATE_HOUR)$(CUSTOM_DATE_MINUTE)

CUSTOM_PLATFORM_VERSION := 11

TARGET_PRODUCT_SHORT := $(subst aosp_,,$(CUSTOM_BUILD))

CUSTOM_VERSION := RohieOS_$(ROHIE_BASE_VERSION)_$(CUSTOM_BUILD)-$(CUSTOM_PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)
CUSTOM_VERSION_PROP := eleven

CUSTOM_PROPERTIES := \
    org.rohie.version=$(CUSTOM_PLATFORM_VERSION) \
    org.rohie.version.prop=$(CUSTOM_VERSION_PROP) \
    ro.rohie.version.display=$(CUSTOM_VERSION) \
    org.rohie.build_version=$(ROHIE_BASE_VERSION) \
    org.rohie.build_date=$(CUSTOM_BUILD_DATE) \
    org.rohie.build_date_utc=$(CUSTOM_BUILD_DATE_UTC) \
    org.rohie.build_type=$(CUSTOM_BUILD_TYPE) \
    org.rohie.build_maintainer=$(ROHIE_MAINTAINER)


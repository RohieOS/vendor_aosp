# Set all versions
ROHIE_BASE_VERSION := Meow
ROHIE_MAINTAINER ?= Unknown
ROHIE_DONATE_URL ?= Unknown

# Set all versions
ROHIE_BUILD_TYPE ?= UNOFFICIAL

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) $(CUSTOM_DATE_HOUR):$(CUSTOM_DATE_MINUTE) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)-$(CUSTOM_DATE_HOUR)$(CUSTOM_DATE_MINUTE)

CUSTOM_PLATFORM_VERSION := 11

TARGET_PRODUCT_SHORT := $(subst aosp_,,$(CUSTOM_BUILD))

CUSTOM_VERSION := RohieOS_$(CUSTOM_BUILD)-$(CUSTOM_PLATFORM_VERSION)-CAF-$(CUSTOM_BUILD_DATE)-$(ROHIE_BUILD_TYPE)
CUSTOM_VERSION_PROP := r
CAF_REVISION_TAG := LA.UM.9.2.r1-01800-SDMxx0.0

PRODUCT_GENERIC_PROPERTIES += \
    org.rohie.version=$(ROHIE_BASE_VERSION) \
    org.rohie.version.prop=$(CUSTOM_VERSION_PROP) \
    org.rohie.version.display=$(ROHIE_VERSION) \
    org.rohie.build_version=$(ROHIE_BASE_VERSION) \
    org.rohie.build_date=$(CUSTOM_BUILD_DATE) \
    org.rohie.build_type=$(ROHIE_BUILD_TYPE) \
    org.rohie.build_maintainer=$(ROHIE_MAINTAINER) \
    org.rohie.build_donate_url=$(ROHIE_DONATE_URL) \
    ro.caf.revision.tag=$(CAF_REVISION_TAG)

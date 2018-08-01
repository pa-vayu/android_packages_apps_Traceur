LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_PACKAGE_NAME := Traceur
LOCAL_PRIVATE_PLATFORM_APIS := true
LOCAL_CERTIFICATE := platform
LOCAL_USE_AAPT2 := true

LOCAL_PROGUARD_FLAG_FILES += proguard.flags

LOCAL_STATIC_ANDROID_LIBRARIES := \
    androidx.leanback_leanback \
    androidx.legacy_legacy-preference-v14 \
    androidx.appcompat_appcompat \
    androidx.preference_preference \
    androidx.recyclerview_recyclerview \
    androidx.legacy_legacy-support-v4

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_SRC_FILES := $(call all-java-files-under, src)

include frameworks/base/packages/SettingsLib/common.mk

include $(BUILD_PACKAGE)

# Use the following include to make our test apk.
include $(call all-makefiles-under,$(LOCAL_PATH))

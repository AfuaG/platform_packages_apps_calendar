LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_EMMA_COVERAGE_FILTER := +com.android.calendar.*

# We only want this apk build for tests.
LOCAL_MODULE_TAGS := tests

LOCAL_JAVA_LIBRARIES := android.test.runner

# Include all test java files.
LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := CalendarTests

LOCAL_INSTRUMENTATION_FOR := Calendar

# unbundled
#LOCAL_STATIC_JAVA_LIBRARIES := android-common
#LOCAL_SDK_VERSION := current

include $(BUILD_PACKAGE)

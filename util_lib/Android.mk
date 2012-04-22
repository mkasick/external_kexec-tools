LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE      := libktutil
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES  := $(LOCAL_PATH)/include
LOCAL_SRC_FILES   := compute_ip_checksum.c sha256.c
include $(BUILD_STATIC_LIBRARY)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE                  := kdump
LOCAL_MODULE_TAGS             := optional
LOCAL_MODULE_CLASS            := UTILITY_EXECUTABLES
LOCAL_MODULE_PATH             := $(PRODUCT_OUT)/utilities
LOCAL_C_INCLUDES              := $(LOCAL_PATH)/../include
LOCAL_SRC_FILES               := kdump.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES        := libc
include $(BUILD_EXECUTABLE)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE                  := kexec
LOCAL_MODULE_TAGS             := optional
LOCAL_MODULE_CLASS            := UTILITY_EXECUTABLES
LOCAL_MODULE_PATH             := $(PRODUCT_OUT)/utilities
LOCAL_C_INCLUDES              := $(LOCAL_PATH)/../include \
                                 $(LOCAL_PATH)/../util_lib/include \
                                 $(LOCAL_PATH)/arch/arm/include \
                                 external/zlib
LOCAL_SRC_FILES               := kexec.c ifdown.c kexec-elf.c \
                                 kexec-elf-exec.c kexec-elf-core.c \
                                 kexec-elf-rel.c kexec-elf-boot.c \
                                 kexec-iomem.c firmware_memmap.c \
                                 crashdump.c crashdump-xen.c phys_arch.c \
                                 lzma.c zlib.c proc_iomem.c \
                                 virt_to_phys.c arch/arm/phys_to_virt.c \
                                 add_segment.c add_buffer.c \
                                 arch_reuse_initrd.c arch_init.c \
                                 arch/arm/kexec-elf-rel-arm.c \
                                 arch/arm/kexec-zImage-arm.c \
                                 arch/arm/kexec-uImage-arm.c \
                                 arch/arm/kexec-arm.c \
                                 arch/arm/crashdump-arm.c kexec-uImage.c \
                                 purgatory.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES        := libktutil libz libc
include $(BUILD_EXECUTABLE)

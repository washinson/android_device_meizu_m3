LOCAL_PATH:= $(call my-dir)

ifneq ($(filter m3, $(TARGET_DEVICE)),)

include $(call first-makefiles-under,$(LOCAL_PATH))

endif

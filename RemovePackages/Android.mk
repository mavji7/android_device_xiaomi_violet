LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Maps Drive PrebuiltGmail YouTube GoogleTTS SoundAmplifierPrebuilt GoogleCamera arcore talkback FilesPrebuilt RecorderPrebuilt FM2 PixelWallpapers2020 Tycho Ornament SafetyHubPrebuilt WallpapersBReel2020 PixelLiveWallpaperPrebuilt MicropaperPrebuilt arcore AmbientSensePrebuilt AppDirectedSMSService CarrierSetup ConnMO DCMO DMService MyVerizonServices OBDM_Permissions obdm_stub Showcase SprintDM SprintHM USCCDM VZWAPNLib VzwOmaTrigger 
LOCAL_UNINSTALLABLE_MODULE := true
>>>>>>> 94e63e50... violet: Removed more & more useless gapps packages
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)

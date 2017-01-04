LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

$(call import-add-path,$(LOCAL_PATH)/../../cocos2d)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/external)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/cocos)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/cocos/audio/include)

LOCAL_MODULE := MyGame_shared

LOCAL_MODULE_FILENAME := libMyGame

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AnimationBaseTest.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/CoreElement.cpp \
                   ../../Classes/HelloDragonBones.cpp \
                   ../../Classes/Knight.cpp \
                   ../../Classes/PerformanceTest.cpp \
                   ../../Classes/ReplaceSkin.cpp \
                   ../../Classes/dragonBones/animation/Animation.cpp \
                   ../../Classes/dragonBones/animation/AnimationState.cpp \
                   ../../Classes/dragonBones/animation/TimelineState.cpp \
                   ../../Classes/dragonBones/animation/WorldClock.cpp \
                   ../../Classes/dragonBones/armature/Armature.cpp \
                   ../../Classes/dragonBones/armature/Bone.cpp \
                   ../../Classes/dragonBones/armature/Slot.cpp \
                   ../../Classes/dragonBones/cocos2dx/CCArmatureDisplay.cpp \
                   ../../Classes/dragonBones/cocos2dx/CCFactory.cpp \
                   ../../Classes/dragonBones/cocos2dx/CCSlot.cpp \
                   ../../Classes/dragonBones/cocos2dx/CCTextureData.cpp \
                   ../../Classes/dragonBones/core/BaseObject.cpp \
                   ../../Classes/dragonBones/events/EventObject.cpp \
                   ../../Classes/dragonBones/factories/BaseFactory.cpp \
                   ../../Classes/dragonBones/model/AnimationData.cpp \
                   ../../Classes/dragonBones/model/ArmatureData.cpp \
                   ../../Classes/dragonBones/model/DragonBonesData.cpp \
                   ../../Classes/dragonBones/model/FrameData.cpp \
                   ../../Classes/dragonBones/model/TimelineData.cpp \
                   ../../Classes/dragonBones/parsers/DataParser.cpp \
                   ../../Classes/dragonBones/parsers/JSONDataParser.cpp \
                   ../../Classes/dragonBones/textures/TextureData.cpp


LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes

# _COCOS_HEADER_ANDROID_BEGIN
# _COCOS_HEADER_ANDROID_END


LOCAL_STATIC_LIBRARIES := cocos2dx_static

# _COCOS_LIB_ANDROID_BEGIN
# _COCOS_LIB_ANDROID_END

include $(BUILD_SHARED_LIBRARY)

$(call import-module,.)

# _COCOS_LIB_IMPORT_ANDROID_BEGIN
# _COCOS_LIB_IMPORT_ANDROID_END

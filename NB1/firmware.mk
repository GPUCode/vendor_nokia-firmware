LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),NB1)

RADIO_FILES := $(wildcard $(LOCAL_PATH)/radio/*)
$(foreach f, $(notdir $(RADIO_FILES)), \
    $(call add-radio-file,radio/$(f)))

FIRMWARE_IMAGES := \
    abl \
    bluetooth \
    cda \
    cmnlib \
    cmnlib64 \
    devcfg \
    dsp \
    hidden \
    hyp \
    keymaster \
    mdtp \
    mdtpsecapp \
    modem \
    nvdef \
    pmic \
    rpm \
    splash \
    systeminfo \
    tz \
    xbl

AB_OTA_PARTITIONS += $(FIRMWARE_IMAGES)

endif

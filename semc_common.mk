# Copyright 2018 outofmemory13@XDA | Xperia for AOSP 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Xperia (XZ) Bootanimation
PRODUCT_COPY_FILES += \
    vendor/semc/prebuilt/semc/media/bootanimation.zip:system/media/bootanimation.zip

# Xperia Keyboard
PRODUCT_COPY_FILES += \
    vendor/semc/prebuilt/semc/app/XperiaKeyboard/XperiaKeyboard.apk:system/app/XperiaKeyboard/XperiaKeyboard.apk \
    vendor/semc/prebuilt/semc/app/XperiaKeyboard/lib/arm/libswiftkeysdk-java.so:system/app/XperiaKeyboard/lib/arm/libswiftkeysdk-java.so

# Xperia Apps
PRODUCT_PACKAGES += \
    home-release \
    SemcExactCalculator \
    semc-organizer \
    clock-widgets-release \
    SemcContacts \
    SemcEmail \
    SemcCalendar \
    SemcMusic \
    SemcAlbum \
    XperiaWeather \
    SonyAudioRecorder \
    XperiaTips \
    gettoknowit \
    TrackID \
    XperiaTransferMobile \
    SemcLifelog \
    sound-picker-release \
    MyXperia-release \
    SomcSketch-live \
    PhotoWidget-release \
    SemcPhotoTable \
    photoslideshow-release \
    wallpaperpicker-release \
    SemcPhotoEditor \
    videoplaceholder \
    videotvsideview \
    SomcXperiaServices \
    GetMore-standard-release \
    InCallUI \
    SemcTelecom \
    SemcTeleService

# Xperia Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Xperia Wallpapers (XZ, XZ2)
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/semc/prebuilt/semc/etc/customization/content/com/sonyericsson/wallpaperpicker/wallpapers,system/etc/customization/content/com/sonyericsson/wallpaperpicker/wallpapers)

# Build prop
PRODUCT_PROPERTY_OVERRIDES += \
    qemu.hw.mainkeys=0 \
    ro.config.ringtone=Ringer.ogg \
    ro.config.notification_sound=Notification.ogg \
    ro.config.alarm_alert=Xperia_alarm.ogg

# Xperia (XZ2) Sounds //TODO: Remove unneeded files
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/semc/prebuilt/semc/media/audio,system/media/audio)

# Xperia Framework
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/semc/prebuilt/semc/etc/permissions,system/etc/permissions) \
    $(call find-copy-subdir-files,*,vendor/semc/prebuilt/semc/framework,system/framework)
    #$(call find-copy-subdir-files,*,vendor/semc/prebuilt/semc/lib,system/lib) 

# Fake Xperia Device
PRODUCT_PROPERTY_OVERRIDES += \
    ro.semc.product.model=F8331 \
    ro.semc.ms_type_id=PM-0980-BV \
    ro.semc.version.fs=GENERIC \
    ro.semc.product.name=Xperia XZ \
    ro.semc.product.device=F83 \
    ro.semc.version.fs_revision=39.0.A.1.250 \




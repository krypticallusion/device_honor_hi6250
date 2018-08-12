#
# Copyright (C) 2017 The aospOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
$(call inherit-product, $(LOCAL_PATH)/full_leland.mk)

# Inherit some common aosp stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk) 
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Boot animation 
TARGET_SCREEN_HEIGHT := 2160 
TARGET_SCREEN_WIDTH := 1080
PRODUCT_NAME := aosp_leland
PRODUCT_DEVICE := leland
PRODUCT_BRAND := Honor
PRODUCT_MODEL := Honor 9 Lite
PRODUCT_MANUFACTURER := Huawei

# Override device name
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=hi6250

#ANDROID_JACK_VM_ARGS := -Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4096m

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/aosp_excluded_hardware.xml:system/etc/permissions/aosp_excluded_hardware.xml


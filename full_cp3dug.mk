# Copyright 2016 The Android Open Source Project
# 
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/htc/cp3dug/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cp3dug
PRODUCT_NAME := cm_cp3dug
PRODUCT_BRAND := htc
PRODUCT_MODEL := X515e
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="htc/u0_open_eu/u0:4.1.2/cp3dug.20120418.144808:user/release-keys" \
PRIVATE_BUILD_DESC="u0_open_eu-user 4.1.2 cp3dug.20120418.144808 release-keys"

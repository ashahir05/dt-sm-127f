#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_a12s.mk \
    $(LOCAL_DIR)/twrp_a12s.mk

COMMON_LUNCH_CHOICES := \
    lineage_a12s-user \
    lineage_a12s-userdebug \
    lineage_a12s-eng \
    twrp_a12s-user \
    twrp_a12s-userdebug \
    twrp_a12s-eng

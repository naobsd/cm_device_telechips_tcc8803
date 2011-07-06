#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=tcc8803
MANUFACTURER=telechips

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

unzip -j -o ../../../${DEVICE}_update.zip boot.img
unpackbootimg -i boot.img
gunzip -c boot.img-ramdisk.gz | cpio -idmuv lib/modules/ehci-hcd.ko
gunzip -c boot.img-ramdisk.gz | cpio -idmuv lib/modules/ohci-hcd.ko
gunzip -c boot.img-ramdisk.gz | cpio -idmuv lib/modules/tcc_mtd.ko
gunzip -c boot.img-ramdisk.gz | cpio -idmuv lib/modules/tcc_nand.ko
gunzip -c boot.img-ramdisk.gz | cpio -idmuv lib/modules/ufsd.ko
mv boot.img-zImage kernel
mv lib/modules/* ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
echo BOARD_KERNEL_PAGESIZE := $((0x`cat boot.img-pagesize`)) > BoardConfig.pagesize.mk
rm -f -r boot.img* lib

unzip -j -o ../../../${DEVICE}_update.zip system/etc/asound.conf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/egl/libEGL_mali.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/egl/libGLESv1_CM_mali.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/egl/libGLESv2_mali.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/hw/acoustics.default.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/hw/alsa.default.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/hw/gralloc.tcc88xx.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/hw/lights.tcc88xx.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/hw/overlay.tcc88xx.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/hw/sensors.tcc88xx.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libMali.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libasound.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libaudio.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libaudiopolicy.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libpmap.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/modules/mali.ko -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/modules/ump.ko -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/modules/viqe.ko -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/keychars/m801_88-gpiokey.kcm.bin -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/keylayout/m801_88-gpiokey.kl -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/wifi/ar6000.ko -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/wifi/athwlan.bin.z77 -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/wifi/calData_ar6102_15dBm.bin -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/wifi/data.patch.hw2_0.bin -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/share/alsa/alsa.conf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/share/alsa/cards/aliases.conf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/share/alsa/pcm/center_lfe.conf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/share/alsa/pcm/default.conf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/share/alsa/pcm/dmix.conf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/share/alsa/pcm/dpl.conf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/share/alsa/pcm/dsnoop.conf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/share/alsa/pcm/front.conf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/share/alsa/pcm/iec958.conf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/share/alsa/pcm/modem.conf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/share/alsa/pcm/rear.conf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/share/alsa/pcm/side.conf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/share/alsa/pcm/surround40.conf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/share/alsa/pcm/surround41.conf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/share/alsa/pcm/surround50.conf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/share/alsa/pcm/surround51.conf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/share/alsa/pcm/surround71.conf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/device-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/__MANUFACTURER__/__DEVICE__/unzip-files.sh - DO NOT EDIT

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudio.so:obj/lib/libaudio.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudiopolicy.so:obj/lib/libaudiopolicy.so

# All the blobs necessary for tcc8803
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ehci-hcd.ko:root/lib/modules/ehci-hcd.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ohci-hcd.ko:root/lib/modules/ohci-hcd.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/tcc_mtd.ko:root/lib/modules/tcc_mtd.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/tcc_nand.ko:root/lib/modules/tcc_nand.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ufsd.ko:root/lib/modules/ufsd.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/asound.conf:system/etc/asound.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_mali.so:system/lib/egl/libEGL_mali.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/acoustics.default.so:system/lib/hw/acoustics.default.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/alsa.default.so:system/lib/hw/alsa.default.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gralloc.tcc88xx.so:system/lib/hw/gralloc.tcc88xx.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lights.tcc88xx.so:system/lib/hw/lights.tcc88xx.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/overlay.tcc88xx.so:system/lib/hw/overlay.tcc88xx.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sensors.tcc88xx.so:system/lib/hw/sensors.tcc88xx.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libMali.so:system/lib/libMali.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libasound.so:system/lib/libasound.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudio.so:system/lib/libaudio.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudiopolicy.so:system/lib/libaudiopolicy.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libpmap.so:system/lib/libpmap.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/mali.ko:system/lib/modules/mali.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ump.ko:system/lib/modules/ump.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/viqe.ko:system/lib/modules/viqe.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/m801_88-gpiokey.kcm.bin:system/usr/keychars/m801_88-gpiokey.kcm.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/m801_88-gpiokey.kl:system/usr/keylayout/m801_88-gpiokey.kl \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ar6000.ko:system/wifi/ar6000.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/calData_ar6102_15dBm.bin:system/wifi/calData_ar6102_15dBm.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/data.patch.hw2_0.bin:system/wifi/data.patch.hw2_0.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/alsa.conf:system/usr/share/alsa/alsa.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/aliases.conf:system/usr/share/alsa/cards/aliases.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/center_lfe.conf:system/usr/share/alsa/pcm/center_lfe.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/default.conf:system/usr/share/alsa/pcm/default.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/dmix.conf:system/usr/share/alsa/pcm/dmix.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/dpl.conf:system/usr/share/alsa/pcm/dpl.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/dsnoop.conf:system/usr/share/alsa/pcm/dsnoop.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/front.conf:system/usr/share/alsa/pcm/front.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/iec958.conf:system/usr/share/alsa/pcm/iec958.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modem.conf:system/usr/share/alsa/pcm/modem.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/rear.conf:system/usr/share/alsa/pcm/rear.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/side.conf:system/usr/share/alsa/pcm/side.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/surround40.conf:system/usr/share/alsa/pcm/surround40.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/surround41.conf:system/usr/share/alsa/pcm/surround41.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/surround50.conf:system/usr/share/alsa/pcm/surround50.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/surround51.conf:system/usr/share/alsa/pcm/surround51.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/surround71.conf:system/usr/share/alsa/pcm/surround71.conf
EOF

./setup-makefiles.sh
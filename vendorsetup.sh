#!/bin/bash

echo 'Starting Cloning repos for rhode'
echo 'Cloning Kernel tree [1/8]'

rm -rf kernel/motorola/sm6225
git clone https://github.com/Sm680-Development/kernel_motorola_sm6225 kernel/motorola/sm6225

echo 'Cloning Common Tree [2/8]'

rm -rf device/motorola/sm6225-common
git clone https://github.com/Sm680-Development/device_motorola_sm6225-common device/motorola/sm6225-common

echo 'Cloning Device Tree [3/8]'

rm -rf device/motorola/rhode
git clone https://github.com/ProjectElixir-Devices/device_motorola_rhode device/motorola/rhode

echo 'Cloning Vendor Trees [4/8]'

rm -rf vendor/motorola/sm6225-common
git clone https://github.com/Sm680-Development/vendor_motorola_sm6225-common vendor/motorola/sm6225-common
rm -rf vendor/motorola/rhode
git clone https://github.com/Sm680-Development/vendor_motorola_rhode vendor/motorola/rhode

echo 'Cloning Motorola´s common stuffs [5/8]'

rm -rf hardware/motorola
git clone https://github.com/LineageOS/android_hardware_motorola hardware/motorola
rm -rf system/qcom
git clone https://github.com/LineageOS/android_system_qcom system/qcom

echo 'Cloning Lineage Compat [6/8]'

rm -rf hardware/lineage/compat
git clone https://github.com/LineageOS/android_hardware_lineage_compat hardware/lineage/compat

echo 'Cloning Clang 17.0.2 [7/8]'

rm -rf prebuilts/clang/host/linux-x86/clang-r487747c
git clone https://gitlab.com/FPSensor/clang_r487747x prebuilts/clang/host/linux-x86/clang-r487747c --depth=1

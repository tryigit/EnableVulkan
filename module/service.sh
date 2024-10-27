#!/system/bin/sh

# Credit @tryigitx Android 14 > Check
if [[ $(getprop ro.build.version.sdk) -lt 34 ]]; then
    resetprop debug.hwui.renderer skiavk
fi

# Enable Vulkan
resetprop ro.hwui.use_vulkan true

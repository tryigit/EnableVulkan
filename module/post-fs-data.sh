# Credit @tryigitx Android 14 > Check
if [[ $(getprop ro.build.version.sdk) -lt 34 ]]; then
    resetprop debug.hwui.renderer skiavk
fi

# Vip Features -If you do not have a VIP driver, it may also cause instability during bootup.-
resetprop ro.hwui.use_vulkan true

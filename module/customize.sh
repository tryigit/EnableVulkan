# info
SOC=`getprop ro.soc.model`
MODVER=`grep_prop version $MODPATH/module.prop`
MODVERCODE=`grep_prop versionCode $MODPATH/module.prop`
ui_print " "
ui_print " - Rom Check..."
ROMV=`getprop ro.build.host`
if [ $ROMV != "xiaomi.eu" ]; then
echo " - Success 🧭"
else
echo " "
echo "❗ Very bad rom (risky)"
fi
echo " "
ui_print " - Android version check..."
[ $(getprop ro.system.build.version.sdk) -lt 29 ] && echo "! Unsupported android version detected, please upgrade." && abort
echo " - Success"
echo " "
# Vulkan 1.3 no need A730+ @tryigitx
VULKAN_MODEL=$(getprop ro.hardware.vulkan)
SOC=$(getprop ro.soc.model)
SOC_NUM=${SOC:2}
if [[ $SOC_NUM -gt 8440 ]] && [[ $VULKAN_MODEL == "adreno" ]]; then
    rm -rf $MODPATH/system/vendor/etc/
fi

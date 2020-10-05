#!/system/bin/sh
# This script is needed to automatically set device props.


load_op8pro()
{
	echo resetting
    resetprop "ro.product.model" "OnePlus 8 Pro"
    resetprop "ro.product.name" "OnePlus8Pro"
    resetprop "ro.build.product" "OnePlus8Pro"
    resetprop "ro.product.device" "OnePlus8Pro"
    resetprop "ro.vendor.product.device" "OnePlus8Pro"
    resetprop "ro.display.series" "OnePlus 8 Pro"
}

load_op8()
{
    resetprop "ro.product.model" "OnePlus 8"
    resetprop "ro.product.name" "OnePlus8"
    resetprop "ro.build.product" "OnePlus8"
    resetprop "ro.product.device" "OnePlus8"
    resetprop "ro.vendor.product.device" "OnePlus8"
    resetprop "ro.display.series" "OnePlus 8"
}

project=$(getprop ro.boot.project_name)
echo $project

case $project in
    "19811")
		echo loading
        load_op8pro
        ;;
    "19855")
        load_op8pro
        ;;
    "19867")
        load_op8pro
        ;;
    "19821")
        load_op8
        ;;
    *)
        load_op8pro
        ;;
esac

exit 0

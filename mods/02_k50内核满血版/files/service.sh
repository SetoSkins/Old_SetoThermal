#!/system/bin/sh
/system/bin/echo 0 >/sys/kernel/fpsgo/common/force_onoff
echo 0 > /sys/class/power_supply/battery/input_suspend
echo 1 > /sys/class/power_supply/battery/battery_charging_enabled
resetprop ctl.stop thermal-engine
resetprop ctl.stop thermal_manager
echo '0' > /sys/class/power_supply/battery/input_suspend
echo Good > /sys/class/power_supply/battery/health
chmod 777 /sys/class/power_supply/battery/constant_charge_current_max
chmod 777 /sys/class/power_supply/battery/step_charging_enabled
chmod 777 /sys/class/power_supply/battery/input_suspend
chmod 777 /sys/class/power_supply/battery/battery_charging_enabled
echo 0 > /sys/class/power_supply/battery/input_suspend
echo 12000000 > /sys/class/power_supply/battery/constant_charge_current_max
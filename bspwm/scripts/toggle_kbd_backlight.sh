device=sysfs/leds/tpacpi::kbd_backlight
current=`light -s $device -G`

if [[ "$current" == "100.00" ]]
then
	light -s $device -S 0
else
	light -s $device -S 100
fi

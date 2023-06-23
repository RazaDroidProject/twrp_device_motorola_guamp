#!/system/bin/sh

touch_class_path=/sys/class/touchscreen
touch_path=
firmware_path=/vendor/firmware
firmware_file=

# Fix up chipone
if [[ -d /sys/class/touchscreen/ICNL9911S ]]; then
        echo "chipone"
        chipone_fw_path=/vendor/firmware/ICNL9911.bin
        flash_path=/sys/chipone-tddi/cts_firmware

        sleep 2

        echo $chipone_fw_path > $flash_path/update_from_file
fi

exit 0

#!/bin/bash

echo "active" | tee /sys/devices/system/cpu/intel_pstate/status
echo "performance" | tee /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo "performance" | tee /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor



#power save for HDA intel audio
echo 0 > /sys/module/snd_hda_intel/parameters/power_save

exit

#echo 5 > /proc/sys/vm/laptop_mode #активирует laptop_mode 0 -5 (5 max power save)

# set limit for intel pstate driver
# echo "52" | tee /sys/devices/system/cpu/intel_pstate/max_perf_pct

# show cpu speed
# grep MHz /proc/cpuinfo

#echo '1500' > '/proc/sys/vm/dirty_writeback_centisecs'
#echo '0' > '/proc/sys/kernel/nmi_watchdog'
echo '1' > '/sys/module/snd_hda_intel/parameters/power_save'
echo 'min_power' > '/sys/class/scsi_host/host0/link_power_management_policy'
echo 'min_power' > '/sys/class/scsi_host/host1/link_power_management_policy'
echo 'auto' > '/sys/bus/i2c/devices/i2c-0/device/power/control'
echo 'auto' > '/sys/bus/i2c/devices/i2c-1/device/power/control'
echo 'auto' > '/sys/bus/i2c/devices/i2c-2/device/power/control'
echo 'auto' > '/sys/bus/i2c/devices/i2c-3/device/power/control'
echo 'auto' > '/sys/bus/i2c/devices/i2c-4/device/power/control'
echo 'auto' > '/sys/bus/i2c/devices/i2c-5/device/power/control'
echo 'auto' > '/sys/bus/usb/devices/1-4.1/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.3/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:1a.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:02.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:02:00.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:14.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:03:00.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:13.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:1b.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:00.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:03:00.2/power/control'


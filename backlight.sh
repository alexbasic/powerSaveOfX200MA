#!/bin/sh
echo $1 > /sys/class/backlight/intel_backlight/brightness

# default - 1173

# 391 = 5%
# 781 = 10%
# 4293 ~ 50%
# 7812 = 100%
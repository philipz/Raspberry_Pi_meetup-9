#!/bin/bash
docker run -ti --rm -v $(pwd):/mqtt -v /sys/class/thermal/thermal_zone0/temp:/sys/class/thermal/thermal_zone0/temp philipz/rpi-raspbian bash

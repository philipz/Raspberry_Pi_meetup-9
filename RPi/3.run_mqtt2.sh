#!/bin/bash
docker run -t --rm -v $(pwd):/mqtt -v /sys/class/thermal/thermal_zone0/temp:/sys/class/thermal/thermal_zone0/temp philipz/openlab-mqtt /mqtt/xively_mqtt

#!/bin/sh
gpuTemp=$(sudo /opt/vc/bin/vcgencmd measure_temp)
gpu1=$(echo ${gpuTemp##*=})
gpu=$(echo ${gpu1} | cut -c 1-4)
echo $gpu
#mosquitto_pub -t Pi/Temp/GPU -h m2m.tradingbot.com.tw -m "GPU,$gpu" -q 1 -u tradingbot -P 68180018

cpuTemp=$(cat /sys/class/thermal/thermal_zone0/temp)
cpu=$(echo $cpuTemp 1000 | awk '{printf("%.2f", ($1/$2))}')
echo $cpu
#mosquitto_pub -t Pi/Temp/CPU -h m2m.tradingbot.com.tw -m "CPU,$cpu" -q 1 -u tradingbot -P 68180018

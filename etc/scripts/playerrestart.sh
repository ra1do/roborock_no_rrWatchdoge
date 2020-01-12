#!/bin/bash

killall player ;
cd /run/shm

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/opt/rockrobo/rrlog:/opt/rockrobo/cleaner/bin:/opt/rockrobo/wlan:/opt/rockrobo/watchdog:/opt/rockrobo/miio:/opt/rockrobo/firmware

export PATH
UPDPKG_INFO_PATH=/mnt/data/.temp
WIFI_START_NAME=wifi_start.sh
RR_RESERVE=/mnt/reserve
RR_DEFAULT=/mnt/default
RR_ROOT=/opt/rockrobo
NAV_CONFIG_PATH=/opt/rockrobo/cleaner/conf
RR_UDATA=/mnt/data
NAV_DYNAMIC_CONFIG_PATH=/mnt/data/rockrobo
NAV_LOG_PATH=/mnt/data/rockrobo
export UPDPKG_INFO_PATH
export WIFI_START_NAME
export RR_RESERVE
export RR_DEFAULT
export RR_ROOT
export NAV_CONFIG_PATH
export RR_UDATA
export NAV_DYNAMIC_CONFIG_PATH
export NAV_LOG_PATH

WIFI_START_PATH=/opt/rockrobo/wlan
WIFI_CONF_PATH=/mnt/data/miio
WIFI_CONF_NAME=wifi.conf
WIFI_ENABLE_PATH=/mnt/data/wlan
WIFI_ENABLE_NAME=wifi_enable.conf

MIIO_RECV_LINE=miio_recv_line
MIIO_SEND_LINE=miio_send_line

UPDPKG_INFO_NAME=Update.pkg.inf

    ldconfig
	export WIFI_START_PATH
	export WIFI_CONF_PATH
	export WIFI_CONF_NAME
	export WIFI_ENABLE_PATH
	export WIFI_ENABLE_NAME
	export MIIO_RECV_LINE
	export MIIO_SEND_LINE
	export UPDPKG_INFO_NAME

sleep 4
killall player ;
sleep 4;
killall -9 player; 

    $RR_ROOT/scripts/pipes.sh


sleep 1
setsid player /opt/rockrobo/cleaner/conf/ruby_chassis.cfg >/dev/null 2>&1 &


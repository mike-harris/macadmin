#!/bin/sh

SSID="TC"
wservice=`/usr/sbin/networksetup -listallnetworkservices | grep -Ei '(Wi-Fi|AirPort)'`
device=`/usr/sbin/networksetup -listallhardwareports | awk "/$wservice/,/Ethernet Address/" | awk 'NR==2' | awk '{ print $2 }'`

networksetup -listpreferredwirelessnetworks "$device" | grep "$SSID" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "<result>YES</result>"
else
    echo "<result>NO</result>"
fi

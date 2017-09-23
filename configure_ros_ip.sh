ip=`ifconfig | grep wlp1s0 -A1 | grep "inet addr" | awk -F" " {'print $2'} | awk -F: {'print $2'}`
if [ -z "$ip" ]; then
    echo "No WLAN"
    echo "Looking for Ethernet"
    ip=`ifconfig | grep eth0 -A1 | grep "inet addr" | awk -F" " {'print $2'} | awk -F: {'print $2'}`
fi
echo "IP = ROS_IP = $ip"
export ROS_IP=$ip

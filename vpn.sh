#!/usr/bin/expect
# run "sudo apt-get install expect" to make sure expect is installed
# please note the '\r' is required at the end of send message for expect script to work properly
spawn ./openvpn.sh
expect "sudo"
send "raspberry\r"
expect "Username"
send "vpnbook\r"
expect "Password"
send "k8VBRa6\r"
interact

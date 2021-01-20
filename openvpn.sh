# initializes OpenVPN
# you have to input the vpnbook certificate bundle you want to use that was previously downloaded or this will not work
cd /home/pi/vpnbook
sudo openvpn --config vpnbook-us1-udp53.ovpn

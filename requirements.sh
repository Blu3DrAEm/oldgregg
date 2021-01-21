# Downloads dependencies, makes scripts executable, and moves resolv.conf file
sudo apt-get install -y openvpn
sudo apt-get install -y expect
sudo chmod +x openvpn.sh vpn.sh
wget https://www.vpnbook.com/free-openvpn-account/VPNBook.com-OpenVPN-US1.zip
unzip VPNBook.com-OpenVPN-US1.zip -d /home/pi/vpnbook
sudo mkdir /home/pi/resolvconfbackup
sudo cp /etc/resolv.conf /home/pi/resolvconfbackup
sudo rm /etc/resolv.conf
sudo cp resolv.conf /etc
sudo cp /home/pi/oldgregg/openvpn.sh /home/pi
sudo cp /home/pi/oldgregg/vpn.sh /home/pi

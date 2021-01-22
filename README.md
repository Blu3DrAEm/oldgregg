# I'm Old Gregg!
Comfortably use social media in an isolated environment on a Raspberry Pi, virtual machine, or computer of your choosing.

# Initial Setup:

1. Open a new terminal
2. git clone https://github.com/Blu3DrAEm/oldgregg.git
3. cd oldgregg/
4. sudo chmod +x requirements.sh
5. ./requirements.sh
6. cd
7. ./vpn
8. Wait until "Initialization Sequence Complete" message appears, leave the terminal window open, and surf your favorite social media sites using the built in web browser.

(You can choose whichever server certificate bundle you'd like from www.vpnbook.com but you will need to edit the 'openvpn.sh' script file to point to the correct certificate if you choose something else. After initial setup is complete you only have to enter './vpn' in a new terminal to start the service.)

# How to post to Instagram

1. Open www.instagram.com
2. Click browser settings
3. Scroll down to “More Tools” and click on “Developer Tools”
4. Click the “Toggle Device Toolbar” mobile button
5. Choose which mobile device you want on the drop down menu and refresh the page
6. Upload to Instagram by clicking the “+” button

# Enable VNC (optional)

1. Open terminal and enter "sudo raspi-config"
2. Select '3 Interface Options'
3. Select 'P3 VNC' and select <Yes> to enable
4. Hit 'tab' twice and select <Finish> 

# Verify OpenVPN and DNS server is working properly

To verify you're browsing in an isolated environment navigate to DuckDuckGo.com and search "what is my ip address", you will see your IP address shows up in a different location using OpenVPN. Next, navigate to www.dnsleakcheck.com and run the standard test. You will see your ISP is OpenDNS, which has been changed using our "/etc/resolv.conf" file.

# Please Note:
This guide assumes your raspberry pi is using the default username: 'pi', the default password: 'raspberry', and that you've renamed the vpnbook certificate bundle directory to '/home/pi/vpnbook/'. 
If you change the admin password and receive an error running "./vpn.sh", uncomment line 5 & 6 in 'vpn.sh' and replace 'raspberry\r' with 'yourpassword\r' (note: the '\r' must be included after your password for the expect script to work properly)
If you change the name or location of the 'vpnbook/' directory you will need to edit the 'openvpn.sh' script to include the correct path.

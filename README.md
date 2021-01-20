# I'm Old Gregg!
Comfortably use social media in an isolated environment on a Raspberry Pi, virtual machine, or computer of your choosing

# Quick Setup:

1. Download vpnbook openvpn server certificate bundle www.vpnbook.com, extract contents to /home/pi, rename folder 'vpnbook/'
2. git clone https://github.com/Blu3DrAEm/oldgregg.git
3. cd oldgregg/
4. sudo chmod +x requirements.sh
5. ./requirements.sh
6. cd
7. ./vpn
8. Wait until "Initialization Sequence Complete" message appears, leave terminal window open, and browse the web.

# Enable VNC (optional)

1. Open terminal and enter "sudo raspi-config"
2. Select '3 Interface Options'
3. Select 'P3 VNC' and select <Yes> to enable
4. Hit 'tab' twice and select <Finish> 

# Verify OpenVPN and DNS server is working properly

To verify you're browsing in an isolated environment navigate to DuckDuckGo.com and search "what is my ip address", you will see your IP address shows up in a different location using OpenVPN. Next, navigate to www.dnsleakcheck.com and run the standard test. You will see your ISP is OpenDNS, which has been changed using our "/etc/resolv.conf" file.

NOTE: This guide assumes your raspberry pi is using the default username: 'Pi' and default password: 'Raspberry'.
If you change your username, password, or path to the scripts you will need to edit the 'openvpn.sh' and 'vpn.sh' script with the correct information.

NOTE: Instagram does not allow you to post or interact with stickers from the web browser at all, even in developer mode, which is the recommended method on several websites. To get around this I am looking into setting up an account on hootsuite.com, which I believe will let me post to Instagram. However, I have not done this yet because I post so rarely. I’ll update this post when I know if it works.

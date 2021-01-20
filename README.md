# oldgregg
Comfortably use social media in an isolated environment on a Raspberry Pi, virtual machine, or computer of your choosing

# Setting up the Raspberry Pi:
1. Flash the micro-sd card with the latest version of Raspbian OS
2. Complete initial setup, enable VNC and SSH

# Configuring Raspberry Pi
3. Install dependencies:
-sudo apt-get install openvpn
-sudo apt-get install expect

4. Go to www.vpnbook.com, select 'OpenVPN' tab, download certificate bundle of your choosing
(Make note of the username and password below the certificate bundle downloads, you will need it later!)
Extract the contents of the certificate bundle you just downloaded and rename the folder to 'vpnbook/'

6. Change DNS server. Copy /etc/resolv.conf and then remove it. In a terminal enter "sudo nano /etc/resolv.conf" to create a new resolv.conf file
Enter the following lines:
nameserver 208.67.222.222
nameserver 208.67.220.220
search Home

Save and exit the file.

# Start OpenVPN
7. Open a terminal and navigate to the vpnbook/ directory
8. Enter "sudo openvpn --config <Enter your vpnbook certificate bundle>
(Ex: "sudo openvino --config vpnbook-us1-udp53.ovpn")
Hit enter and wait until you see "Initialization Sequence Complete" message
Leave this terminal window open while browsing
  
9. Open your favorite web browser and navigate to your favorite social media sites! :)

To verify you're browsing in an isolated environment navigate to DuckDuckGo.com and search "what is my ip address", you will see your IP address shows up in a different location using OpenVPN. Next, navigate to www.dnsleakcheck.com and run the standard test. You will see your ISP is OpenDNS, which has been changed using our "/etc/resolv.conf" file.

# Alternate Ending

If you downloaded the code from this git page you'll have two scripts:
"openvpn.sh"
"vpn.sh"

To start the OpenVPN service using these scripts you need to first ensure they are configured properly. Open "openvpn.sh" with your favorite text editor and make sure the path to your vpnbook/ directory is correct. You can change the vpnbook certificate bundle you're using in the "openvpn.sh" script. 

Save and exit. 

Next open the "vpn.sh" script and change the password on line 6
(by default the script uses the password "raspberry" but it is recommended you change this!)

If the vpnbook certificate bundle password is changed you will need to go to www.vpnbook.com, get the updated password from the "OpenVPN" tab, and enter it into the "vpn.sh" script on line 10.

Once these have been configured you can start the OpenVPN service by opening a terminal and entering "./vpn.sh"
When the "Initialization Sequence Complete" message appears you are ready to go!

I may end up making updates to this project or changing it in the future but since I have proof of concept I wanted to put it out there for others who may be trying to accomplish a similar goal.

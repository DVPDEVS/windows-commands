@echo off
color 0F

echo Network Command basics in Command Prompt (cmd) courtesy of @kaano_72 on Discord
echo:
echo        ipconfig                IP Address
echo        ipconfig /all           Full network details
echo        ipconfig /release       Release your current IP address
echo        ipconfig /renew         Get a new IP address
echo        ipconfig /flushdns      Clear the DNS cache
echo        ping google.com         Test a connection to Google
echo        ping 8.8.8.8 -t         Test continuously, also works with `-t -1`
echo        tracert google.com      Trace the route taken to reach Google
echo        pathping google.com     Ping, route, packet loss details
echo        nslookup google.com     Get the IP address of a domain
echo        nslookup 8.8.8.8        Get the Domain name of an IP address
echo        netstat -an             Show active connections and listening ports
echo        netstat -b              Show which programs opened which ports
echo        netstat -r              Show the routing table
echo        arp -a                  Show the ARP table, IP address to MAC address mappings
echo        getmac                  Get your device's MAC address
echo        telnet {host} {port}    Connect with Telnet if enabled

start /C /K cmd

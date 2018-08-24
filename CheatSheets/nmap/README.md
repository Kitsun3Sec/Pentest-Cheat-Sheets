# NMAP CHEAT SHEETS

Set the ip address as a varible
`export ip=192.168.1.100`
`export netw=192.168.1.0/24`

### Detecting Live Hosts
Only Ip's

`nmap -sn -n $netw | grep for | cut -d" " -f5`

### Stealth Scan

`nmap -sS $ip`

Only Open Ports and Banner Grab

`nmap -n -Pn -sS $ip --open -sV`

Stealth scan using FIN Scan 

`nmap -sF $ip`

### Agressive scan

Without Ping scan, no dns resolution, show only open ports all and test All TCP Ports

`nmap -n -Pn -sS -A $ip --open -p-`

Nmap verbose scan, runs syn stealth, T4 timing, OS and service version info, traceroute and scripts against services

`nmap –v –sS –A –T4 $ip`

### OS FigerPrint

`nmap -O $ip`

### Quick Scan

`nmap -T4 -F $netw`

### Quick Scan Plus

`nmap -sV -T4 -O -F --version-light $netw`

### output to a file

`nmap -oN nameFile -p 1-65535 -sV -sS -A -T4 $ip`

### output to a file Plus

`nmap -oA nameFile -p 1-65535 -sV -sS -A -T4 $netw`

### Search NMAP scripts

`ls /usr/share/nmap/scripts/ | grep ftp`

* [Nmap Discovery](https://nmap.org/nsedoc/categories/discovery.html)

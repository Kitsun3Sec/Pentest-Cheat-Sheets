# SNMP

### Fixing SNMP output

`apt-get install snmp-mibs-downloader download-mibs` 

`echo "" > /etc/snmp/snmp.conf`

### OneSixtyone

onesixtyone -c COMMUNITY -i Target_ip

`onesixtyone -c community.txt -i Found_ips.txt`

### snmpwalk

Walking MIB's

snmpwalk  -c COMMUNITY -v VERSION target_ip

`snmpwalk -c public -v1 192.168.25.77`

specific MIB node
snmpwalk -c community -v version Target IP MIB Node
Example: USER ACCOUNTS = 1.3.6.1.4.1.77.1.2.25

`snmpwalk -c public -v1 192.168..25.77 1.3.6.1.4.1.77.1.2.25`

### snmp-check

snmp-check -t target_IP | snmp-check -t TARGET -c COMMUNITY

`snmp-check -t 172.20.10.5`

`snmp-check -t 172.20.10.5 -c public`

### Automate the username enumeration process for SNMPv3

`apt-get install snmp snmp-mibs-downloader`

`wget https://raw.githubusercontent.com/raesene/TestingScripts/master/snmpv3enum.rb`

### NMAP SNMPv3 Enumeration 

`nmap -sV -p 161 --script=snmp-info 172.20.10.0/24`


### Default Credentials

/usr/share/metasploit-framework/data/wordlists/snmp_default_pass.txt





# NetBIOS Recon & Enumaration

## Using WINDOWS Tools

### nbtstat

#### How to see the status of a server

`nbtstat -a <Target_ip>`

`nbtstat -a 10.10.1.100`

#### Whats is available there

`net view Target_IP`

`net view 10.10.1.100`

#### Explore it

net use < A_drive > \\Target_IP\SHARE_NAME

`net use K: \\10.10.1.100\Dados`

### nat

nat < -o output file > < -u userlist.txt > < -p passlist.txt> < IP_Address/RANGE >

`nat -o netbios_output.txt -u usernames.txt -p rockyou.txt 10.10.1.100`

### winfo

#### NUll Session

`winfo < IP_Address > (-v verbose) (-n Null Session)`

#### Enumarate

`winfo < IP_Address> -u`

## Using UNIX Tools

### nbtscan

`nbtscan -r 172.16.1.0/24`

### smblcient

NUll Session

`smbclient -L //172.168.1.5 -N`

No Password but with User

`smbclient -L //172.168.1.5 -N -U Administrator`

`smbclient //172.168.1.5/path -N` 

`smbclient //172.168.1.5/path -U DOMAIN\\administrator`

### rpcclient

`rpcclient -U  "" -N 172.16.1.5`

`rpcclient -u "Administrator" -N 17.16.1.5` 

Commands
enumdomusers
netshareenum
netshareenumall
querydominfo
lookupname root
queryuser john

### Enum4linux

All info

`enum4linux -a 172.16.1.5`

With User and blank pass

`enum4linux -a -u administrator -p "" 172.16.1.5`

### NMAP NSE

### SMB OS Discovery

`nmap 172.20.10.5 --script smb-os-discovery`

`nmap -v --script=smb-enum-shares 172.166.1.5`

### show SMB scripts and

`ls /usr/share/nmap/scripts | grep smb `

#Taking Users to bruteforce

##smb

Using enum4linux
 
`./enum4linux.pl -U 192.168.1.113 | grep 'user:' | cut -d'[' -f2 | cut -d']' -f1 > Users`

Using nmap *smb-enum-users.nse*

`nmap 192.168.1.113 --script smb-enum-users.nse | grep "Full name:"`

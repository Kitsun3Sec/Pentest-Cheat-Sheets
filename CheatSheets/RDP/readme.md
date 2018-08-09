# Remote Desktop Protocol

## xfreerdp
### Simple User Enumeration for Windows Target (kerberos based)

xfreerdp /v:<target_ip> -sec-nla /u:""

`xfreerdp /v:192.168.0.32 -sec-nla /u:""`

## login

xfreerdp /u:<user> /g:<domain> /p:<pass> /v:<target_ip>

`xfreerdp /u:administrator /g:grandbussiness /p:bla /v:192.168.1.34`

### Wordlist based bruteforce

### NCRACK

ncrack -vv --user/-U <username/username_wordlist> --pass/-P <password/password_wordlist> <target_ip>:3389

`ncrack -vv --user user -P wordlist.txt 192.168.0.32:3389`

### Crowbar

crowbar -b rdp <-u/-U user/user_wordlist> -c/-C <password/password_wordlist> -s <target_ip>/32 -v

`crowbar -b rdp -u user -C password_wordlist -s 192.168.0.16/32 -v`


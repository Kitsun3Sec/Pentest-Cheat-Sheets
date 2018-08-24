# NFS - Network File System

### Nmap Show Mountable NFS Shares

`nmap -sV --script=nfs-showmount 192.168.1.110`

### Show nfs

showmount -e target_IP

`showmout -e 192.168.1.110`

### Mount directory

`mkdir /mnt/name_folder `

`mount -t nfs target_ip:/ /mnt/name_folder -o nolock`

### nfspy

`sudo nfspy -o server=Target_IP:/home/Path,nfsport=2049/tcp,rw /tmp/path_to_Mount`




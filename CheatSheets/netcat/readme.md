# Netcat

## Port Scanner

One port
`nc -vnz <IP> <PORT>`

`nc -nvz 192.168.1.23 80`

Port Range
`nc -vnz 192.168.1.23 0-1000`

## Send files

* Server

`nc -lvp 1234 > file`

* Client

`nc -vn <server_IP> <port> < File_to_send`

`nc -vn 192.168.1.33 1234 < file_to_send`

## Executing remote script

* Server

`nc -lvp 1234 -e ping.sh <IP>`

* Client

`nc -vn 192.168.1.33 1234` 


## Chat with encryption

* Server
`ncat -nlvp 8000 --ssl`

* Client
`ncat -nv 192.168.1.33 8000`

## Banner Grabbing

```
nc target port
HTTP_Verb path http/version
Host: url
```

```
nc www.bla.com.br 80
HEAD / HTTP/1.0
Host: www.bla.com.br
```

##### If this site uses https you need to use openssl

Example:

 `Openssl s_client -quiet www.bla.com.br:443`



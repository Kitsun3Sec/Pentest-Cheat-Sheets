# SMTP

### netcat

Enum Users

`nc -vn target 25`

`VRFY User_to_test`

`VRFY root`
answer = 252 2.0.0 root means That this user Exist here.

`VRFY bla`
answer = 550 5.1.1 means that bla doesn't exist here.

## Got users and Pass?

### Reading emails using Telnet

telnet Ip_target port

```
$telnet 172.20.10.2 110
USER username
PASS password

list

retr 1

```



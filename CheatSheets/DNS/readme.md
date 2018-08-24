# DNS Enumaration

## Nslookup

Resolve a given hostname to the corresponding IP.

`nslookup targetorganization.com`

## Reverse DNS lookup

`nslookup -type=PTR IP_address`

## MX(Mail Exchange) lookup 

`nslookup -type=MX domain`

## Zone Transfer

### Using nslookup Command

`nslookup`
`server domain.com`
`ls -d domain.com`

### Using HOST Command

host -t ns(Name Server) < domain >

`host -t ns domain.com`

after that test nameservers

host -l < domain >  < nameserver >

`host -l domain.com ns2.domain.com`

### Nmap Dns Enumaration

`nmap -F --dns-server <dns server ip> <target ip range>`

## Auto tools

### DNSenum

`dnsenum targetdomain.com`

`dnsenum --target_domain_subs.txt -v -f dns.txt -u a -r targetdomain.com`

### DNSmap

`dnsmap targetdomain.com`

`dnsmap targetdomain.com -w <Wordlst file.txt>`

Brute Force, the file is saved in /tmp

`dnsmap targetdomain.com -r`

### DNSRecon DNS Brute Force

`dnsrecon -d TARGET -D /usr/share/wordlists/dnsmap.txt -t std --xml ouput.xml`

### Fierce.pl

`fierce -dns targetdomain.com`

### HostMap

`hostmap.rb -only-passive -t <IP>`

We can use -with-zonetransfer or -bruteforce-level

### Online Tools

* https://dnsdumpster.com/
* https://network-tools.com/nslook/
* https://www.dnsqueries.com/en/
* https://mxtoolbox.com/
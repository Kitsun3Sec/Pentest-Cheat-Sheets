# Web Enumeration

## Dirb

Default wordlist

`dirb http://target_site.com`

Wordlist 

`dirb http://target_site.com /usr/share/wordlist/dirbuster/WORDLIST`

Extensions

`dirb http://target_site.com -X .php,.txt,.bak,.old`

## Gobuster

`gobuster -w /usr/share/wordlists/dirb/common.txt -u TARGET`

## Nikto

`nikto -h TARGET`

`nikto -useproxy http://PROXY:3128 -h TARGET`

## UNISCAN

`uniscan -qweds -u http://TARGET.com`


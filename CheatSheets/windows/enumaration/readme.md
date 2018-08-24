# Windows OS Enumaration

## System Information

`systeminfo`

`systeminfo | findstr /B /C:"OS Name" /C:"OS Version"`

## users

`net users`

## Info about a user

`net user USER`

Change USER PASSWORD

`net user USER NEW_PASSWORD`

add User

net users USER /add

## Adding a user into a group

`net group Administrators USER /add`

`net localgroup Administrators USER /add`

`net group "Remote Desktop User" USER /add`

## groups

`net groups`

`net localgroups`

## Whoami

`whoami`

`whoami /all`

## Network info

IP / Interfaces

`ipconfig /all`

Routes

`route print`

ARP table

`arp -A` 

## List process

`tasklist`

## Query current drives on system

`fsutil fsinfo drives`


## RDP

list users that can use RDP

`qwinsta`




@echo off

rem #---------------------------------------------------------------------------------#
rem # Name         = Windows Privilege Escalation Check v1.0                          #
rem # Reference    = http://www.fuzzysecurity.com/tutorials/16.html                   #
rem # Author       = @ihack4falafel                                                   #
rem # Date         = 9/18/2017                                                        #
rem # Tested On    = Windows XP SP3 - Professional                                    #
rem #                Windows 7 SP1  - Entrprise                                       #
rem #                Windows 10     - Professional                                    #
rem # Usage        = WinPrivCheck.bat                                                 #
rem # Requirements = accesschk.exe(old version) - sysinternals                        #
rem #---------------------------------------------------------------------------------#


@echo off
rem Used rem instead of echo for cleaner output.
@echo on

rem #----------#
rem # Hostname #
rem #----------#

@echo off

hostname

@echo on

rem #----------#
rem # Username #
rem #----------#

@echo off

echo %username% 2>NUL
whoami 2>NUL
echo %userprofile% 2>NUL

@echo on 

rem #-----------#
rem # OS Verion #
rem #-----------#

@echo off

systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type"

@echo on 

rem #--------------------#
rem # Installed Software #
rem #--------------------#

@echo off

wmic product get Name, Version

@echo on

rem #-----------------#
rem # Available Users #
rem #-----------------#

@echo off

net users

@echo on

rem #----------------#
rem # Network Config #
rem #----------------#

@echo off

ipconfig /all

@echo on 

rem #--------------#
rem # Route Config #
rem #--------------#

@echo off

route print

@echo on 

rem #-----------#
rem # ARP Cache #
rem #-----------#

@echo off

arp -a

@echo on 

rem #---------------------#
rem # Network Connections #
rem #---------------------#

@echo off

netstat -ano

@echo on 

rem #-------------------#
rem # Firewall Settings #
rem #-------------------#

@echo off

netsh firewall show state 
netsh firewall show config 

@echo on 

rem #------------------#
rem # Running Services #
rem #------------------#

@echo off

net start

@echo on 

rem #------------------------#
rem # Local PrivEsc Exploits #
rem #------------------------#

@echo off

rem Given this script is for all versions of Windows, I'd reference the results with the below matrix to avoid false postives.


rem #----------------------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem #    Exploits Index    | 2K      | XP    | 2K3   | 2K8     | Vista   | 7   |                           Title                       |
rem #----------------------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB2592799 | MS11-080 |    X    | SP3   | SP3   |    X    |    X    |  X  | afd.sys                  - Local privilege Escalation |
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB3143141 | MS16-032 |    X    |   X   |   X   | SP1/2   | SP2     | SP1 | Secondary Logon          - Local privilege Escalation |
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB2393802 | MS11-011 |    X    | SP2/3 | SP2   | SP2     | SP1/2   | SP0 | WmiTraceMessageVa        - Local privilege Escalation | 
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB982799  | MS10-059 |    X    |   X   |   X   | ALL     | ALL     | SP0 | Chimichurri              - Local privilege Escalation |
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB979683  | MS10-021 | SP4     | SP2/3 | SP2   | SP2     | SP0/1/2 | SP0 | Windows Kernel           - Local privilege Escalation |
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB2305420 | MS10-092 |    X    |   X   |   X   | SP0/1/2 | SP1/2   | SP0 | Task Scheduler           - Local privilege Escalation |
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB981957  | MS10-073 |    X    | SP2/3 | SP2   | SP2     | SP1/2   | SP0 | Keyboard Layout          - Local privilege Escalation | 
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB4013081 | MS17-017 |    X    |   X   |   X   | SP2     | SP2     | SP1 | Registry Hive Loading    - Local privilege Escalation | 
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB977165  | MS10-015 | ALL     | ALL   | ALL   | ALL     | ALL     | ALL | User Mode to Ring        - Local privilege Escalation |
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB941693  | MS08-025 | SP4     | SP2   | SP1/2 | SP0     | SP0/1   |  X  | win32k.sys               - Local privilege Escalation |
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB920958  | MS06-049 | SP4     |   X   |   X   |    X    |    X    |  X  | ZwQuerySysInfo           - Local privilege Escalation |
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB914389  | MS06-030 | ALL     | SP2   |   X   |    X    |    X    |  X  | Mrxsmb.sys               - Local privilege Escalation |
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB908523  | MS05-055 | SP4     |   X   |   X   |    X    |    X    |  X  | APC Data-Free            - Local privilege Escalation |
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB890859  | MS05-018 | SP3/4   | SP1/2 |   X   |    X    |    X    |  X  | CSRSS                    - Local privilege Escalation |
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB842526  | MS04-019 | SP2/3/4 |   X   |   X   |    X    |    X    |  X  | Utility Manager          - Local privilege Escalation |
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB835732  | MS04-011 | SP2/3/4 | SP0/1 |   X   |    X    |    X    |  X  | LSASS service BoF        - Remote Code Execution      | 
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB841872  | MS04-020 | SP4     |   X   |   X   |    X    |    X    |  X  | POSIX                    - Local Privilege Escalation |
rem #----------------------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB2975684 | MS14-040 |    X    |   X   | SP2   | SP2     | SP2     | SP1 | afd.sys Dangling Pointer - Local Privilege Escalation |
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB3136041 | MS16-016 |    X    |   X   |   X   | SP1/2   | SP2     | SP1 | WebDAV to Address        - Local Privilege Escalation |
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------# 
rem # KB3057191 | MS15-051 |    X    |   X   | SP2   | SP2     | SP2     | SP1 | win32k.sys               - Local Privilege Escalation |
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#
rem # KB2989935 | MS14-070 |    X    |   X   | SP2   |    X    |    X    |  X  | TCP/IP                   - Local Privilege Escalation |
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------# 
rem # KB2503665 | MS11-046 |    X    |  SP3  | SP2   |  SP1/2  |  SP1/2  | SP1 | 'afd.sys'                - Local Privilege Escalation |  
rem #-----------#----------#---------#-------#-------#---------#---------#-----#-------------------------------------------------------#

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB2592799" | find /i "KB2592799" 1>NUL
IF not errorlevel 1 (
    
  echo MS11-080 patch is installed :(

) ELSE (

  echo MS11-080 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB3143141" | find /i "KB3143141" 1>NUL
IF not errorlevel 1 (
    
  echo MS16-032 patch is installed :(

) ELSE (

  echo MS16-032 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB2393802" | find /i "KB2393802" 1>NUL
IF not errorlevel 1 (
    
  echo MS11-011 patch is installed :(

) ELSE (

  echo MS11-011 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB982799" | find /i "KB982799" 1>NUL
IF not errorlevel 1 (
    
  echo MS10-059 patch is installed :(

) ELSE (

  echo MS10-059 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB979683" | find /i "KB979683" 1>NUL
IF not errorlevel 1 (
    
  echo MS10-021 patch is installed :(

) ELSE (

  echo MS10-021 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB2305420" | find /i "KB2305420" 1>NUL
IF not errorlevel 1 (
    
  echo MS10-092 patch is installed :(

) ELSE (

  echo MS10-092 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB981957" | find /i "KB981957" 1>NUL
IF not errorlevel 1 (
    
  echo MS10-073 patch is installed :(

) ELSE (

  echo MS10-073 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB4013081" | find /i "KB4013081" 1>NUL
IF not errorlevel 1 (
    
  echo MS17-017 patch is installed :(

) ELSE (

  echo MS17-017 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB977165" | find /i "KB977165" 1>NUL
IF not errorlevel 1 (
    
  echo MS10-015 patch is installed :(

) ELSE (

  echo MS10-015 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB941693" | find /i "KB941693" 1>NUL
IF not errorlevel 1 (
    
  echo MS08-025 patch is installed :(

) ELSE (

  echo MS08-025 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB920958" | find /i "KB920958" 1>NUL
IF not errorlevel 1 (
    
  echo MS06-049 patch is installed :(

) ELSE (

  echo MS06-049 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB914389" | find /i "KB914389" 1>NUL
IF not errorlevel 1 (
    
  echo MS06-030 patch is installed :(

) ELSE (

  echo MS06-030 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB908523" | find /i "KB908523" 1>NUL
IF not errorlevel 1 (
    
  echo MS05-055 patch is installed :(

) ELSE (

  echo MS05-055 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB890859" | find /i "KB890859" 1>NUL
IF not errorlevel 1 (
    
  echo MS05-018 patch is installed :(

) ELSE (

  echo MS05-018 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB842526" | find /i "KB842526" 1>NUL
IF not errorlevel 1 (
    
  echo MS04-019 patch is installed :(

) ELSE (

  echo MS04-019 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB835732" | find /i "KB835732" 1>NUL
IF not errorlevel 1 (
    
  echo MS04-011 patch is installed :(

) ELSE (

  echo MS04-011 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB841872" | find /i "KB841872" 1>NUL
IF not errorlevel 1 (
    
  echo MS04-020 patch is installed :(

) ELSE (

  echo MS04-020 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB2975684" | find /i "KB2975684" 1>NUL
IF not errorlevel 1 (
    
  echo MS14-040 patch is installed :(

) ELSE (

  echo MS14-040 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB3136041" | find /i "KB3136041" 1>NUL
IF not errorlevel 1 (
    
  echo MS16-016 patch is installed :(

) ELSE (

  echo MS16-016 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB3057191" | find /i "KB3057191" 1>NUL
IF not errorlevel 1 (
    
  echo MS15-051 patch is installed :(

) ELSE (

  echo MS15-051 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB2989935" | find /i "KB2989935" 1>NUL
IF not errorlevel 1 (
    
  echo MS14-070 patch is installed :(

) ELSE (

  echo MS14-070 patch is NOT installed! 

)

wmic qfe get Caption,Description,HotFixID,InstalledOn | findstr /C:"KB2503665" | find /i "KB2503665" 1>NUL
IF not errorlevel 1 (
    
  echo MS11-046 patch is installed :(

) ELSE (

  echo MS11-046 patch is NOT installed! 

)

@echo on 

rem #-------------------------#
rem # File Transfer Utilities #
rem #-------------------------#

@echo off

cscript /?
powershell.exe /?
tftp /?

@echo on 

rem #-----------------------------#
rem # Clear-text/base64 Passwords #
rem #-----------------------------#

@echo off

type c:\sysprep.inf
type c:\sysprep\sysprep.xml
type %WINDIR%\Panther\Unattend\Unattended.xml
type %WINDIR%\Panther\Unattended.xml
dir /s *pass*
dir /s *cred*
dir /s *vnc*
dir /s *.config

@echo on 

rem #--------------#
rem # Backup Files #
rem #--------------#

@echo off

dir /s *backup*

@echo on 

rem #----------------------------------#
rem # *.MSI Install - SYSTEM privilege #
rem #----------------------------------#

@echo off

rem This will only work if both registry keys contain "AlwaysInstallElevated" with DWORD values of 1.
rem This setting will allow low privilege user to install any .MSI as system!

reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\Installer\AlwaysInstallElevated
reg query HKCU\SOFTWARE\Policies\Microsoft\Windows\Installer\AlwaysInstallElevated

@echo on 

rem #------------------------#
rem # Unquoted Service Paths #
rem #------------------------#

@echo off

wmic service get name,displayname,pathname,startmode |findstr /i "auto" |findstr /i /v "c:\windows\\" |findstr /i /v """

rem  All commands from this point onward will require accesschk.exe
rem  Make sure you have accesschk.exe(old version) in same directory when you run the script!

@echo on

rem #---------------------#
rem # Vulnerable Services #
rem #---------------------#

@echo off

rem  By default WinXP SP1 grant "Authenticated Users" SERVICE_ALL_ACCESS to "SSDPSRV" and "upnphost"!

accesschk.exe /accepteula -uwcqv "Authenticated Users" * 
accesschk.exe /accepteula -uwcqv "Power Users" *
accesschk.exe /accepteula -uwcqv "Users" *

@echo on 

rem #-------------------------------#
rem # Vulnerable Folder Permissions #
rem #-------------------------------#

@echo off

accesschk.exe /accepteula -uwdqs "Users" c:\
accesschk.exe /accepteula -uwdqs "Authenticated Users" c:\

@echo on 

rem #-----------------------------#
rem # Vulnerable File Permissions #
rem #-----------------------------#

@echo off

accesschk.exe /accepteula -uwqs "Users" c:\*.*
accesschk.exe /accepteula -uwqs "Authenticated Users" c:\*.*

@echo on 

rem #----------------#
rem # Happy Hunting! #
rem #----------------#

@echo off

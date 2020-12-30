# enum
My enum script for HTB/OSCP machines

## It does  
* Scan TCP/UDP services  
* Detect Windows/Linux machine through TTL value
* Enumerates FTP service
 * NMAP all FTP scripts
* Enumerates HTTP service
 * NMAP vuln script
 * DavTest
 * Nikto with CGI-BIN detection
 * WPScan (all scan)
 * FFUF (dir/file listing through bruteforce requests)
* Enumerates HTTPS service
 * NMAP vuln script
 * DavTest
 * Enumerate SSL/TLS Certificate
 * Nikto with CGI-BIN detection
 * WPScan (all scan)
 * FFUF (dir/file listing through bruteforce requests)
* Enumerates SMB service
 * NMAP all SMB scripts
 * SMBMap list SMB with differents credentials
 * enum4linux
 * nullinux
* Enumerates SNMP service
 * SNMPWalk
 * SNMP-Check
* Enumerates DNS sercice
 * NMAP all DNS scripts
 * DNS Zone Transfer with dig
 * All information with dig
* Enumerates SubDNS
 * DNSRecon
* Enumerates RPC service (111)
 * RPCInfo
 * ShowMount
* Enumerates MS-RPC service (135, 593)
 * RPCDump.py
* Enumerates LDAP service
 * Own LDAPInfo script
* Enumerates files
 * file command
 * binwalk
 * exiftool
 * steghide with empty passphrase
 
## Setup
Add the wd of the repo to your $PATH
```Shell
echo "export PATH=\$PATH:$(pwd)" >> ~/.bashrc
```
Add the path of the repo to the /etc/sudoers secure_path variable if needed

## Usage
```Shell
enum <ip>
```

## Output example on HTB/Bashed box
![1](/img/1.png)
![2](/img/2.png)
![3](/img/3.png)
![4](/img/4.png)

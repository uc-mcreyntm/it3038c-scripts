# Project3
## This script allows you to easliy monitor all of your servers required updates via ssh. This script is easily scaleable and only requires ssh access. This script will utilize an HTML web server to make this information remotely accessable

## Prerequisites:

### Awk
#### If you're running this script on Linux, awk should already be installed, but, assuming you are running this script from Windows you will need to download the program from [here](http://gnuwin32.sourceforge.net/downlinks/gawk.php)
#### After downloading, you will need to add awk to your PATH variable.
#### In order to do this, go to System Properties, then Advanced tab, then select "Environment Variables near the bottom"
[![env.png](https://i.postimg.cc/fbzSGfwS/env.png)](https://postimg.cc/hXYGxxQK)
#### Next, edit the Path for System variables and add the following "C:\Program Files (x86)\GnuWin32\bin"
[![path.png](https://i.postimg.cc/jqpvJ263/path.png)](https://postimg.cc/nM1qyHPq)
#### After this, confirm that everything is set up correctly by entering
```
awk --version
```
### Python
#### Install Python 3.10 from [here](https://www.python.org/downloads/)

### SSH keypairs
#### This script makes heavy use of remoting into other machines using ssh keypairs, so you will need to set up keypairs with every server you want to monitor
#### After setting up keypairs with the required machines, make sure to add all of the required information into the C:\Users\YOURUSERNAMEHERE\\.ssh\config file. Here is what mine looks like:
```
Host proxmox
Hostname 192.168.200.19
user root
IdentityFile /root/.ssh/proxmox

Host plex
Hostname 192.168.200.6
user root
IdentityFile /root/.ssh/plex
```

### Additionally, the output of this script is designed to be displayed as an HTML page, so setting up a webserver of any kind will be nesessary

## Modifying the Script for Your Needs
### At the top of the script, note the "servers", list variable:
```python
servers = ['proxmox', 'vpn', 'ubuntu', 'plex']
```
### You will add and change these values to match the "Host" value of your servers found in your config (C:\Users\YOURUSERNAMEHERE\\.ssh\config)

### Next, you will add paths to the "formatted" and "unformatted" variables near the top
```python
unformatted = "Z:/html/upgrades/indexunformat.html"
formatted = "Z:/html/upgrades/index.html"
```
### Note: The unformatted file is arbitrary, and does not need to have any specific name or location, but the formatted file should be "index.html" in a subdirectory that is inside of a webserver.


### Running the Script

#### The script can be ran by entering the following in a command line:
```powershell
python C:\path\to\file
```
#### Additionally, you can automate this script with Cron if you're on Linux, and the Task Scheduler if you're on Windows.

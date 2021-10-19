# Project 2

## This project was created to run on Ubuntu 20.04, but will likely work for other Unix operating systems

### Prerequisites:
#### This script makes heavy use of remoting into other machines using ssh keypairs, so you will need to set up keypairs with every server you want to monitor
##### After setting up keypairs with the required machines, make sure to add all of the required information into the ~/.ssh/config file. Here is what mine looks like:
```
Host proxmox
Hostname 192.168.1.19
user root
IdentityFile /root/.ssh/proxmox

Host plex
Hostname 192.168.1.6
user root
IdentityFile /root/.ssh/plex
```

##### Additionally, you should set up a webserver on the machine you are planning on running this script from. While this is not a requirement, the whole purpose of this script is to be able to monitor your VMs/Serversusing a simple/lightweight webpage.

##### Now, you will modify the script to match your needs. For example, look at line 18 of the script:
```bash
echo "CPU: $PROXMOXCPU% <br>" >> '/var/www/html/stats/index.html'
```
##### Change the path of the index file to the correct path for your application.

### Usage:
#### In order for this script to be of any use, you should install it into cron:
```bash
* * * * * /path/to/script
```
#### This will run the script every minute, but this can be adjusted to fit your needs

#### Once you have added all of the servers you want to monitor, head over to your webpage and look at the results!
[![project2.png](https://i.postimg.cc/4xnkbKSQ/project2.png)](https://postimg.cc/hXF5KGgX)

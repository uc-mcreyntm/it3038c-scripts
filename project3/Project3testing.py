import os
import re
from sys import stdout

DEVNULL = open(os.devnull)


#Here, I will list all of the servers that I want to update
servers = ['proxmox', 'vpn', 'ubuntu', 'plex']


for x in servers:
    update = os.popen('ssh {} apt-get update'.format(x))
    output = update.read()    
    print('Updating {}...'.format(x))

#Great, now I'm going to run an apt upgrade on these machines

for x in servers:
    update = os.popen('ssh {} apt list --upgradable'.format(x))
    upgrade = update.read()    
    print(upgrade + 'Testing')
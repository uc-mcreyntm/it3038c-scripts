import os
import re
from sys import stdout



#Here, I will list all of the servers that I want to update
servers = ['proxmox', 'vpn', 'ubuntu', 'plex']
upgradeList = []


for x in servers:
    update = os.popen('ssh {} apt-get update'.format(x))
    output = update.read()
    upgradeList.append(output)    
    print('Updating {}...'.format(x))

for z in range(len(upgradeList)):
    print(upgradeList[z])
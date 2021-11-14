import subprocess
import os
import sys

DEVNULL = open(os.devnull)
#Here, I will list all of the servers that I want to update
servers = ['proxmox', 'vpn', 'ubuntu', 'plex']

#Update all of the servers listed in the array "servers"
for x in servers:
 main = subprocess.Popen('ssh {} apt update'.format(x), shell=False, stdout=DEVNULL)

# After apt update is ran, it will allow the servers to see which packages need to be updated.

#Run apt list --upgradeable to find any applications that need to be upgraded

#for x in servers:
    #upgrade = subprocess.Popen("ssh {} apt list --upgradeable".format(x))

  #  output = upgrade.read()
  #  print(output)





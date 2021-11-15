import os
import re
from sys import stdout



#Here, I will list all of the servers that I want to update
servers = ['proxmox', 'vpn', 'ubuntu', 'plex']
upgradeList = []


for x in servers:
    update = os.popen('ssh {} apt-get update'.format(x))
    output = update.read()    
    print('Updating {}...'.format(x))

#Great, now I'm going to run an apt upgrade on these machines to find out the packages that need to be upgraded

for x in servers:
    update = os.popen('ssh {} apt list --upgradable'.format(x))
    upgrade = update.read()
    reupgrade = re.search('(?<=\n).*(?=\n)', upgrade)   
    upgradeList.append(x + " \n" + str(reupgrade) + " \n")
    #print(upgrade + 'Testing')
   
   

   #Create/Overwrite file so that it is empty
with open("C:/temp/write.txt", "w") as newfile:
    newfile.write("")

# Append data to file
with open("C:/temp/write.txt", "a") as writefile:
    writefile.writelines(upgradeList)

import os
from sys import stdout


#Here, I will list all of the servers that I want to have update information on
servers = ['proxmox', 'vpn', 'ubuntu', 'plex']
upgradeList = []


for x in servers:
    update = os.popen('ssh {} apt-get update'.format(x))
    output = update.read()    
    print('Updating {}...'.format(x))

#Great, now I'm going to run an apt upgrade on these machines to find out the packages that need to be upgraded

for x in servers:
    update = os.popen('ssh {} apt list --upgradable | awk NR!=1'.format(x))
    upgrade = update.read()
    
    if len(upgrade) > 0:
        upgradeList.append("<h1>" + x + ":" + "</h1>" + "<br> \n" + str(upgrade) + " \n <br>")
    else:
        upgradeList.append("<h1>" + x + ":" + "</h1>" + "<br> \n" + "No updates available" + " \n <br>")


   #Create/Overwrite file so that it is empty
with open("Z:/html/upgrades/indexunformat.html", "w") as newfile:
    newfile.write("")

# Append data to file
with open("Z:/html/upgrades/indexunformat.html", "a") as writefile:
    writefile.writelines(upgradeList)

#Put a new line after each application that needs upgraded for easier reading

with open("Z:/html/upgrades/indexunformat.html", "r") as input:
    with open("Z:/html/upgrades/index.html", "w") as output:
        for lines in input:
            lines = lines.rstrip('\n') + '<br>'
            print(lines, file=output)
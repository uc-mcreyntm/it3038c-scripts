import os
#Here, I will list all of the servers that I want to update
servers = ['proxmox', 'vpn', 'ubuntu', 'plex']


for x in servers:
    testing = os.popen('ssh {} hostname'.format(x))
    output = testing.read()    
    print(output)





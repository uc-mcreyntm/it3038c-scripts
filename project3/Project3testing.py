import os

testing = os.popen('ssh proxmox date')
output = testing.read()

print(output)
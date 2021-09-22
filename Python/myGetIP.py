import socket, sys


hostname = str(sys.argv[0])

ip = socket.gethostbyname(hostname)

print (hostname + 'has an IP of ' + ip)

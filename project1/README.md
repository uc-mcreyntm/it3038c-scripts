# Project 1

## This script is intended to backup your Ubiquiti router's config file onto a remote server
I wrote this script because I have had hardware failures with Ubuiquiti products in the past, and since my router configs are complicated, redoing everything is quite time consuming. 
In order to save space, I also designed this script to only backup the config file if any changes are detected, so there aren't hundreds of files to choose from if no changes are made.


### In order to run the program, you must have bash installed. You can validate this by running this in your terminal:

```bash
bash --version
```

### In order for scp to work completely autonomously, you will need to set up keypair authentication over ssh.

#### After setting up the keypair authentication, this is a good example config you can use to streamline your ssh authentication on your fileserver

```
Host router
Hostname 192.168.1.1
user admin
IdentityFile /root/.ssh/router
```
### Although this script can be ran manually, it is really meant to be ran on a schdeule using a program such as crontab
#### Here is what my cron file looks like:
```
30 5 * * * /bin/bash /home/tommy/RouterBackup.sh
```
This runs the script every day at 5:30 AM. This can be adjusted to fit your needs.

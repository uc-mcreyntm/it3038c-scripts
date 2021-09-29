if cmp -s /var/www/private/RouterConfigs/`ls /var/www/private/RouterConfigs -t | head -n1` <(ssh router 'cat /config/config.boot'); then
	
	:

else
	/usr/bin/scp router:/config/config.boot /var/www/private/RouterConfigs/config.boot.`date +\%A\%B\%d`
fi

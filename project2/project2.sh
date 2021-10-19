PROXMOXCPU=`cat <(ssh proxmox 'top -b -n 1' | awk 'FNR == 3 {print $2}')`;
PROXMOXHOST=`cat <(ssh proxmox 'hostname')`;
PROXMOXUPTIME=`cat <(ssh proxmox 'top -b -n 1' | awk 'FNR == 1 {print $5}')`;
PROXMOXHOURS=`cat <(ssh proxmox 'top -b -n 1' | awk 'FNR == 1 {print substr ($7,0,2)}')`;
PROXMOXMINUTES=`cat <(ssh proxmox 'top -b -n 1' | awk 'FNR == 1 {print substr ($7,4,2)}')`;
PROXMOXCACHE=`cat <(ssh proxmox 'top -b -n 1' | awk 'FNR == 4 {print $10}')`;
PROXMOXFREE=`cat <(ssh proxmox 'top -b -n 1' | awk 'FNR == 4 {print $6}')`;
PROXMOXTOTAL=`echo $PROXMOXFREE $PROXMOXCACHE | awk '{print $1 + $2}'`;
PROXMOXIP=`cat <(ssh proxmox ip a | grep inet | grep global | awk '{print $2}')`;




echo "Hostname: $PROXMOXHOST <br>" > '/var/www/html/stats/index.html'

echo "IP Address: $PROXMOXIP <br>" >> '/var/www/html/stats/index.html'
echo "CPU: $PROXMOXCPU% <br>" >> '/var/www/html/stats/index.html'
echo "Uptime: $PROXMOXUPTIME Days, $PROXMOXHOURS Hours, $PROXMOXMINUTES Minutes <br>" >> '/var/www/html/stats/index.html'
echo "Free RAM: $PROXMOXTOTAL MB <br>" >> '/var/www/html/stats/index.html'
echo "<br>" >> '/var/www/html/stats/index.html'
echo "<br>" >> '/var/www/html/stats/index.html'
echo "<br>" >> '/var/www/html/stats/index.html'


PLEXCPU=`cat <(ssh plex 'top -b -n 1' | awk 'FNR == 3 {print $2}')`;
PLEXHOST=`cat <(ssh plex 'hostname')`;
PLEXUPTIME=`cat <(ssh plex 'top -b -n 1' | awk 'FNR == 1 {print $5}')`;
PLEXHOURS=`cat <(ssh plex 'top -b -n 1' | awk 'FNR == 1 {print substr ($7,0,2)}')`;
PLEXMINUTES=`cat <(ssh plex 'top -b -n 1' | awk 'FNR == 1 {print substr ($7,4,2)}')`;
PLEXCACHE=`cat <(ssh plex 'top -b -n 1' | awk 'FNR == 4 {print $10}')`;
PLEXFREE=`cat <(ssh plex 'top -b -n 1' | awk 'FNR == 4 {print $6}')`;
PLEXTOTAL=`echo $PLEXFREE $PLEXCACHE | awk '{print $1 + $2}'`;
PLEXIP=`cat <(ssh plex ip a | grep inet | grep global | awk '{print $2}')`;


echo "Hostname: $PLEXHOST <br>" >> '/var/www/html/stats/index.html'

echo "IP Address: $PLEXIP <br>" >> '/var/www/html/stats/index.html'
echo "CPU: $PLEXCPU% <br>" >> '/var/www/html/stats/index.html'
echo "Uptime: $PLEXUPTIME Days, $PLEXHOURS Hours, $PLEXMINUTES Minutes <br>" >> '/var/www/html/stats/index.html'
echo "Free RAM: $PLEXTOTAL MB <br>" >> '/var/www/html/stats/index.html'
echo "<br>" >> '/var/www/html/stats/index.html'
echo "<br>" >> '/var/www/html/stats/index.html'
echo "<br>" >> '/var/www/html/stats/index.html'


SELFCPU=`top -b -n 1 | awk 'FNR == 3 {print $2}'`;
SELFHOST=`hostname`;
SELFUPTIME=`top -b -n 1 | awk 'FNR == 1 {print $5}'`;
SELFHOURS=`top -b -n 1 | awk 'FNR == 1 {print substr ($7,0,2)}'`;
SELFMINUTES=`top -b -n 1 | awk 'FNR == 1 {print substr ($7,4,2)}'`;
SELFCACHE=`top -b -n 1 | awk 'FNR == 4 {print $10}'`;
SELFFREE=`top -b -n 1 | awk 'FNR == 4 {print $6}'`;
SELFTOTAL=`echo $SELFFREE $SELFCACHE | awk '{print $1 + $2}'`;
SELFIP=`ip a | grep inet | grep global | awk '{print $2}'`;

echo "Hostname: $SELFHOST <br>" >> '/var/www/html/stats/index.html'

echo "IP Address: $SELFIP <br>" >> '/var/www/html/stats/index.html'
echo "CPU: $SELFCPU% <br>" >> '/var/www/html/stats/index.html'
echo "Uptime: $SELFUPTIME Days, $SELFHOURS Hours, $SELFMINUTES Minutes <br>" >> '/var/www/html/stats/index.html'
echo "Free RAM: $SELFTOTAL MB <br>" >> '/var/www/html/stats/index.html'

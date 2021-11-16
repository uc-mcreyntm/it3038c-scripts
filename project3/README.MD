# Project3
## This script allows you to easliy monitor all of your servers required updates via ssh. This script is easily scaleable and only requires ssh access. This script will utilize an HTML web server to make this information remotely accessable

## Prerequisites:

### Awk
#### If you're running this script on Linux, awk should already be installed, but, assuming you are running this script from Windows you will need to download the program from [here](http://gnuwin32.sourceforge.net/downlinks/gawk.php)
#### After downloading, you will need to add awk to your PATH variable.
#### In order to do this, go to System Properties, then Advanced tab, then select "Environment Variables near the bottom"
[![env.png](https://i.postimg.cc/fbzSGfwS/env.png)](https://postimg.cc/hXYGxxQK)
#### Next, edit the Path for System variables and add the following "C:\Program Files (x86)\GnuWin32\bin"
[![path.png](https://i.postimg.cc/jqpvJ263/path.png)](https://postimg.cc/nM1qyHPq)
#### After this, confirm that everything is set up correctly by entering
```
awk --version
```
### Python
#### Install Python 3.10 from [here](https://www.python.org/downloads/)

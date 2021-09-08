function getIP {

(Get-NetIPAddress).IPv4Address | Select-String "192*"


}
function getHostname {

hostname

}
function getVersion {

$HOST.Version.Major

}

function getDate {

get-date -Format D

}

$HOSTVERSION = getVersion
$DATE = getDate

$IP = getIP
$hostname = getHostname


function createBody {

"This machine's IP is $IP. User is $env:USERNAME. The Hostname is $hostname. Powershell version $HOSTVERSION. Today's Date is $DATE"

}

$Body = createBody

Write-Output($Body)

$Body | Out-File C:\it3038c-scripts\powershell\machineinfo.txt
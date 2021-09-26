#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

echo "Syncing with /var/www/cgi-bin/5world/device"
cp -r ./ /var/www/cgi-bin/5world/device/
echo "Done"

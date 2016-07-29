#!/bin/bash 

set -x

bakdir='/media/backup/z0.home'
bakver=`date +%s`

if [ ! -e ${bakdir} ]; then mkdir ${bakdir}; fi

tar -cvf ${bakdir}/efi.${bakver}.tar /boot/efi

DAYOFWEEK=`date +%a`
echo $DAYOFWEEK

# /dev/sda2
dump -0uf ${bakdir}/bak.${bakver}.dump /boot

exit

case $DAYOFWEEK in 
  Sun) echo "set increment" ;;
  Mon) echo "set increment" ;;
  Tue) echo "set increment" ;;
  Wed) echo "set increment" ;;
  Thu) echo "set increment" ;;
  Fri) echo "set increment" ;;
  Sat) echo "Rest!" ;;
  *  ) echo "That can't be right.";;
esac

#!/bin/bash 

set -x

bakdir='/media/backup/z0.home'
bakver=`date +%s`

if [ ! -e ${bakdir} ]; then mkdir ${bakdir}; fi

tar -cvf ${bakdir}/efi.${bakver}.tar /boot/efi

DAYOFWEEK=`date +%a`
echo $DAYOFWEEK

# /dev/sda2
for I in sda3 sda4 sda14 sda2 
do
  mount -o remount,ro /dev/${I}
  dump -0uf ${bakdir}/${I}.${bakver}.dump /dev/${I}
  mount -o remount,rw /dev/${I}
done


exit;

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

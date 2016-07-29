#!/bin/bash 

set -x

bakdir='/media/backup/z0.home'
bakver=`date +%s`

if [ ! -e ${bakdir} ]; then mkdir ${bakdir}; fi

tar -cvf ${bakdir}/efi.${bakver}.tar /boot/efi

DAYOFWEEK=`date +%a`
echo $DAYOFWEEK

# /dev/sda2
dump -0uf ${bakdir}/root.${bakver}.dump / 
dump -0uf ${bakdir}/boot.${bakver}.dump /boot 
dump -0uf ${bakdir}/tmp.${bakver}.dump  /tmp

exit;

/dev/sda14 on /tmp type ext4 (rw)
/dev/sda2 on /boot type ext4 (rw)
/dev/sda3 on / type ext4 (rw)
/dev/sda4 on /var type ext4 (rw)
/dev/sda2 on /boot type ext4 (rw)
/dev/sda3 on / type ext4 (rw)
/dev/sda4 on /var type ext4 (rw)
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

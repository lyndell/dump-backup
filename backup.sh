#!/bin/bash 

set -x

bakdir='/media/backup/z0.home'
bakver=`date +%s`

if [ ! -e ${bakdir} ]; then mkdir ${bakdir}; fi

tar -cvf ${bakdir}/efi.${bakver}.tar /boot/efi


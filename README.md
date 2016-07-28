
# Partitions

```
[lyndell@z0 ~]$ 
[lyndell@z0 ~]$ mount | grep /dev/sd | sort
/dev/sda14 on /tmp type ext4 (rw)
/dev/sda1 on /boot/efi type vfat (rw,umask=0077,shortname=winnt)
/dev/sda2 on /boot type ext4 (rw)
/dev/sda3 on / type ext4 (rw)
/dev/sda4 on /var type ext4 (rw)
/dev/sda7 on /media type xfs (rw)
/dev/sdb1 on /backup type xfs (rw)
[lyndell@z0 ~]$ 
[lyndell@z0 ~]$ 
```

# Method

## tar 

/dev/sda1 on /boot/efi type vfat (rw,umask=0077,shortname=winnt)

## dump

/dev/sda2 on /boot type ext4 (rw)
/dev/sda3 on / type ext4 (rw)
/dev/sda4 on /var type ext4 (rw)

## xfsdump

/dev/sda7 on /media type xfs (rw)
/dev/sdb1 on /backup type xfs (rw)


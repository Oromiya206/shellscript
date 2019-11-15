#!/bin/bash
#This script creats a report of our disk configuration

FLUFFY_BUNNY=`hostname`
echo "Disk report saved to $FLUFFY_BUNNY.report"

echo -e "\n LVM Configuration: \n\n" >>$FLUFFY_BUNNY.report
lvscan >>$FLUFFY_BUNNY.report

echo -e "\n\n Partiton Configuration: \n\n" >>$FLUFFY_BUNNY.report
fdisk -l | head -17 >>$FLUFFY_BUNNY.report

echo -e "\n\n Mounted Filesystems: \n\n" >>$FLUFFY_BUNNY.report
df -hT | grep -v tmp >>$FLUFFY_BUNNY.report
echo -e "\n\n RAID Configuration: \n\n" >>$FLUFFY_BUNNY.report
mdadm --detail /dev/md0 >>$FLUFFY_BUNNY.report

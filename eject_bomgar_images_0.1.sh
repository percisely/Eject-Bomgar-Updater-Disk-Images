#!/bin/bash
######
######
###### script to eject all Bomgar disk images
#
#
#
for i in cat `diskutil list | grep -e bomgar-scc | awk '{print $6}'`
do hdiutil detach $i
done
#
exit 0
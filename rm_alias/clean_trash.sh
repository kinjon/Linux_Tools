#!/bin/sh
echo "------------------------start---------------------------"
echo "This work is clean my trash"
echo "TIME: `date`"
trashdir=/home/bruce/trash
cd ${trashdir}
find ./ -maxdepth 1 -mtime +1 -exec 'rm' -rf {} \;
echo "-------------------------end----------------------------"

#!/bin/bash

echo "********** This script is made to take daily backup daily backup of /etc dir *****"

sleep 2

tar -zcf /local/srcdir/etcbkp"$(date)".tar.gz /etc  &>/dev/null

echo " ******* backup done ******** sucessfully*****************"

echo " **** Now syncing with remote server ******"

sleep 2

rsync -a /local/srcdir/ 10.0.0.101:/remote/dstdir/

echo " ******** Backup and Syncing both completed sucessfully *************"

exit 

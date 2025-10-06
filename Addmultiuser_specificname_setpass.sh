#! /bin/bash

echo "************* this script adds multiples users and set password on system ************"

sleep 2

for i in `cat /newuserlist`

do

useradd $i

echo "x" | passwd --stdin $i

done

echo "**************below is list of users add to our system *****************"

sleep 2

tail -10 /etc/passwd

exit

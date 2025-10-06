#! /bin/bash

echo "************* this script adds multiples users and set password on system ************"

sleep 2

for i in {1..10}

do

useradd user$i

echo "x" | passwd --stdin user$i

done

echo "**************below is list of 10 users add to our system *****************"

sleep 2

tail -10 /etc/passwd

exit

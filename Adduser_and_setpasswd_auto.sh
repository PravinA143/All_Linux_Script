#! /bin/bash

echo "************* this script add user and set password ************"

sleep 2

useradd dinesh 

echo "x" | passwd --stdin dinesh

echo "**************below user was added on your system *****************"

tail -1 /etc/passwd

exit

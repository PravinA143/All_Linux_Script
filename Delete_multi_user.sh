#! /bin/bash

echo "************* this script delete multiples users on system ************"

sleep 2

for i in {1..10}

do

userdel -r user$i

done

echo "************** deleted user not showing below *****************"

sleep 2

tail -10 /etc/passwd

exit

#! /bin/bash

echo "************* this script delete multiples users on system ************"

sleep 2

for i in `cat /userentry`

do

userdel -r $i

done

echo "************** deleted user not showing below *****************"

sleep 2

cat /userentry

exit

#! /bin/bash

echo "************* this script adds multiples users and set password on system ************"

sleep 2

rm -rf /userentry

for i in `cat /newuserlist`

do 

if 

grep $i /etc/passwd &>/dev/null

then

echo "******** $i user already exist so no adding him *******"

else

useradd $i

echo "x" | passwd --stdin $i &>/dev/null 

echo "*********** user $i add successful ***********"

echo "$i" &>>/userentry

fi 

done

echo "**************below is list of users add to our system *****************"

sleep 2

cat /newuserlist

exit

#! /bin/bash 

echo "***** this scripts welcomes by name and then tell the age **************"

sleep 2

echo "************* type your name below *************"

read name

echo "**************** hi $name welcome to linux class ***************"

echo "*********** type birth your example 1991 or 2020 *************"

read age

AGE=$((2025-$age))

echo "***************** $name age is $AGE **************"

exit


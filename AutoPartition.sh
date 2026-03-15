#!/bin/bash

DISK="/dev/nvme0n1"
SIZE=100   # size of each partition in MB
START=1

# Create GPT label
parted -s $DISK mklabel gpt

for i in $(seq 1 129)
do
    END=$((START + SIZE))
    
    parted -s $DISK mkpart primary ${START}MB ${END}MB
    
    START=$END
done

echo "128 GPT partitions created on $DISK"

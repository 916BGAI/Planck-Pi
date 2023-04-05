#!/bin/sh

sudo fdisk $1 <<EOF

d
1
d
2
d
3
d
4

n
p
1

+1M
n
p
2

+128M
n
p
3


w
p
q
EOF

sudo mkfs.vfat $1'1'
sudo mkfs.ext4 $1'2'
sudo mkfs.ext4 $1'3'


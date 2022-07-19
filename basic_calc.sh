#!/bin/bash -u
PATH=/bin:/usr/bin ; export PATH
umask 022                     

echo "$1+$2=$(($1+$2))"
echo "$1-$2=$(($1-$2))"
echo "$1*$2=$(($1*$2))"
echo "$1/$2=$(($1/$2))"

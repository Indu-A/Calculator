#!/bin/bash -u
PATH=/bin:/usr/bin ; export PATH
umask 022                     

if [ "$#" != "3" ]; then
        echo 1>&2 "$0: Error: expected three arguments, found $# ($*)"
        exit 1
else
        if [ "$2" == "/" ] && [ "$3" == "0" ]; then
                echo 1>&2 "$0: Error: attempt to divide by zero"
                exit 1
        else
                if [ "$2" != "/" ] && [ "$2" != "+" ] && [ "$2" != "*" ] && [ "$2" != "-" ]; then
                        echo 1>&2 "$0: Error: operand($2) not valid"
                        exit 1
                fi
        fi
fi
varOne=$1
varTwo=$3
operand=$2
if [ "$2" == "+" ];then
        varSum=$((varOne+varTwo))
        echo "$1+$3=$varSum"
else
        if [ "$2" ==  "*" ];then
                varMul=$((varOne*varTwo))
                echo "$1*$3=$varMul"
        else
                if [ "$2" == "/" ];then
                        varDiv=$((varOne/varTwo))
                        echo "$1/$3=$varDiv"
                else
                        if [ "$2" == "-" ];then
                                varSub=$((varOne-varTwo))
                                echo "$1-$3=$varSub"
                        fi
                fi
        fi
fi

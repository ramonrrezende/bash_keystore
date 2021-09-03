#! /bin/bash
filter=$1
if ! [[ -z $filter ]]
then
    for pass in $(cat passwords.txt | grep $filter);do
        echo $pass | cut -d '#' -f 2
    done
else
    cat passwords.txt | cut -d '#' -f 2
fi

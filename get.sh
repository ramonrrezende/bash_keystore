#! /bin/bash

for pass in $(cat passwords.txt);do
    if [[ $(echo $pass | cut -d '#' -f 2) == $1 ]]
    then
        read -s -p "Enter master password: " master_pass
        echo ""
	    echo "$(echo $pass | cut -d '#' -f 1 | base64 -d -w 0 | openssl enc -d -aes-256-cbc -pbkdf2 -k $master_pass 2>/dev/null)" | xclip -sel clip;
    fi
done
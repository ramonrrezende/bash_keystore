#! /bin/bash

read -s -p "Enter master password: " master_pass
echo ""
for pass in $(cat passwords.txt);do
	echo "$(echo $pass | cut -d '#' -f 2): $(echo $pass | cut -d '#' -f 1 | base64 -d -w 0 | openssl enc -d -aes-256-cbc -pbkdf2 -k $master_pass 2>/dev/null)";
done

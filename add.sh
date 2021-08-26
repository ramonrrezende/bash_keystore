#! /bin/bash

read -s -p "Enter the password: " pass
echo ""
read -p "Enter the identifier: " identf
echo ""
enc_pass=$(echo $pass | openssl enc -aes-256-cbc -pbkdf2 | base64 -w 0)

echo "$enc_pass#$identf" >> passwords.txt

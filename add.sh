#! /bin/bash

read -s -p "digite a senha: " pass
echo ""
read -p "digite o identificador: " identf
echo ""
enc_pass=$(echo $pass | openssl enc -aes-256-cbc -pbkdf2 | base64 -w 0)

echo "$enc_pass#$identf" >> passwords.txt

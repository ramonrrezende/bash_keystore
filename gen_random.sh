#! /bin/bash


echo $(dd if=/dev/urandom bs=1 count=32 2>/dev/null | base64)
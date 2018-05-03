#!/usr/bin/env bash

private_key=$1
text=$2

#if [[ $# -lt 2 ]] ; then
#  echo "Usage: sign <file> <private_key>"
#  exit 1
#fi

openssl rsautl -sign -inkey private_key.pem -in text.txt > data8.enc
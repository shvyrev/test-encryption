#!/usr/bin/env bash

#filename=$1
#signature=$2
#publickey=$3
#
#if [[ $# -lt 3 ]] ; then
#  echo "Usage: verify <file> <signature> <public_key>"
#  exit 1
#fi

openssl rsautl -verify -inkey pubkey.pem -pubin -in data8.enc -out data8.enc.dec
md5 text.txt data8.enc.dec
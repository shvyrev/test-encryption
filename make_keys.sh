#!/usr/bin/env bash

#Генерация приватного ключа:
openssl genrsa -out private_key.pem 4096
#Конвертация приватного ключа в der:
openssl pkcs8 -topk8 -inform PEM -outform DER -in private_key.pem -out private_key.der -nocrypt
#Генерация публичного ключа:
openssl rsa -in private_key.pem -pubout -out pubkey.pem
#Конвертация публичного ключа в der:
openssl rsa -pubin -inform PEM -in pubkey.pem -outform DER -out pubkey.der

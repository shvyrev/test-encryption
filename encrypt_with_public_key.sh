#!/usr/bin/env bash

echo -n $1 | openssl rsautl -encrypt -pubin -inkey pubkey.pem | base64 >&2
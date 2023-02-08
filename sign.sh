#!/bin/bash

openssl dgst -sign $KEY -sha256 -keyform PEM -out $1.sig -binary $1


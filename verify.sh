#!/bin/bash

openssl dgst -verify public.pem -keyform PEM -sha256 -signature $1.sig -binary $1

echo $?

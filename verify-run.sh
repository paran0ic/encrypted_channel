#!/bin/bash

date >>$1.log
openssl dgst -verify public.pem -keyform PEM -sha256 -signature $1.sig -binary $1
if [ $? -eq 0 ] ; then
	/bin/bash -x $1 >> $1.log 2>&1
else
	echo "bad signature" >> $1.log
fi

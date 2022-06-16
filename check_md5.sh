#!/bin/bash
online_md5="$(curl -sL http://51.250.45.201:9889 | md5sum | cut -d ' ' -f 1)"
klocal_md5="$(md5sum index.html | cut -d ' ' -f 1)"
if [ "$online_md5" = "$local_md5" ]; then
    echo "Ok"
else
	exit 1;
fi

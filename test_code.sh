#!/bin/bash
/usr/bin/curl -I http://51.250.45.201:9889 2>/dev/null | head -n 1 | cut -d$' ' -f2

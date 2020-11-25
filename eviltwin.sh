#!/bin/sh
curl $1/$2 -o payload
chmod +x payload
./payload&
tail -f /dev/null
addgroup -S -g 3000 testgroup && adduser -S -D testuser --uid 100  -G testgroup
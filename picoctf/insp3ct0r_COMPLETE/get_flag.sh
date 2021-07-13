#!/usr/bin/zsh
host="http://jupiter.challenges.picoctf.org:41511"

flag1=$(curl $host | grep flag | cut -d : -f2 | cut -d " " -f2)
flag2=$(curl "$host/mycss.css" | grep flag | cut -d : -f2 | cut -d " " -f2)
flag3=$(curl "$host/myjs.js" | grep flag | cut -d : -f2 | cut -d " " -f2)
echo "$flag1$flag2$flag3"

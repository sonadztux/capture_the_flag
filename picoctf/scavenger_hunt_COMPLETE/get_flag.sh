#!/usr/bin/zsh
host="http://mercury.picoctf.net:39491/"

flag1=$(curl -s $host | grep flag | cut -d : -f2 | cut -d " " -f2)
flag2=$(curl -s $host/mycss.css | grep flag | cut -d : -f2 | cut -d " " -f2)

# at first I predicted that the 3rd part of the flag
# was in myjs.js but there was only a comment
# /* How can I keep Google from indexing my website? */
# so I google it and get the 3rd flag in /robots.txt
# but it was not the last part of the flag
flag3=$(curl -s $host/robots.txt | grep Part | cut -d : -f2 | cut -d " " -f2)

# I decide to use dirsearch to search all of the 
# available public url on target host
# install: pip3 install dirsearch
# documentation: https://github.com/maurosoria/dirsearch

# and I got:
# /.DS_Store
# /.htaccess
# /.htaccess/
# /index.html
# /robots.txt
flag4=$(curl -s $host/.htaccess | grep Part | cut -d : -f2 | cut -d " " -f2)
flag5=$(curl -s $host/.DS_Store | grep Part | cut -d : -f2 | cut -d " " -f2)

echo $flag1$flag2$flag3$flag4$flag5
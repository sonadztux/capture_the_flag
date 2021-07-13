#!/usr/bin/zsh
# launch the instance first
# connect to it using ssh with given port
# then exec the command below in ssh session

cat *.flag.txt /*.flag.txt ~/*.flag.txt | tr -d '\n'

#!/usr/bin/zsh
i=1
while
do
	check=$(curl -s -b name=$i http://mercury.picoctf.net:27177/check | grep pico)
	echo "set cookie name=$i"
	if [[ ! -z "$check" ]]; then
		echo $check
		echo ${${check#*<code>}%</code>*}
		break
	fi
	((i++))
done


# ./get_flag.sh | tail -n 1 > flag.txt

#!/usr/bin/zsh
while
do
	mv *.jpg a.png
	binwalk -eq a.png
	cd _a.png.extracted/
	if [ ! -d "base_images/" ]; then
		cat flag.txt
		break
	fi
	cd base_images/
done
#!/bin/sh

if [ "$USER" != "root" ];
then
	echo "Run me as root!"
	exit 1
fi

while test $# != 0
do
	case "$1" in 
		-c) commitf=true ;;
		-v) verbosef=true ;;
	esac
	shift
done



rm -Rf /etc/nixos/*

for file in ./*;
do
	[ "$file" = "$0" ] && continue
	[ "$(basename "$file")" = "LICENSE" ] && continue

	cp -r "$file" /etc/nixos/"$(basename "$file")"
	[ "$verbosef" ] && echo "Moving $file ..."
done



[ "$verbosef" ] && git diff
nixos-rebuild switch --flake /etc/nixos#default

if [ $? -eq 1 ];
then
	echo "Build failed..."
	exit 1
fi


if [ "$commitf" ];
then
	sudo -u "$SUDO_USER" git add ./* && \
      	sudo -u "$SUDO_USER" git commit -m "$(date +"%D %T")"
fi


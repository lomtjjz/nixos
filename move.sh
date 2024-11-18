#!/bin/sh

if [ "$USER" != "root" ];
then
	echo "Run me as root!"
	exit 1
fi

rm -Rf /etc/nixos/*

for file in ./*;
do
	[[ "$file" == "$0" ]] && continue
	[[ "$(basename "$file")" == "LICENSE" ]] && continue

	cp -r "$file" /etc/nixos/"$(basename "$file")"
	echo "Moving $file ..."
done

[[ $@ == *'v'* ]] && git diff
nixos-rebuild switch --flake /etc/nixos#default

if [ $? -eq 1 ];
then
	"Build failed..."
	exit 1
fi


if [[ "$@" == *"c"* ]];
then
	sudo -u "$SUDO_USER" git add ./* && \
      	sudo -u "$SUDO_USER" git commit -m "$(date +"%D %T")"
fi


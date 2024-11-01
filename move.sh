#!/bin/sh

rm -Rf /etc/nixos/*

for file in ./*;
do
	[[ "$file" == "$0" ]] && continue
	[[ "$(basename "$file")" == "LICENSE" ]] && continue

	[[ -e /etc/nixos/"$(basename "$file")" ]] && diff -u /etc/nixos/"$(basename "$file")" "$file"
	cp -r "$file" /etc/nixos/"$(basename "$file")"
	echo "Moving $file ..."
done

nixos-rebuild switch --flake /etc/nixos#default #&& \
	sudo -u "$SUDO_USER" git add ./* && \
      	sudo -u "$SUDO_USER" git commit -m "$(date +"%D %T")"


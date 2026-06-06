#!/usr/bin/bash

if [ ! -d "$HOME/Pictures" ]; then
	mkdir "$HOME/Pictures"
fi

if [ ! -d "$HOME/Pictures/.wall_cache" ]; then
	mkdir "$HOME/Pictures/.wall_cache"
fi

file_num=$((RANDOM % 6))
url_path="https://raw.githubusercontent.com/dawn-boy/anime-walls/refs/heads/master/$file_num.png"
file_path="$HOME/Pictures/.wall_cache/wall.png"

curl "$url_path" -o "$file_path"

"$HOME/.config/quickshell/ii/scripts/colors/switchwall.sh" --image "$file_path"

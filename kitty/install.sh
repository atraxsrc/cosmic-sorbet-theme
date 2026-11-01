#!/usr/bin/env bash
# Installs the Sorbet kitty colour scheme into ~/.config/kitty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/kitty/themes
mkdir -p "$dest"
[ -f "$dest/Sorbet.conf" ] && cp "$dest/Sorbet.conf" "$dest/Sorbet.conf.bak"
cp "$dir/Sorbet.conf" "$dest/"
echo "Done. Add to ~/.config/kitty/kitty.conf:  include themes/Sorbet.conf"
echo "then reload kitty (Ctrl+Shift+F5)."

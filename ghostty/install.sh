#!/usr/bin/env bash
# Installs the Sorbet Ghostty theme into ~/.config/ghostty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/ghostty/themes
mkdir -p "$dest"
[ -f "$dest/Sorbet" ] && cp "$dest/Sorbet" "$dest/Sorbet.bak"
cp "$dir/Sorbet" "$dest/"
echo "Done. Add to ~/.config/ghostty/config:  theme = Sorbet"
echo "(or  theme = dark:Sorbet,light:SorbetDay  to follow COSMIC's toggle), then reload: Ctrl+Shift+,"

#!/usr/bin/env bash
# Installs the Sorbet Alacritty colour scheme into ~/.config/alacritty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/alacritty/themes
mkdir -p "$dest"
[ -f "$dest/sorbet.toml" ] && cp "$dest/sorbet.toml" "$dest/sorbet.toml.bak"
cp "$dir/sorbet.toml" "$dest/"
echo "Done. Add to ~/.config/alacritty/alacritty.toml:"
echo '  [general]'
echo '  import = ["~/.config/alacritty/themes/sorbet.toml"]'

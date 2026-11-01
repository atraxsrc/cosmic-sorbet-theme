#!/usr/bin/env bash
# Installs the Sorbet Helix theme into ~/.config/helix/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/helix/themes
mkdir -p "$dest"
[ -f "$dest/sorbet.toml" ] && cp "$dest/sorbet.toml" "$dest/sorbet.toml.bak"
cp "$dir/sorbet.toml" "$dest/"
echo 'Done. Add to ~/.config/helix/config.toml:  theme = "sorbet"'

#!/usr/bin/env bash
# Installs the Sorbet WezTerm colour module into ~/.config/wezterm/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/wezterm
mkdir -p "$dest"
[ -f "$dest/sorbet.lua" ] && cp "$dest/sorbet.lua" "$dest/sorbet.lua.bak"
cp "$dir/sorbet.lua" "$dest/"
echo 'Done. Add to ~/.config/wezterm/wezterm.lua:  config.colors = require("sorbet")'

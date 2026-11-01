#!/usr/bin/env bash
# Installs the Sorbet lazygit colours beside your own config.yml
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/lazygit
mkdir -p "$dest"
[ -f "$dest/sorbet.yml" ] && cp "$dest/sorbet.yml" "$dest/sorbet.yml.bak"
cp "$dir/sorbet.yml" "$dest/"
echo "Done. zsh/sorbet.zsh points LG_CONFIG_FILE at config.yml plus sorbet.yml; without it:"
echo "  export LG_CONFIG_FILE=\"\$HOME/.config/lazygit/config.yml,\$HOME/.config/lazygit/sorbet.yml\""

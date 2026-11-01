#!/usr/bin/env bash
# Installs the Sorbet delta config into ~/.config/delta/. It does not edit
# ~/.gitconfig: add the [include] it prints.
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/delta
mkdir -p "$dest"
[ -f "$dest/sorbet.gitconfig" ] && cp "$dest/sorbet.gitconfig" "$dest/sorbet.gitconfig.bak"
cp "$dir/sorbet.gitconfig" "$dest/"
if [ -f ~/.gitconfig ] && grep -qF "delta/sorbet.gitconfig" ~/.gitconfig; then
    echo "Done. ~/.gitconfig already includes it."
else
    echo "Done. Add to ~/.gitconfig:"
    echo "  [include]"
    echo "      path = ~/.config/delta/sorbet.gitconfig"
fi
echo "Needs the bat Sorbet theme for the code colours: ./bat/install.sh"

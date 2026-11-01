# Sorbet zsh layer: colours, aliases, prompt.
#
# Source it at the END of your own ~/.zshrc, after oh-my-zsh.sh:
#   source /path/to/cosmic-sorbet-theme/zsh/sorbet.zsh
#
# Keep machine-specific or private lines (PATH, scaling, nvm, ...) in your
# own ~/.zshrc, not here.
#
#  bg:      #05080A   fg:      #FFF6FF
#  mint:    #B2FFF3   peach:   #FFC79B
#  rose:    #FF9FBC   lime:    #BAF7B5
#  lemon:   #FFF6C3   lavender: #DFBAFF
#  muted:   #8A8D97   dim:     #5E616C
#
# Dark terminal: mint for commands, lime for strings, lemon for links,
# rose only for what is wrong.

# ── File colours (ls, lsd file names, completion menu) ─────────────────────────

export LS_COLORS="di=1;38;2;223;186;255:ln=3;38;2;255;246;195:ex=1;38;2;178;255;243:*.zip=4;38;2;255;199;155:*.tar=4;38;2;255;199;155:*.gz=4;38;2;255;199;155:*.xz=4;38;2;255;199;155:*.7z=4;38;2;255;199;155:*.deb=4;38;2;255;199;155:*.png=38;2;138;141;151:*.jpg=38;2;138;141;151:*.jpeg=38;2;138;141;151:*.webp=38;2;138;141;151:*.gif=38;2;138;141;151:*.mp4=3;38;2;138;141;151:*.mkv=3;38;2;138;141;151:*.rs=38;2;186;247;181:*.py=38;2;186;247;181:*.js=38;2;186;247;181:*.ts=38;2;186;247;181:*.sh=38;2;186;247;181:*.md=38;2;169;172;182:*.txt=38;2;169;172;182:or=9;38;2;255;159;188"

# oh-my-zsh reads LS_COLORS before this file loads, so refresh the menu colours
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# ── zsh-autosuggestions / zsh-syntax-highlighting ──────────────────────────────

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#719194'

typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=#B2FFF3'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#B2FFF3'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#B2FFF3'
ZSH_HIGHLIGHT_STYLES[function]='fg=#B2FFF3'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#B2FFF3'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#B2FFF3,underline'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#BAF7B5,underline'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#DFBAFF,bold'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#FF9FBC,bold,underline'
ZSH_HIGHLIGHT_STYLES[path]='fg=#A9ACB6,underline'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#FFC79B'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#FFC79B'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#8A8D97'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#8A8D97'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#BAF7B5'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#BAF7B5'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#BAF7B5'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#8A8D97'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#8A8D97'
ZSH_HIGHLIGHT_STYLES[comment]='fg=#5E616C'

# ── Aliases (only when the tool is installed) ──────────────────────────────────

if (( $+commands[lsd] )); then
    alias ls='lsd'
    alias la='lsd -a'
    alias ll='lsd -l'
    alias lla='lsd -la'
fi

# Debian/Ubuntu ship bat as batcat
if (( $+commands[batcat] )); then
    alias cat='batcat'
elif (( $+commands[bat] )); then
    alias cat='bat'
fi

(( $+commands[cosmic-edit] )) && alias edit='cosmic-edit'

# lazygit reads one config file; stack the rice colours (lazygit/sorbet.yml,
# installed by ./lazygit/install.sh) on top of your own config.yml
if (( $+commands[lazygit] )); then
    _sorbet_lg="${XDG_CONFIG_HOME:-$HOME/.config}/lazygit"
    if [[ -f $_sorbet_lg/sorbet.yml ]]; then
        export LG_CONFIG_FILE="$_sorbet_lg/sorbet.yml"
        [[ -f $_sorbet_lg/config.yml ]] && LG_CONFIG_FILE="$_sorbet_lg/config.yml,$LG_CONFIG_FILE"
    fi
    unset _sorbet_lg
fi

if (( $+commands[nvim] )); then
    alias vi='nvim'
    alias vim='nvim'
    alias v='nvim'
fi

# ── Prompt ─────────────────────────────────────────────────────────────────────

# needs ZSH_THEME="" in ~/.zshrc
(( $+commands[starship] )) && eval "$(starship init zsh)"

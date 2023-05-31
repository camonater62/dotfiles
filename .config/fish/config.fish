if status is-interactive
    source ~/.aliases
    zoxide init fish | source
    export DEBUGINFOD_URLS="https://debuginfod.archlinux.org"
end


# pyenv init - | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# eval /opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
# export TERMINFO=/usr/share/terminfo
# export EMSDK_QUIET=1
# source ~/Apps/emsdk/emsdk_env.fish
# clear

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/camo/.ghcup/bin $PATH # ghcup-env
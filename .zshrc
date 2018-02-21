# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then

    # specify plugins here
    zgen oh-my-zsh
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/history-substring-search
    zgen oh-my-zsh plugins/colored-man-pages
    zgen load chriskempson/base16-shell
    zgen load ~/.misc/omega-minimal.zsh-theme
    # generate the init script from plugins above
    zgen save
fi

export LANG=en_US.UTF-8
export LC_MESSAGES="C"
export LC_ALL=en_US.UTF-8

eval "$(dircolors ~/.dircolors)"

alias optirun="vblank_mode=0 PRIMUS_SYNC=1 optirun"
alias mpd="systemctl --user start mopidy.service"
alias mpdstop="systemctl --user stop mopidy.service"

#alias tmux="TERM=xterm-256color tmux"

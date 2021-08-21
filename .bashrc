alias ll='exa -l --color=auto'
alias la='exa -a --color=auto'
alias lal='exa -all --color=auto'
alias vi=nvim
alias vim=nvim
alias vimdiff='nvim -d'
alias dirs='dirs -v '
alias Ls='exa --color=auto'
alias ls='exa --color=auto'
alias sl='exa --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias pdf=atril
alias files=nemo
alias iwd='sudo systemctl restart iwd'
alias cast='catt cast'
alias gcc='gcc -g -Wall -Werror -Wextra '
alias norm='norminette -R CheckForbiddenSourceHeader'
alias vimconfig='nvim ~/.config/nvim/init.vim'
alias sudo='doas'

set -o vi

export EDITOR=nvim
export VISUAL=nvim

man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}


if [ -f ~/.dir_colors ]; then
    eval `dircolors ~/.dir_colors`
fi


if [ "$TERM" = "linux" ]; then
    _SEDCMD='s/.*\*color\([0-9]\{1,\}\).*#\([0-9a-fA-F]\{6\}\).*/\1 \2/p'
    for i in $(sed -n "$_SEDCMD" $HOME/.Xresources | awk '$1 < 16 {printf "\\e]P%X%s", $1, $2}'); do
        echo -en "$i"
    done
    clear
fi



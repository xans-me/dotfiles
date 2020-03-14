export GOROOT=/usr/local/go
export GOPATH=$HOME/Sites/Golang
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export GOPRIVATE="<REPOSITORY_PRIVATE>"
#
# ~/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

[ -z "$PS1" ] && return
if [[ ${EUID} == 0 ]] ; then
PS1='\[\e[01;31m\]\h\[\e[01;34m\] \W \$\[\e[00m\] '
else
PROMPT_COMMAND='__git_ps1 "\[\e[01;32m\]\u@\h\[\e[01;34m\] \W\[\e[00m\]" " \\\$ "'
fi


export EDITOR=nvim
export HISTSIZE=100000
export HISTFILESIZE=1000000
HISTCONTROL=ignoreboth:erasedups:ignorespace
shopt -s histappend
PROMPT_COMMAND="history -a; history -c; history -r;$PROMPT_COMMAND"
# aliases
alias la='/usr/local/bin/gls --color -lah --group-directories-first'
alias ls="ls -G";
alias cat="pygmentize -f terminal256 -g -P style=monokai";
alias dmesg="dmesg --color=always | less";
alias sudo="sudo -i";
alias vdir="vdir --color=auto";
alias grep="grep --color=auto";
alias fgrep="fgrep --color=auto";
alias egrep="egrep --color=auto";
alias mv="mv -i";
alias rm="rm -i";
alias cp="cp -i";
alias exit="clear ; exit";
alias ping="ping -c3";

alias pingg='ping google.com' # Ping the biggest search engine

alias mkdir='mkdir -p'
alias cdgo='cd $GOPATH/src/github.com/teukumulya-ichsan/'

# Files and directories
alias lsd='ls -l | grep "^d"' # List directory only
alias lsf='ls -l | grep "^-"' # List files only
alias lsh='ls -ld .??*'       # List hidden files only
alias lsah='ls -lAh'          # List all files with human readable size format
alias lst='ls -tl'            # List & order by last modified


# less colors
export LESSOPEN='|pygmentize -f terminal256 -g -P style=monokai %s'
export LESS='-R'
# man pages in colores
man() {
    LESS_TERMCAP_md=
\e[01;31m' \
    LESS_TERMCAP_me=
\e[0m' \
    LESS_TERMCAP_se=
\e[0m' \
    LESS_TERMCAP_so=
\e[01;44;33m' \
    LESS_TERMCAP_ue=
\e[0m' \
    LESS_TERMCAP_us=
\e[01;32m' \
    command man "$@"
}
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8



# import input rc for bash history
export INPUTRC=~/.inputrc



# git completion
source ~/.git-completion.bash
# git prompth
source ~/.git-prompt.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

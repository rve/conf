# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cloud"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github cp archlinux terminator python ruby)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#
# autojump config
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

export EDITOR=vim
export rvm_ignore_gemrc_issues=1
export LC_ALL="zh_CN.UTF-8"
export LANG="zh_CN.UTF-8"
alias sps="sudo pacman -S"
alias p="sudo pacman"
alias y="yaourt"
alias sudo='nocorrect sudo'
s(){
    if [[ $# == 0 ]]; then
        sudo $(history -p '!!')
    else
        sudo "$@"
    fi
}
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias tm='ps -ef | grep'
alias lsd='ls -Gal | grep ^d' #Only list directories, including hidden ones
alias l.='ls -d .* --color=auto'
alias c='clear'
alias p='pacman'
alias v='vim'
alias gpom="git push origin master"
alias gp="git pull"
alias mynetstat='netstat -ntulpa'
alias spu='sudo pacman -Syu'
alias myip="ifconfig | awk 'NR==2{print \$2}'"
alias rm='trash-put'
alias http="myip;python2 -m SimpleHTTPServer"
alias python="python2"
alias rake="bundle exec rake"
alias z="j"
alias b="bochs -q"
alias s="scrot -s"
alias diff="colordiff"
alias t='python ~/tasks/t.py --task-dir ~/tasks --list tasks'
alias ec="emacsclient -c &"
alias e=emacsclient -t
alias ec=emacsclient -c &
alias vim=emacsclient -t


setxkbmap -option ctrl:nocaps


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

fortune | cowsay


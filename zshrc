# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="random"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin
export NODE_PATH=/usr/local/lib/jsctags/:$NODE_PATH
alias v="open -a MacVim"
hash -d workspace="/Users/lufei/workspace"
hash -d trunk="/Users/lufei/workspace/trunk/"

# Customize to your needs...
alias ..="cd .."
alias la="ls -la"
alias ll="ls -l"
alias ~="cd ~"
alias wordspace="cd ~/workspace/"
alias trunk="cd ~/workspace/trunk/"
alias mcd="mvn clean deploy"
alias grep="grep --color=auto"
alias fuckgfw='ssh -qTfnN -D 7070 lufei@shaoshuai.me'

#mysql
alias mysql='/usr/local/mysql/bin/mysql'
alias mysqladmin='/usr/local/mysql/bin/mysqladmin'

#svn
alias uu="svn up";
alias cc="svn ci --message='test'"
alias st="svn st"
alias oo="open ./"
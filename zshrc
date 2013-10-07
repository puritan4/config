# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sbl"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode zsh-syntax-highlighting yum tumx)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export LYNX_CFG=~/lynx.cfg
export GRAILS_HOME=/home/sleslie/dev/grails-2.3.0
export GROOVY_HOME=/opt/groovy-2.0.5
export JAVA_HOME=/opt/ibm/java-i386-60
export IWD_WORKSPACE_DIR=~/src/scaws_3.1.0.5
export ZERO_HOME=${IWD_WORKSPACE_DIR}/build/cache/zerocli
export PATH=$HOME/.rbenv/bin:$JAVA_HOME/jre/bin:$GROOVY_HOME/bin:/home/sleslie/dev/cloud_cli/lib:/home/sleslie/dev/apache-maven-3.0.5/bin:/home/sleslie/dev:$ZERO_HOME:/home/sleslie/bin:/usr/lib/lightdm/lightdm:/usr/local/lib:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/sleslie/dev/play-2.1.3/:$GRAILS_HOME/bin:

eval "$(rbenv init -)"

# load up z for easy cli movement
/home/sleslie/dev/z/z.sh

alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"
alias lt="ls -lart"

# make ack better by default
alias ack="ack --follow --nobinary"

# I've been using vim too long to unlearn some things
alias :e="vim"
alias :q="exit"

# easy access to common dirs
alias Docs="cd /home/sleslie/Documents"
alias Down="cd /home/sleslie/Downloads"

# easy access to code and projects
alias src="cd /home/sleslie/src; ls"
alias s32="cd /home/sleslie/src/scaws; ls"
alias s35="cd /home/sleslie/src/scaws_3.1.0.5; ls"
alias hve="cd ~/src/hve_images; ls"
alias logs="cd ~/src/logs; ls"
alias ilogs="cd ~/src/logs/drouter/ramdisk2/mnt/raid-volume/raid0/logs/trace; ls"
alias icon="cd /home/sleslie/src/icon; ls"
alias blue="cd /home/sleslie/src/bluemix; ls"
alias bv2="cd /home/sleslie/src/bluemixV2; ls"

# make it easier to work with git.  All these match the values in ~/.vim/vimrc
alias gs="git status"
alias gd="git d"
alias gci="git commit -m "
alias gca="git commit -a -m "
alias gb="git blame"
alias gl="git log --pretty='format:%Cgreen%h%Creset %an - %s' --graph"
alias gp="git push"
alias gw="git write"
alias gr="git remove"
alias gco="git checkout"

# this makes it easier to build gemsets with rbenv
rgi() { gem install $@; rbenv rehash; rehash; }

# make it easier to work with cloud_cli
alias cloud_cli="~/dev/cloud_cli/bin/cloud-cli "

gcode() { /home/sleslie/dev/getRMcode.sh $*; }

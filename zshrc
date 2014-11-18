# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

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

bindkey -v

# Customize to your needs...
export GOPATH=~/go
export LYNX_CFG=~/lynx.cfg
#export GRAILS_HOME=/home/sleslie/dev/grails-2.3.0
export GRADLE_HOME=/home/sleslie/dev/gradle-1.10
export SCALA_HOME=/home/sleslie/dev/scala-2.10.3
#export GROOVY_HOME=/home/sleslie/.gvm/groovy/current
export JAVA_HOME=/opt/ibm/java-x86_64-70
export M2_HOME=/usr/local/maven

export PATH=$HOME/bin:$HOME/.rbenv/bin:$JAVA_HOME/jre/bin:$M2_HOME/bin:/home/sleslie/dev:/usr/lib/lightdm/lightdm:/usr/local/lib:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/sleslie/dev/play-2.1.3/:$GRADLE_HOME/bin:$SCALA_HOME/bin:

eval "$(rbenv init -)"

alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"
alias lt="ls -lart"

# make ack better by default
alias ack="ack --follow --nobinary"

# I've been using vim too long to unlearn some things
#alias vim="gvim -v"
alias :e="gvim -v"
alias :q="exit"

# Set the default editor in ranger to use gvim
alias ranger="EDITOR=gvim ranger"

# easy access to common dirs
alias docs="cd /home/sleslie/Documents"
alias down="cd /home/sleslie/Downloads"

# easy access to code and projects
alias src="cd /home/sleslie/src; ls"
alias hve="cd ~/src/hve_images; ls"
alias icon="cd /home/sleslie/src/icon; ls"
alias blue="cd /home/sleslie/src/bluemixV2; ls"

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

# to make it easier to work with the bosh-lite test instance
alias ssh_boshlite='bosh ssh --gateway_host 192.168.50.4 --gateway_user vagrant --gateway_identity_file $HOME/.vagrant.d/insecure_private_key'

# make it easier to work with cloud_cli
alias cloud-cli="~/dev/cloud_cli/bin/cloud-cli "
alias gcf="~/src/cfV2/cli/out/cf "

gcode() { /home/sleslie/dev/getRMcode.sh $*; }

# added this for tmux powerline
PROMPT="$PROMPT"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
source ~/.fzf.zsh

# make it easier to start ranger
rg() {
    if [ -z "$RANGER_LEVEL" ]
    then
        ranger
    else
        exit
    fi
}

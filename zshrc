# Path to your oh-my-zsh installation.
export ZSH=/home/sleslie/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting golang tmux)

source $ZSH/oh-my-zsh.sh

export TERM=xterm-256color

# Customize to your needs...
export GOPATH=~/src/gocode
export GOROOT=~/dev/go
#export GOROOT=~/dev/go1.5
export LYNX_CFG=~/lynx.cfg
export JAVA_HOME=/usr/lib/jvm/java-ibm-x86_64-71
export M2_HOME=/usr/local/maven
export GRADLE_HOME=/home/sleslie/dev/gradle-2.4

export PATH=$HOME/bin:$HOME/.rbenv/bin:$JAVA_HOME/jre/bin:$GRADLE_HOME/bin:$M2_HOME/bin:/home/sleslie/dev:/usr/lib/lightdm:/usr/local/lib:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$GOROOT/bin:$GOPATH/bin:

eval "$(rbenv init -)"

alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"
alias lt="ls -lart"

# make ack better by default
alias ack="ack --follow --nobinary"

# I've been using vim too long to unlearn some things
alias vim="nvim"
alias :e="gvim -v"
alias :q="exit"

# Set the default editor in ranger to use gvim
alias ranger="W3MIMGDISPLAY_PATH=/usr/lib/w3m/w3mimgdisplay PYTHONOPTIMIXE=2 EDITOR=gvim /usr/bin/ranger"

# easy access to common dirs
alias docs="cd /home/sleslie/Documents"
alias down="cd /home/sleslie/Downloads"

# easy access to code and projects
alias src="cd /home/sleslie/src; ls"
alias map="cd /home/sleslie/src/nodecode; ls"

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

# added this for tmux powerline
PROMPT="$PROMPT"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

# make it easier to start ranger
rg() {
    if [ -z "$RANGER_LEVEL" ]
    then
        ranger
    else
        exit
    fi
}
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

export NVM_DIR="/home/sleslie/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/sleslie/.gvm/bin/gvm-init.sh" ]] && source "/home/sleslie/.gvm/bin/gvm-init.sh"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

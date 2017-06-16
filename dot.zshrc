##
# Author: Samuel A. Winful
#
# Filename: .zshrc
#
# Description: This file (.zshrc) is only sourced when using an
#              interactive shell. For example, opening a terminal in MacOS X or
#              a FreeBSD desktop. The file (.zprofile) is sourced when the
#              shell is a login shell. For example, after an SSH connection to
#              a remote host.
#
# References: Planning on converting fully from tcsh/bash to
# zsh after reading the article:
# http://www.tuxradar.com/content/z-shell-made-easy
# Zsh Lovers Pdf: http://grml.org/zsh/zsh-lovers.pdf
#
#
##

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="random"
# ZSH_THEME="simonoff"
# ZSH_THEME="rkj" # Really like this one.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Global Variables ==============================================
# ===============================================================
#
OS_TYPE=`uname`
OS_VERSION=`uname -r | cut -f2 -d'.'`
OS_VERSION_MAJOR=`uname -r | cut -f1 -d'.'`
OS_VERSION_MINOR=`uname -r | cut -f2 -d'.'`

SSH_VER=
SSH_VMAJOR=
SSH_VMINOR=
DATE=`date +%Y%m%d`
DATETIME=`date +%Y%m%d%H%M%S`
TERMCAP=/etc/termcap

# Global aliases ================================================
# ===============================================================
#
alias -g ...='../../..'
alias -g ....='../../../..'
alias -g  D="-ltrd *(/)" # Directories
alias -g  F="-ltr *(.)"  # Plain files
alias -g  L="-ltr *(@)"  # Symbolic Links

# Suffix aliases ================================================
# ===============================================================
#
alias -s txt=vim
alias -s txt=mxres

# Regular aliases ===============================================
# ===============================================================
#

alias arwuah='ssh -Y swinful@arwuah.no-ip.com'
alias cp="cp -i"
alias cxterm="xterm -bg black -fg cyan &"
alias emacs="emacs -font fixed"
alias enscript='enscript -G -H -j --color --word-wrap -PPSYITCMVF1-IT-Canon-iR5570_07-421'
alias j="jobs -l"
alias mv="mv -i"
alias pull='git pull'
alias push='git push'
alias rm="rm -i"
alias vt100='export TERM=vt100'
alias vt='export TERM=vt100'
alias xtermc='export TERM=xterm-color'

# +-------------+
# | tMux Aliases|
# +-------------+
alias tad="tmux attach-session -d -t"
alias ta="tmux attach-session -t"
alias tls="tmux list-sessions"
alias tns="tmux new-session -s"

# +-------------------+
# | GnuScreen Aliases |
# +-------------------+
alias slsg="screen -ls | grep -i $1"
alias sw="screen -wipe"
alias sls="screen -ls"
alias srd="screen -RD"
alias srx="screen -x"

alias parents="ssh -p 1024 localhost"
alias sqlplus="rlwrap -acm sqlplus"
alias sx="screen -x"
alias tblog="vim `date +%Y-%m-%d.txt`"
alias tip="rlwrap -acm tip"

# 1st
alias tunnel-home='ssh -vvv -L 1025:localhost:4096 arwuah.no-ip.com cat -'
alias tunnel-mx='ssh -vvv -L 1025:localhost:4096 192.168.1.8 cat -'
# 2nd
alias tunnel-mx-rdesktop='ssh -vvv -p 1025 -L 3389:nyl-swinful:3389 localhost cat -'

alias netbsd='ssh -p 61024 arwuah.no-ip.com'
alias vimdbs="vim fs/public/mxres/common/dbconfig/dbsource.mxres"
alias vimlall="vim fs/public/mxres/common/launcherall.mxres"
alias vimsc="vim fs/public/mxres/common/dbconfig/mxservercredential.mxres"
alias vimsites="vim fs/public/mxres/sites/sites.mxres"
alias vimxgs="vim mxg2000_settings.sh"
alias vimxnet="vim fs/public/mxres/common/dbconfig/murexnet.mxres"
alias westmere='ssh -Y -p 21 root@arwuah.no-ip.com'
alias winfulco="ssh winfulco@winfulconsultants.com"
alias xterm='xterm -font 10x20'

# Base Path =====================================================
# ===============================================================
#
case $OS_TYPE in
  CYGWIN*)
    JAVAHOME=/cygdrive/c/MyFolder/java/jre1.8.0_111
    PATH=$JAVAHOME/bin:$PATH
    ;;

  Darwin)
    echo "===>>> System(OSX): $OS_TYPE $OS_VERSION_MINOR"
    PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:/opt/local/bin:/usr/bin:/opt/local/sbin:~/bin:$PATH
    eval "$(rbenv init -)"
    export DATABASE_URL=postgres:///$(whoami)
    export TERM=xterm-color
    ;;

  SunOS)
    
    case $OS_VERSION_MINOR in
      (10)
        echo "===>>> Oracle 10!"
        ;;

      (11)
        echo "===>>> System(Solaris): $OS_TYPE $OS_VERSION_MINOR"
        PATH=~/bin:/usr/gnu/bin:/usr/bin:/usr/sbin:/bin:/sbin:/usr/local/heroku/bin:
        AUG_BASE_PATH=/dump/swinful/Augeas/SunOS-x86/5.11

        PATH=$PATH:${AUG_BASE_PATH}/bin
        export AUGEAS_LENS_LIB=${AUG_BASE_PATH}/share/augeas/lenses/dist
        LD_LIBRARY_PATH=${AUG_BASE_PATH}/lib:$LD_LIBRARY_PATH
        ;;
    esac
    ;;

esac

# Sudo Path =====================================================
# ===============================================================
#
SUDO_HOME=/nettools/sudo/sudo1.7.2p1
case $OS_TYPE in
	SunOS)
		[[ -d $SUDO_HOME ]] && PATH=${SUDO_HOME}/bin:$PATH
		;;
esac

# --------------------
# Subversion
# --------------------
SUBVERSION_HOME=/nettools/subversion/svn1.8.10/CollabNet_Subversion

if [ -d $SUBVERSION_HOME ]; then

  case $OS_TYPE in
    (AIX)
      PATH=$SUBVERSION_HOME/bin:$PATH
      LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$SUBVERSION_HOME/lib
      ;;

    (Linux)
      LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$SUBVERSION_HOME/lib
      PATH=$SUBVERSION_HOME/bin:$PATH
      ;;

    (SunOS)
      case $OS_VERSION_MINOR in
        (10)
          PATH=$SUBVERSION_HOME/bin:$PATH
          LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$SUBVERSION_HOME/lib
          ;;
      esac
      ;;
  esac
  export LD_LIBRARY_PATH PATH
fi

# Misc ==========================================================
# ===============================================================
#
case $OS_TYPE in
	FreeBSD|Darwin)
    # Has lighter blue instead of dark-blue for dart background
    # LSCOLORS="ExGxFxdxCxDxDxhbadExEx"

		LSCOLORS="gxfxcxdxbxegedabagacad"
		CLICOLOR=1
    SYBASE=/nfs_tools/common/sybase

    export LSCOLORS CLICOLOR
		;;

esac

# LD_LIBRARY ====================================================
# ===============================================================
#
case $OS_TYPE in
  SunOS)
    LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib:/usr/lib:/opt/sfw/lib:/usr/local/ssl/lib:/nettools/lib/:/nettools/ssl/lib:/nettools/apr/lib:/nettools/BerkeleyDB.4.4/lib
  ;;

esac


# Personalizations ==============================================
# ===============================================================
# Removed: autopushd
setopt correctall noclobber appendhistory autocd beep extendedglob
setopt nomatch notify hup

# If I type cd and then cd again, only save the last one
setopt histignoredups

# 10 second wait if you do something that will delete everything.  I wish I'd had this before...
setopt RM_STAR_WAIT

bindkey -v # Enable Vi commandline editing. Use (-e) for emacs
umask 077  # Moderately restrictive

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
REPORTTIME=3
export PAGER=less
TIMEFMT="%U user %S system %P cpu %*Es total"

# Completions ===================================================
# ===============================================================
zstyle ':completion:*:default' list-prompt '%S%M matches%s'

# color code completion!
zstyle ':completion:*' list-colors "=(#b) #([0-9]#)*=36=31"

# Key Bindings ==================================================
# ===============================================================
# Taken from: http://stackoverflow.com/questions/171563/whats-in-your-zshrc

# Set Ctrl-P and Ctrl-N 
bindkey  up-history
bindkey  down-history

# Who doesn't want home and end to work?
bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line

# Incremental search is elite!
bindkey -M vicmd "/" history-incremental-search-forward
bindkey -M vicmd "?" history-incremental-search-backward

# Search based on what you typed in already
bindkey -M vicmd "//" history-beginning-search-forward
bindkey -M vicmd "??" history-beginning-search-backward

bindkey "\eOP" run-help

# oh wow!  This is killer...  try it!
bindkey -M vicmd "q" push-line

# Ensure that arrow keys work as they should
bindkey '\e[A' up-line-or-history
bindkey '\e[B' down-line-or-history

bindkey '\eOA' up-line-or-history
bindkey '\eOB' down-line-or-history

bindkey '\e[C' forward-char
bindkey '\e[D' backward-char

bindkey '\eOC' forward-char
bindkey '\eOD' backward-char

bindkey -M viins 'jj' vi-cmd-mode
bindkey -M vicmd 'u' undo

# Rebind the insert key.  I really can't stand what it currently does.
bindkey '\e[2~' overwrite-mode

# Rebind the delete key. Again, useless.
bindkey '\e[3~' delete-char

bindkey -M vicmd '!' edit-command-output

# it's like, space AND completion.  Gnarlbot.
bindkey -M viins ' ' magic-space


# Terminal Settings =============================================
# ===============================================================
case $OS_TYPE in
  SunOS)
    export TERM=vt100
    ;;
esac


# Functions/Conditionals ========================================
# ===============================================================
function title {
	if [[ $TERM == "screen"* ]]; then
		print -nR $'\033k'$1$'\033\\'
		print -nR $'\033]0;'$2$'\a'
	fi
}

# Executes before prompt is displayed
#
precmd() {
	title "zsh" "$PWD"
}

# Executes after <Enter>, but before the command is executed.
#
preexec() {
	emulate -L zsh
	local -a cmd; cmd=(${(z)1})
	title "$cmd[1]:t" "$cmd[2,-1]"
}

# Autoloaders ===================================================
# ===============================================================
#

# Ruby Gem (For Solaris 11)
if [ -f /usr/ruby/1.8/bin/puppet ]; then
  export PATH=$PATH:/usr/ruby/1.8/bin
fi

if [ -d /var/ruby/1.8/gem_home ]; then
  export PATH=$PATH:/var/ruby/1.8/gem_home/bin
fi

# Ruby Version Manager
# --
RVM_HOME=${HOME}/.rvm
if [[ -d ${RVM_HOME} ]] && [[ "${OS_TYPE}" != "SunOS" ]]; then
  PATH=$PATH:$HOME/.rvm/bin 
fi

### Added by the Heroku Toolbelt
HEROKU_PATH=/usr/local/heroku
if [ -d $HEROKU_PATH ]; then
  export PATH=$HEROKU_PATH/bin:$PATH
fi


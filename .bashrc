# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions go here (override system defaults)
alias ls='ls -G'
alias l='ls -G'
alias c='clear'
alias xvi='gvim -rv --servername $RANDOM'
alias ll='ls -l --G'
alias grep='grep --color'
alias which='alias | /usr/bin/which'
alias psg='ps auxmww|grep -v grep|grep'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias bc='bc -l'
alias z='cd /home/dhyanesh/zipit/google3'
alias zd='cd /home/dhyanesh/zipit-dev/google3'
alias z1='cd /home/dhyanesh/dev/zipit1/google3'
alias pz='cd $(/home/dhyanesh/bin/p4root)/google3/personalization/zipit'
alias pb='cd $(/home/dhyanesh/bin/p4root)/google3/production/borg/zipit'
alias stbti='cd $(/home/dhyanesh/bin/p4root)/google3/structuredsearch/bigtable'
alias ksi='cd $(/home/dhyanesh/bin/p4root)/google3/kansas/showmyhistory/index'
alias gh='cd /home/dhyanesh/git/google3/'

set -o vi
shopt -s cdspell

export PATH=$PATH:$HOME/bin:$HOME/dev/android/sdk_root/tools
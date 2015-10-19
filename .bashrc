# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi
umask 002
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
#alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias scp='scp -P3600'
ulimit -c unlimited

mkdir -p ~/.trash
alias rm=trash
trash()
{
    DIRNAME=$(date +%Y%m%d%H%M%S)
    mkdir ~/.trash/${DIRNAME}
    mv $@ ~/.trash/${DIRNAME}
}

# User specific aliases and functions

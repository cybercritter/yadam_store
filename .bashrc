source ~/.git-completion.bash
source ~/.bash_aliases.sh

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
PATH=$HOME/bin:$HOME/usr/local/bin
fi

#if [ -d "/home/advtech1/mreid/usr/local/bin" ] ; then
#PATH=$PATH:/home/advtech1/mreid/usr/local/bin
#fi

export TERM=xterm
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/rti_connext_dds-5.2.0/bin

if [ -d "/project/common/global/klocwork/scripts" ]; then
   export PATH=$PATH:/project/common/global/klocwork/scripts
fi

# An excellent pager is of the utmost importance to the Unix experience.

export LESS="-i -j.49 -M -R -z-2"
export PAGER=less

# fix the weird window sizing behavior. 
# Bash should update the LINES and COLUMNS environment variables each
# time the terminal window gets resized, for programs that care.
if [ -n "$BASH" ]
   then shopt -s checkwinsize
fi

#create neither *.pyc files nor __pycache__ directories.
export PYTHONDONTWRITEBYTECODE=PLEASE

alias gi="g -i"
alias la="/bin/ls --color -ahvCF"
alias lf="/bin/ls --color -vhCF"
alias ll="/bin/ls --color -lhv"
alias lla="/bin/ls --color -ahlv"
alias ltr="/bin/ls --color -lthr"
alias ltra="/bin/ls --color -lthra"
alias m="less"
alias s="ssh"
d () {
       if [ -t 1 ]
          then $DIFF -ur "$@" 2>&1 | less
       else $DIFF -ur "$@"
      fi
}

wd() {
       diff -u "$@" | wdiff -d -n -w $'\033[1;31;47m' -x $'\033[0m' \
                                      -y $'\033[1;32;47m' -z $'\033[0m'
}

utf8()
{
   iconv -f ISO-8859-1 -t UTF-8 $1 > $1.tmp
      rm $1
      mv $1.tmp $1
}
export PATH=/opt/local/bin:/Users/michael/bin:/Users/michael/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/rti_connext_dds-5.2.0/bin
export PATH=/Applications/MacVim.app/Contents/bin:/opt/local/bin:/Users/michael/bin:/Users/michael/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/rti_connext_dds-5.2.0/bin

if [ -f ~/.git-prompt.sh ]; then
   source ~/.git-prompt.sh
   export PS1='\[\033[01;32m\]\u \[\033[01;34m\]\W $(__git_ps1 "[%s]")\$\[\033[00m\] '
   
   #GIT_PS1_SHOWDIRTYSTATE show unstaged '*' and staged '+' changes 
   #GIT_PS1_SHOWSTASHSTATE show '$' if something is stashed
   #GIT_PS1_SHOWUNTRACKEDFILES shows '%' if untracked files
   #GIT_PS1_SHOWUPSTREAM="auto" shows '','','=' if behind/ahead/diverged/nodiff
   #GIT_PS1_SHOWUPSTREAM="verbose name" show number of commits ahead/behind (+/-) upstream, and upstream name
   
   export GIT_PS1_SHOWDIRTYSTATE=1
   export GIT_PS1_SHOWSTASHSTATE=1
   export GIT_PS1_SHOWUNTRACKEDFILES=1
   export GIT_PS1_SHOWCOLORHINTS=1
   export GIT_PS1_SHOWDIRTYSTATE=1
   export GIT_PS1_SHOWUPSTREAM="auto"
fi
source ~/.venv/bin/activate

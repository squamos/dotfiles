export PATH=/Library/Frameworks/Python.framework/Versions/2.7/bin:$PATH

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
	source /usr/local/bin/virtualenvwrapper.sh
fi
export WORKON_HOME=$HOME/.virtualenvs

#source /usr/local/bin/virtualenvwrapper.sh
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export WORKON_HOME=~/.virtualenvs
export PYTHONDONTWRITEBYTECODE=1
export VIRTUALENV_USE_DISTRIBUTE=1
export PATH=$PATH:/usr/local/mysql/bin

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias mysql_config=/usr/local/mysql/bin/mysql_config

#xmodmap -e "keysym Up = Up F13"
#xmodmap -e "keysym Down = Down F16"
#xmodmap -e "keysym Left = Left F18"
#xmodmap -e "keysym Right = Right F19"

##
# Your previous /Users/ajbarreto/.bash_profile file was backed up as /Users/ajbarreto/.bash_profile.macports-saved_2011-09-08_at_16:00:06
##

# MacPorts Installer addition on 2011-09-08_at_16:00:06: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Vim compiled with Ruby support needs this
export PATH=/usr/local/bin:$PATH
# End Vim Ruby
export PATH="$PATH:/usr/local/mysql/bin"

export DYLD_LIBRARY_PATH="/usr/local/mysql/lib"

##
# Your previous /Users/ajbarreto/.bash_profile file was backed up as /Users/ajbarreto/.bash_profile.macports-saved_2011-11-07_at_18:17:38
##

# MacPorts Installer addition on 2011-11-07_at_18:17:38: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export UBER_HOME=~/Uber

# Fix for <C-s> issue in Vim for opening a file in a horizontal split view
stty -ixon

# Git Bash Completion
# curl -O https://raw.github.com/git/git/master/contrib/completion/git-completion.bash
# mv ~/git-completion.sh ~/.git-completion.sh

PS1='\u@\h:\w$(__git_ps1 " (%s)")\$ '
export GIT_PS1_SHOWDIRTYSTATE=1
#export GIT_PS1_SHOWSTASHSTATE=1
#export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"
source ~/.git-completion.bash


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

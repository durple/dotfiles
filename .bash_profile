#export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad

##
# Your previous /Users/deep/.bash_profile file was backed up as /Users/deep/.bash_profile.macports-saved_2011-08-01_at_19:59:29
##
export CC=gcc-4.2
# MacPorts Installer addition on 2011-08-01_at_19:59:29: adding an appropriate PATH variable for use with MacPorts.
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
#export PS1="\u@\h:\w \`if [ \$? = 0 ]; then echo -e '\[\e[01;32m\]\n\xE2\x98\xBA'; else echo -e '\[\e[01;31m\]\n\xE2\x98\xB9'; fi\` \[\e[01;34m\]\[\e[00m\]"

#export GOPATH=$HOME/go

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export SCALA_HOME=/opt/scala

export PATH=/usr/local/bin:/usr/local/share/python:$SCALA_HOME/bin:$GOPATH/bin:$GOROOT/bin:$PATH

# set where virutal environments will live
export WORKON_HOME=$HOME/.virtualenvs
# ensure all new environments are isolated from the site-packages directory
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export DOCKER_HOST=tcp://localhost:2375

#source AWS credentials
#source ~/.aws

# bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Git Bash Prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
        source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
# fixing solarized colours
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

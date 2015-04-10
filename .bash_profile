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
export GOPATH=$HOME/projects
export PATH=/usr/local/bin:/usr/local/share/python:$GOPATH/bin:$PATH

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
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export DOCKER_HOST=tcp://localhost:2375

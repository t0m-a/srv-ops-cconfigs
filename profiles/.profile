# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Custom Variables
# DOCTL
source <(doctl completion bash)
# GIT STATUS
alias allGitStatus="find . -maxdepth 1 -mindepth 1 -type d -exec sh -c '(echo {} && cd {} && git status -s && echo)' \;"
# SSH AGENT + KEYS
eval `ssh-agent`
ssh-add ~/.ssh/id_rsa.pem ~/.ssh/aws.pem ~/.ssh/vagrant.pem ~/.ssh/insecure_private_key
# CUSTOM ENV VARIABLES 
. .env

# WSL Only
# Vagrant WSL communication with Vagrant Windows 10 PRO:
#export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
#export PATH="$PATH:/mnt/c/HashiCorp/Vagrant/bin"
#export PATH="$PATH:/mnt/c/Program\ Files/Oracle/VirtualBox"

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# vi/vim mode
set -o vi

alias ls='ls --color=auto'

# color the username and path
#PS1='\033[00;33m\][\u@\h \W]\[\033[0m\] \$ '
#NOTE: you need to escape all non-printing chars with '\[' and '\]' or urxvt won't wrap lines properly
#see https://www.linuxquestions.org/questions/slackware-14/cli-lines-wrapping-overwrites-in-rxvt-4175467924/
PS1='\[\e[0;35m\]\u\[\e[0;33m\]@\[\e[0;36m\]\h\[\e[1;33m\]\W\[\e[0;32m\]\$\[\e[m\] '
# uncolor the username and path
#PS1='[\u@\h \W] \$ '

# Use prompt command to display exit status if it is not zero
# Idea from: https://stackoverflow.com/questions/16715103/bash-prompt-with-last-exit-code
PROMPT_COMMAND=__prompt_command

__prompt_command() {
    local EXIT="$?" # must be first

    PS1='\[\e[0;35m\]\u\[\e[0;33m\]@\[\e[0;36m\]\h\[\e[1;33m\]\W\[\e[0;32m\]\$\[\e[m\] '

    if [ $EXIT != 0 ]; then
        PS1+="\[\e[1;31m\][${EXIT}]\[\e[m\] "
    fi
}

# PATH variable
export PATH=$PATH:~/scripts:~/arduino-ua/bin:~/.local/bin

# scale spotify for HiDPI when launched from terminal
# courtesy of:
# https://community.spotify.com/t5/Desktop-Linux/Linux-client-barely-usable-on-HiDPI-displays/td-p/1067272
alias spotify="/usr/bin/spotify --force-device-scale-factor=3"

# scale GTK/GDK apps for HiDPI
export GDK_SCALE=3

# alias to go to ~/Files partition
alias cdf="cd ~/Files"

# open atom in the current directory when "atom" is called
alias atom="/usr/bin/atom ./"

# when you close ranger, your terminal will be at the directory you navigated to in ranger
alias ranger="source ranger"

# use the alias 'dotfiles' instead of git to manage dotfiles git repository
# courtesy of https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

# set i3lock background
alias i3lock='i3lock -c 000000'

# Arduino path variables
export ARDUINO_PLATFORM_LIB_PATH=/usr/share/arduino/hardware/archlinux-arduino/avr/libraries
export ARDUINO_VAR_PATH=/usr/share/arduino/hardware/archlinux-arduino/avr/variants
export BOARDS_TXT=/usr/share/arduino/hardware/archlinux-arduino/avr/boards.txt
export ARDUINO_CORE_PATH=/usr/share/arduino/hardware/archlinux-arduino/avr/cores/arduino
export BOOTLOADER_PARENT=/usr/share/arduino/hardware/archlinux-arduino/avr/bootloaders

# node js
source ~/aurdownloads/nvm/init-nvm.sh

# android
export ANDROID_HOME=$HOME/Files/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator

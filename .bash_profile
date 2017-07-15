# Ability to use 'subl' command to launch files in sublime text

TIME=$(date "+%H")
if [ $TIME -lt 12 ]; then
        echo "Good Morning ${USER}!"
        echo "All progress takes place outside the comfort zone."
elif [ $TIME -lt 18 ]; then
        echo "Good Afternoon ${USER}!"
        echo "We generate fears while we sit. We overcome them by action."
else
        echo "Good Evening ${USER}!"
        echo "If you spend too much time thinking about a thing, you’ll never get it done."
fi

export PATH=$PATH:~/bin
export EDITOR='vim'

alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

# Changes the bash prompt to be colorized, and rearranges the prompt to be:
# username@hostname:cwd $
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

# Enables command line colors, and defines colors for the 'ls' command
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# We alias ls to include a few flags by default.
# -G Colorizes output
# -h makes sizes human readable
# -F throws a / after a directory, * after an executable, and a @after symlink
# -a Shows hidden files
alias ls='ls -GFha'
alias ll='ls -la'   # Longlists and shows hidden"

# Human readable version of df
alias df='df -h'

# Confimration before usage, and explain what's being done
alias mv='mv -iv'
alias cp='cp -iv'
alias ln='ln -iv'
alias rm='rm -iv'

# Makes parent directories if necessary and shows desc.
alias mkdir='mkdir -pv'

# Directory Creation
makeAndChangeDirectory() {
        mkdir $1 && cd $_
}
alias mcd=makeAndChangeDirectory

# Mute System Volume
alias stfu='osascript -e "set volume output muted true"'

# View current public IP
alias ip='curl icanhazip.com'

# -----------------
# Scripting Aliases
# -----------------
# Make executable
alias ax='chmod a+x'

# Edit .bash_profile
alias bp='$EDITOR ~/.bash_profile'

# Reload bash config
alias src='. ~/.bash_profile'


# ---------------------------
# Automated Program Launches
# ---------------------------
# Google Chrome, first parameter specifies file you'd like to open
# If you'd like to open url, remember to specify http://
alias chrome='/usr/bin/open -a "/Applications/Google Chrome.app" "$1"'


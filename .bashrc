# Look for programs to run in the normal spots as well as /usr/local/bin
PATH="$PATH:/usr/local/bin"

# Looks at the git info for the current directory
function parse_git_info() {
    BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
    if [ ! "${BRANCH}" == "" ]
    then
        GIT_USER=`git config user.email`
        echo " [${GIT_USER} - ${BRANCH}]"
    else
        echo ""
    fi
}

# Set the prompt to include directory and git information
# Notice the usage of parse_git_info
PS1='\e[33m\]\u@\h\e[m\] \e[34m\]\w\[\e[m\]\e[32m\]`parse_git_info`\e[m\]\n\$ '

# Setup the nvm tool
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# Make the output of ls more distinctive
export LSCOLORS=exfxcxdxbxegedabagacad

# Tell the shell program to read files that contain instructions
# for completing commands and arguments when you hit the TAB key
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Use atom for git operations, among other things
export EDITOR="code -w"

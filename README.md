# Computer Setup


## Initial Tool Setup

1.  Install [Homebrew](http://brew.sh)
2.  Install [Homebrew Cask](http://cashroom.github.io)
3.  Run `brew update` in the `Terminal` application.

Homebrew should prompt you to install the Xcode Command Line Tools. You should be able to install them by running the command `xcode-select --install`


## Recommended Software

1.  Install [Visual Studio Code](https://code.visualstudio.com): `brew cask install visual-studio-code`
    
    Other good text editors include:
    
    -   [Atom](http://atom.io): `brew cask install atom`
    -   [Sublime Text](https://www.sublimetext.com): `brew cask install sublime-text`
    -   [Brackets](http://brackets.io): `brew cask install brackets`

2.  Install [nvm](https://github.com/creationix/nvm): `brew install nvm`


## Terminal and Shell Configuration

The default `Terminal` configuration (specifically, the setup for the "shell" tool that runs inside the eindow) can be terse. Adding the following lines to a file named `.bashrc` in your home directory (sometimes you'll see it as `$HOME` or `~`, it means `/Users/<your username>/`) will help.

```bash
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
```

This file is not automatically read by the shell program in `Terminal` (even though the `.*rc` filename template is a standard one), so you will also need to create/edit a file named `.bash_profile`.

```bash
if [ -r ~/.bashrc ]; then
   source ~/.bashrc
fi
```


## Other Prep Steps

1.  Sign up for a [GitHub](http://github.com) account if you do not already have one


# Links and Further Reading

-   Development Tools:
    -   [Homebrew](http://brew.sh)
    -   [Visual Studio Code documentation](https://code.visualstudio.com/docs)
    -   [Visual Studio Code on macOS](https://code.visualstudio.com/docs/setup/mac)
    -   [Pro Git](https://git-scm.com/book/en/v2)
-   JavaScript:
    -   [Eloquent JavaScript](http://eloquentjavascript.net)
    -   [You Don't Know JS: Up & Going](https://github.com/getify/You-Dont-Know-JS/tree/master/up%2520%2526%2520going)


## Further Reading

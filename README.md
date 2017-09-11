# Computer Setup

## Initial
1. Install [Homebrew][homebrew]
1. Install [Homebrew Cask][cask]
1. Run `brew update` in the `Terminal` application

You will need to install [Xcode](https://developer.apple.com/xcode/) (from the Mac App Store)
if you have not already. Specifically, you only need to install the command line
tools. Run `xcode-select --install` on the command line to install them without
the full Xcode installation. The [Homebrew][homebrew] installation should prompt
you to do so if necessary.

## Recommended Software
1. Install [Atom][atom]: `brew cask install atom`

   Other good text editors include:

   * [Visual Studio Code](https://code.visualstudio.com): `brew cask install visual-studio-code`
   * [Sublime Text](https://www.sublimetext.com): `brew cask install sublime-text`
   * [Brackets](http://brackets.io): `brew cask install brackets`

1. Install [nvm](https://github.com/creationix/nvm): `brew install nvm`

## Shell Configuration

The default `Terminal` configuration (specifically, the setup for the "shell" tool
that runs inside the window) can be terse. Adding the following lines to a file named `.bashrc` in your home directory (`/Users/<your username>/`) will help.

```bash
# Look for programs to run in the normal spot as well as /usr/local/bin
PATH="$PATH:/usr/local/bin"

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
PS1='\e[33m\]\u@\h\e[m\] \e[34m\]\w\[\e[m\]\e[32m\]`parse_git_info`\e[m\]\n\$ '

# Setup the nvm tool
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
```

## Other Prep Steps

1. Sign up for a [GitHub][github] account if you do not already have one

# Links

* Development Tools:
  * [Homebrew][homebrew]
  * [Atom Manual](http://flight-manual.atom.io)
  * [Pro Git](https://git-scm.com/book/en/v2)
* JavaScript:
  * [Eloquent JavaScript](http://eloquentjavascript.net)

[homebrew]: http://brew.sh
[cask]: https://caskroom.github.io
[atom]: http://atom.io
[github]: http://github.com

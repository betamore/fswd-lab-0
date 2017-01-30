# Links

* Development Tools:
  * [Homebrew][homebrew]
  * [Atom Manual](http://flight-manual.atom.io)
  * [Pro Git](https://git-scm.com/book/en/v2)
* Server Software:
  * PostgreSQL:
    * [PostgreSQL](https://www.postgresql.org)
    * [Postgres.App](http://postgresapp.com)
  * Redis:
    * [Redis](https://redis.io)
    * [Redis.App](http://jpadilla.github.io/redisapp/)
* JavaScript:
  * [Eloquent JavaScript](http://eloquentjavascript.net)

# Computer Setup

## Initial
1. Install [Xcode](https://developer.apple.com/xcode/) (from the Mac App Store)

  Specifically, you only need to install the command line tools. Run `xcode-select --install` on the command line to install them without the full Xcode installation.

1. Install [Homebrew][homebrew]
1. Install [Homebrew Cask](https://caskroom.github.io)
1. Run `brew update`

## Recommended
1. Install [Atom][atom]: `brew cask install atom`

  Other good text editors include:
  * [Visual Studio Code](https://code.visualstudio.com): `brew cask install visual-studio-code`
  * [Sublime Text](https://www.sublimetext.com): `brew cask install sublime-text`
  * [Brackets](http://brackets.io): `brew cask install brackets`

1. Install [nvm](https://github.com/creationix/nvm): `brew install nvm`

### Atom Packages
Install the packages used in class with: `apm install language-pug linter linter-eslint mocha-test-runner`

## Later On
1. Install [Postgres.App][postgresapp]: `brew cask install postgres`

[homebrew]: http://brew.sh
[atom]: http://atom.io
[postgresapp]: http://postgresapp.com

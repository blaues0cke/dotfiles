#!/usr/bin/env bash

# Check that Homebrew is installed and install if not
if test ! $(which brew); then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install Bash 4.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells
  chsh -s "${BREW_PREFIX}/bin/bash"
fi

# Install `wget`
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
# brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# Java
brew cask install homebrew/cask-versions/adoptopenjdk8
touch ~/.android/repositories.cfg
brew cask install android-sdk

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install dosbox
brew install git
brew install git-lfs
brew install imagemagick
brew install graphicsmagick
brew install lua
brew install lynx
brew install mas
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zsh
brew install zopfli
brew install nvm
brew install mackup
brew install composer
brew install watchman
brew install ffmpeg

brew tap phinze/homebrew-cask
brew tap homebrew/cask-drivers

brew cask install xquartz

brew cask install 1password
brew cask install android-studio
brew cask install arduino
brew cask install balenaetcher
brew cask install balsamiq-mockups
brew cask install bartender
brew cask install bettertouchtool
brew cask install cakebrew
brew cask install charles
brew cask install colorsnapper
#brew cask install docker
brew cask install docker-toolbox
brew cask install dosbox
brew cask install dropbox
brew cask install font-fira-code
brew cask install firefox
brew cask install forklift
brew cask install flume
brew cask install google-chrome
# brew cask install gifcapture - I do not use this anylonger since I prefer Quicktime and CMD+Shift+5
brew cask install hex-fiend
brew cask install keycastr
brew cask install keystore-explorer
brew cask install imageoptim
brew cask install inkscape
brew cask install intel-power-gadget
brew cask install istat-menus
brew cask install iterm2
brew cask install keepingyouawake
brew cask install keka
#brew cask install kitematic - This seems to be obsolete an replaced by "docker" what also serves Docker Desktop
brew cask install little-snitch
brew cask install macdown
brew cask install macpass
brew cask install micro-snitch
brew cask install mosaic
brew cask install postman
brew cask install nextcloud
brew cask install ngrok
brew cask install phpstorm
brew cask install quitter
brew cask install react-native-debugger
brew cask install sequel-pro
brew cask install sketch
brew cask install slack
brew cask install sonos
brew cask install soundcleod
brew cask install sound-control
brew cask install sourcetree
brew cask install spotify
#brew cask install steam
brew cask install teamviewer
brew cask install teamspeak-client
brew cask install ultimaker-cura
brew cask install virtualbox
brew cask install visual-studio-code
brew cask install vlc
brew cask install whatpulse
brew cask install whatsapp
brew cask install zeplin

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null 2>/dev/null
brew install caskroom/cask/brew-cask 2>/dev/null
brew cask install wkhtmltopdf

mas install 634148309  # Logic Pro
mas install 970502923  # Typeeto
mas install 1039633667 # Irvue
mas install 497799835  # Xcode
mas install 1081413713 # Gif Brewery

composer global require laravel/valet

nvm install 7.4
nvm install 10

npm install -g react-native-cli gulp bower react-native-rename

sudo gem install cocoapods

valet install
valet trust

xcode-select —-install

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

mkdir ~/.nvm

# Remove outdated versions from the cellar.
brew cleanup

echo "Done, you may want to reboot now to make all PATH variables work properly."

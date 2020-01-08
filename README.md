# Thomas Kekeisen macOS configuration

This repository includes as much stuff as possible to set up a new MacBook as fast as possible.

## Scripts

This project is separated in a lot of scripts you can execute by yourself.
Here is an overview:

* `create-folders.sh`:        Creates all folders that are required for the basic setup
* `install-automator.sh`:     Install all Automator scripts that have been included in the backup before
* `install-fonts.sh`:         Install all fonts that have been included in the backup before
* `install-logic-links.sh`:   Installs all symlinks required to use a external ssd with Logic Pro
* `install-services.sh`:      Installs services that have been included in the backup before
* `install-ssh-keys.sh`:      Installs all ssh keys that have been included in the backup before
* `install-software.sh`:      Installs all the tools I need using `brew` and `mas`
* `install-dotfiles.sh`:      Install all dotfiles
* `configure-macos.sh`:       Configures macOS and sets a lot of settings
* `restore-configuration.sh`: Restores all configurations and preferences that are shared using Dropbox

## Manually

Unfortunately some things cannot (yet) configured automatically,
so what you have to do manually is:

* Enable all accounts in the preferences
* Download and install Retini from https://github.com/terwanerik/Retini
* Download and install SketchUp 2017
* Download and install Little Snitch (maybe by tiping `brew cask reinstall little-snitch` since it requires a installer to run)
* Download and install Silhouette Studio from https://www.silhouetteamerica.com/software
* Configure Micro Snitch
* Configure 1Password
* Configure WhatPulse
* Configure Dropbox
* Configure Nextcloud for the private and the lulububu account
* Export the latest PhpStorm configuration and install it on the new machine
* Export the iStatsMenus configuration and install it on the new machine
* Export the iTerm settings/set it to `/Users/thomaskekeisen/Dropbox/private/configurations/iTerm2`
* Install sudo touch id
* Set the finder settings and favorites
* Export the BetterTouchTool configuration and install it on the new machine and add the license
* Configure ColorSnapper2 and add the license
    * Shortcut: Shift + CMD + C
    * Magnification: 15
    * Capture Area: 0
* Configure Kitematic
* Configure Keka
* Configure Sketch and add the license
* Configure Bartender and add the license
* Configure Spotify
* Configure SoundCleod
* Configure Slack
* Configure Flume
* Configure WhatsApp
* Configure Xcode
* Configure Teamspeak
* Configure Android Studio
* Finalize the ToucBbar
* Finalize the Dock

----



TODO:

* Configure Mail
* copy all projects (https://apple.stackexchange.com/questions/267622/transfer-data-between-two-mac-via-usb-c)
* run react native app
* run symfony app



# Erasing an old MacBook

This are some things you should do before erasing your old MacBook.

* `backup-automator.sh`:     Backup all Automator scripts that are installed in the system
* `backup-configuration.sh`: Backup all configurations and relevant application settings
* `backup-dotfiles.sh`:      Backup all dotfiles that are installed in the system (you have to review this afterwards!)
* `backup-fonts.sh`:         Backup all fonts that are installed in the system
* `backup-services.sh`:      Backup all services that are installed in the system
* `backup-ssh-keys.sh`:      Backup all ssh keys

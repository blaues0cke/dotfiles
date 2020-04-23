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

* Call `create-folders.sh`
* Enable all accounts in the preferences
* Download and install Retini from https://github.com/terwanerik/Retini
* Download and install SketchUp 2017 (https://help.sketchup.com/en/downloading-older-versions)
* Download and install Little Snitch (maybe by tiping `brew cask reinstall little-snitch` since it requires a installer to run)
* Download and install Silhouette Studio from https://www.silhouetteamerica.com/software
* Download and install Spark AR Studio from https://sparkar.facebook.com/ar-studio/download/
* Configure Micro Snitch
* Configure 1Password
* Configure WhatPulse
* Configure Dropbox
* Configure Nextcloud for the private and the lulububu account
* Export the latest PhpStorm configuration and install it on the new machine
* Export the iStatsMenus configuration and install it on the new machine
* Export the iTerm settings/set it to `/Users/thomaskekeisen/Dropbox/private/configurations/iTerm2`
* Install sudo touch id
    * `sudo nano /etc/pam.d/sudo`
    * Paste `auth sufficient pam_tid.so` on line 2 of the document (underneath the initial comment line)
    * On default terminal works like a charm, but on iTerm2 need an extra configuration. Go to Prefs -> Advanced -> Allow sessions to survive logging out and back in and set value to no.
* Set the finder settings and favorites
	* Sidebar
		* Nextcloud
		* Dropbox
		* Applications
		* thomaskekeisen
		* Downloads
		* Desktop
		* Documents
		* Projects
	* Settings
		* Show all hard drives
		* Hide recent tags
		* Remove items from the Trash after 30 days
* Export the BetterTouchTool configuration and install it on the new machine and add the license
* Configure ColorSnapper2 and add the license
    * Shortcut: Shift + CMD + C
    * Magnification: 15
    * Capture Area: 0
* Configure Kitematic
* Configure Keka
* Configure Chrome
    * Disalbe desktop notifications
* Configure Sketch and add the license
* Configure Bartender and add the license
* Configure Spotify
* Configure SoundCleod
* Configure Sourcetree
	* Enable force push
* Configure Slack
* Configure Flume
* Configure WhatsApp
* Configure Xcode
* Configure Teamspeak
* Configure Android Studio
* Configure iMessage and enable Text Message Forwarding on the iPhone
* Configure Mosaic and disable the license on the old MacBook
* Install `valet`  by typting `valet install` followe by `valet trust`
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

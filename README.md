# Thomas Kekeisen macOS configuration

This repository includes as much stuff as possible to set up a new MacBook as fast as possible.

## Scripts

This project is separated in a lot of scripts you can execute by yourself.
Here is an overview:

* `install-automator.sh`:   Install all Automator scripts that have been included in the backup before
* `install-fonts.sh`:       Install all fonts that have been included in the backup before
* `install-logic-links.sh`: Installs all symlinks required to use a external ssd with Logic Pro 
* `install-services.sh`:    Installs services that have been included in the backup before
* `install-software.sh`:    Installs all the tools I need using `brew` and `mas`

## Manually

Unfortunately some things cannot (yet) configured automatically, 
so what you have to do manually is:

* Download and install Retini from https://github.com/terwanerik/Retini
* Download and install SketchUp 2017


TODO:
* Copy BetterTouchTool config
* Copy iStatMenus config


# Erasing an old MacBook

This are some things you should do before erasing your old MacBook.

* `backup-automator.sh`: Backup all Automator scripts that are installed in the system
* `backup-fonts.sh`:     Backup all fonts that are installed in the system
* `backup-services.sh`:  Backup all services that are installed in the system
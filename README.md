# cwrsync-backup
Provides a command-line utility with configuration file for easy to use incremental backups in Windows.

This project is based off [cwRsync](https://itefix.net/cwrsync), the Windows version of Rsync. Rsync is a great, lightweight tool to take backups of all your files and folders, which works incrementally. This means that every time you backup your files, only new files and changes to files will be backed up, rather than having performing a complete copy of all your files every time you perform a backup. This saves you a lot of space on your backup drive or other storage medium.

# Requirements

First of all, make sure you download the latest version of cwRsync, by performing the following steps:

* Browse to https://itefix.net/cwrsync
* Click the tab "Rsync client"
* Download either the x64 (64-bit) or x86 (32-bit) zipfile.
* Extract the zipfile at any location of your choosing

# Configuration

Next up, configure your backup settings by editing the file "config.bat". A few examples were already supplied in comment, so you can see how it works.

# Usage

Lastly, simply run "backup.bat" and enjoy a hassle-free, incremental backup of all your important files and folders!

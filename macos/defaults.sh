#!/usr/bin/env bash

# Close "System Preferences" if it is opened
osascript -e 'tell application "System Preferences" to quit'

# Dock

## Set icon size
defaults write com.apple.dock "tilesize" -int "62"

## Autohide
defaults write com.apple.dock "autohide" -bool "true"

## Don't show "Recents"
defaults write com.apple.dock "show-recents" -bool "false"

# Finder

## Show extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"

## Default view style
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv"

## Show folders on top
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"

## Set sidebar icon size
defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "3"

# Clock

## Don't flash separators
defaults write com.apple.menuextra.clock "FlashDateSeparators" -bool "false"

## Show seconds
defaults write com.apple.menuextra.clock "ShowSeconds" -bool "true"

# Miscellaneous

## Don't show Music song notifications
defaults write com.apple.Music "userWantsPlaybackNotifications" -bool "false"

## Disable startup sound
sudo nvram SystemAudioVolume=" "

## Disable Spotlight indexing
sudo mdutil -i off

## Disable automatic capitalization when typing
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool "false"

## Disable smart dashes
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool "false"

## Disable automatic period substitution
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool "false"

## Disable smart quotes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool "false"

## Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool "false"

# Trackpad

## Enable tap as click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool "true"

## Disable natural scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool "false"

# Energy saving

## Enable lid wakeup
sudo pmset -a lidwake 1

## Restart automatically on power loss
sudo pmset -a autorestart 1

## Disable sleep while charging
sudo pmset -c sleep 0

## Disable hibernation
sudo pmset -a hibernatemode 0

# Time machine

## Prevent asking to use new hard drive as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

## Disable Time Machine
hash tmutil &> /dev/null && sudo tmutil disablelocal

killall Dock
killall Finder
killall SystemUIServer
killall Music

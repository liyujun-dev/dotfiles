#!/bin/bash

# Dock
defaults write com.apple.dock "show-recents" -bool "false"
defaults write com.apple.dock "autohide" -bool "true"

# Keyboard
defaults write com.apple.HIToolbox "AppleFnUsageType" -int "1"

# Finder
defaults write com.apple.finder "ShowStatusBar" -bool "true"
defaults write com.apple.finder "ShowPathbar" -bool "true"
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"
defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv"
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "1"
defaults write com.apple.finder "QuitMenuItem" -bool "true"

# Trackpad
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerDrag" -bool "true"

# Misc
defaults write com.apple.CloudSubscriptionFeatures.optIn "545129924" -bool "false"

killall cfprefsd


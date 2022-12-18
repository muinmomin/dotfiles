## Setup
1. Run blocks manually in [setup.sh](setup.sh) as needed.

## System Preferences
1. Disable optimize storage on this device for iCloud (so photos load faster and iCloud Drive keeps all folders locally as well)
1. Hot Corners - show desktop
1. Require password immediately
1. Re-map CAPS to ESC
1. CMD-SHIFT-S to screenshot + copy to clipboard
1. Key repeat rate (MAX)
1. Delay until repeat (MIN - 1)
1. Show only running apps in dock: `defaults write com.apple.dock static-only -bool true; killall Dock`

## Apps
* Chrome
  - Log into profile and sync
* Superhuman: https://superhuman.com/download
* VSCode
  - Enable settings sync, use GitHub account
* Raycast: https://www.raycast.com/
  - Import preferences from iCloud Drive (work/personal setups are different)
* iTerm2 (installed via setup.sh)
  - Import preferences from the file in this repo
* 1Password
  - Auto lock in shortest time
* Authy (macOS App Store)
* Rectangle: https://github.com/rxhanson/Rectangle
* Arc: https://releases.arc.net/release/Arc-latest.dmg
* Xcode (macOS App Store)
* Spotify
  - Disable auto launch on start up

# dotfiles

## Initial steps when setting up a new macOS system

1. Initial mac setup via system dialogs
   - User Filevault
   - Use Locations services
2. Check for Updates & install if any
3. Setup iCloud preferences
4. Sharing
   - Change computer name
   - Make sure all file sharing is disabled
5. Install [homebrew](https://brew.sh/)

## Dotfiles installation

Clone dotfiles repo

```
git clone https://github.com/nicolas-cusan/dotfiles.git ~/.dotfiles
```

Run the setup script

```
cd ~/.dotfiles
sh setup.sh
```

1. Set System defaults
2. Install homebrew formulae
3. Install cask binaries & powerline fonts
4. Install oh my zsh
5. Install nvm & latest node version
6. Install xcode, activecollabtimer using mas command
   <!-- 7. Sync .gitprofile (needs to be copied) -->
      <!-- 13. Sync .zshrc -->
      <!-- 13. Sync VSCode preferences & pacakges https://superuser.com/questions/1080682/how-do-i-back-up-my-vs-code-settings-and-list-of-installed-extensions -->
      <!-- 25. Sync forklift favorites -->
      <!-- 14. Sync Sublime Preferences -->
      <!-- 15. Sync iterm preferences -->

## Manual steps

1. Copy Old Mailboxes ??
2. Setup Mail Accounts & Calendar
3. Setup login items
4. Chrome
   1. Sync bookmarks & prefs
   2. Install ublock origin
   3. Install bitwarden
   4. Install browserstack
   5. Install React Devtools
   6. Install Redux Devtools
   7. Install JSON Viewer
   8. Install BrowserStack Local
5. Install infomaniak profiles
6. Transfer virtual maschines
7. Transfer desktop & other files
8. Transfer iTunes Music
9. Move Sparkleshare stuff
10. Move old photos
11. Transfer or install digital certificate
12. Install adobe CC
13. Setup nexcloud account
14. Setup licenses for all programs that require licenses
15. Generate ssh-key & setup ssh config

## Goals

1. Be able to save all settings and sync-up later
2. Sync macos binary preferences https://github.com/lra/mackup

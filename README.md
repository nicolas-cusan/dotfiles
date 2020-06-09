# .dotfiles

## Setup new macos box

### 1. Initial steps when setting up a new macOS system

- Initial mac setup via system dialogs
  - User Filevault
  - Use Locations services
- Check for Updates macOS updates & install if any
- Setup iCloud preferences
- Setup sharing preferences
  - Change computer name
  - Make sure all file sharing is disabled

### 2. Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### 3. Setup SSH

Generate ssh-key.

```bash
mkdir ~/.ssh
ssh-keygen -t rsa -b 4096 -C "email@example.com"
```

Add key.

```bash
ssh-add -K ~/.ssh/id_rsa
```

### 4. Dotfiles setup scripts

Clone dotfiles repo (location matters).

```bash
git clone https://github.com/nicolas-cusan/dotfiles.git ~/.dotfiles
```

Run the setup script

```
cd ~/.dotfiles
sh setup.sh
```

What the script will do (in execution order):

- Install homebrew formulae
- Install cask binaries & powerline fonts
- Set macOS System defaults
- Install Xcode, Active Collab Timer & xScope via [mas](https://github.com/mas-cli/mas)
- Setup the dock

### 5. oh my zsh

Install oh my zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 6. nvm & node.js

Install nvm, the latest `lts` node version & some global packages

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install --lts
npm install -g npm prettier npm-check-updates
```

### 7. Install VSCode extensions

```
cd ~/.dotfiles
sh vscode.sh
```

### 8. Configuration

Install config files (dotfiles & mac app files) via [mackup](https://github.com/lra/mackup) (backupd on Dropbox, will change to iCloud Drive)

```
cd ~/.dotfiles
sh config.sh
```

### 9. Install Little Snitch

`.dmg` file installed via cask will be located at `/usr/local/Caskroom/little-snitch/` and has to be executed manually, restart computer (required) and enter license-key. Export rules via Little Snitch backup feature and import on new the new computer.

### 10. Further manual steps

- [x] Sing-in to Chrome
- [x] Sing-in to Firefox
- [x] Setup Mail Accounts & Calendar
- [x] Setup login items:
  - Thyme
  - nextcloud
  - Dropbox
  - Rectangle
  - Bartender
  - Jumpcut
- [x] Activate Zooming in System preferences
- [x] Set Desktop Color
- [x] Setup nexcloud account
- [x] Install Adobe CC
- [x] Transfer iTunes Music
- [x] Transfer relevant entries from `/etc/hosts/`
- [x] Importing old vagrant box (without existing dbs):
  1. On old system export old vagrant box, useing `vagrant box list` to get the name, provider and ID and `vagrant box repackage` to package it.
  2. Copy vagrant folder (e.g. php72) & fresh box export to new computer
  3. install box by using `vagrant box add <PATH_TO_BOX>`
  4. `cd` to vagrant folder and run `vagrant up`
- [x] Setup licenses for all programs that require licenses
- [x] Add new ssh key to services (GitHub, GitLab)
- [x] Move old photos
- [x] Move Sparkleshare stuff
- [ ] Copy & import old Mailboxes ??
- [ ] Transfer or install digital certificate

## Issues on last install (05.06.2020)

- `brew cask install dash` not working, wrong download link
- `brew cask install jdownload` throws an error claiming that jDownloader requires java to work (but seems to work fine)
- `brew cask install xscope` not working, checksum not matching. Installed via `mas`
- The `nextcloud` account login does not work with the latest client version. Installed an old version manually to get it working.
- `macos.sh` did not run smoothly, it seems to have some option that makes the script execution fail & stop. Should be updated (see todos).
- `brew cask install virtualbox` produces some errors as the installer is not signed. If lucky a accept dialog is shown in `System Preferences > Security & privacy > General`. If not you need to add Oracle to the list of trusted developers:
  1. Boot into recovery mode: Shut down the system and hold `Cmd + R` while booting.
  2. Enter your password in the recover password screen (you might be able to skip this step if your drive is not encrypted).
  3. Open the terminal and enter `spctl kext-consent add VR5E2TV963` (allow the ID for Oracle).
  4. Restart and try installation again.

## Todo

- Add global gitignore
- Handle dotfiles manually instead of via mackup
- Define how to update / sync with other machine / react to changes in the files
- Update macos settings with this: https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.macos. Ideally compare to fresh install defaults

## Links

- https://github.com/webpro/dotfiles
- https://github.com/lra/mackup
- https://github.com/necolas/dotfiles
- https://github.com/gf3/dotfiles
- https://github.com/alrra/dotfiles
- https://github.com/mas-cli/mas
- https://github.com/mathiasbynens/dotfiles
- https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/
- https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789
- ~ https://github.com/holman/dotfiles
- ~ https://github.com/nicknisi/dotfiles
- ~ https://github.com/zsh-users/zsh-syntax-highlighting
- https://blog.macsales.com/55671-move-or-manage-the-music-apple-tv-and-podcasts-libraries/

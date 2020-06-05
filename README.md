# .dotfiles

## Initial steps when setting up a new macOS system

- Initial mac setup via system dialogs
  - User Filevault
  - Use Locations services
- Check for Updates macOS updates & install if any
- Setup iCloud preferences
- Setup sharing preferences
  - Change computer name
  - Make sure all file sharing is disabled

## Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

## Setup SSH

Generate ssh-key.

```bash
mkdir ~/.ssh
ssh-keygen -t rsa -b 4096 -C "email@example.com"
```

Add key.

```bash
ssh-add -K ~/.ssh/id_rsa
```

## Dotfiles installation

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
- Install Xcode & Active Collab Timer via [mas](https://github.com/mas-cli/mas)
- Setup the dock

## Next Steps

Install oh my zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install nvm, the latest `lts` node version & some global packages

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install --lts
npm install -g npm prettier npm-check-updates
```

Install config files via [mackup](https://github.com/lra/mackup) (backupd on Dropbox, will change to iCloud Drive)

```
cd ~/.dotfiles
sh config.sh
```

Install VSCode extensions

```
cd ~/.dotfiles
sh vscode.sh
```

Install Little Snitch, `.dmg` will be located at `/usr/local/Caskroom/little-snitch/`

## Further manual steps

- Sing-in to Chrome
- Sing-in to Firefox
- Setup Mail Accounts & Calendar
- Copy Old Mailboxes ??
- Setup login items:
  - Thyme
  - nextcloud
  - Dropbox
  - Rectangle
  - Bartender
  - Jumpcut
- Activate Zooming in System preferences
- Set Desktop Color
- Setup nexcloud account

- Install Adobe CC
- Transfer virtual machines
- Transfer iTunes Music
- Transfer or install digital certificate
- Setup licenses for all programs that require licenses
- Add new ssh key to services (GitHub, GitLab)
- Move old photos
- Move Sparkleshare stuff

## Issues on last install (05.06.2020)

- `brew cask install dash` not working, wrong download link
- `brew cask install jdownload` throws an error claiming that jDownloader requires java to work (but seems to work fine)
- `brew cask install xscope` not working, checksum not matching. Installed via `mas`
- The `nextcloud` account login does not work with the latest client version. Installed an old version manually to get it working.

## Todo

- Add global gitignore
- Handle dotfiles manually instead of via mackup
- Define how to update / sync with other machine / react to changes in the files
- Update macos settings with this: https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.macos

## Links

https://github.com/webpro/dotfiles
https://github.com/lra/mackup
https://github.com/necolas/dotfiles
https://github.com/gf3/dotfiles
https://github.com/alrra/dotfiles
https://github.com/mas-cli/mas
https://github.com/mathiasbynens/dotfiles
https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/

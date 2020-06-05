# dotfiles

## Initial steps when setting up a new macOS system

- Initial mac setup via system dialogs
  - User Filevault
  - Use Locations services
- Check for Updates macOS updates & install if any
- Setup iCloud preferences
- Setup sharing preferences
  - Change computer name
  - Make sure all file sharing is disabled

## Dotfiles installation

Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

Generate ssh-key.

```bash
mkdir ~/.ssh
ssh-keygen -t rsa -b 4096 -C "email@example.com"
```

Add key.

```bash
ssh-add -K ~/.ssh/id_rsa
```

Clone dotfiles repo. The location exact location is important.

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

## Further manual steps

1. Sing-in to Chrome
2. Sing-in to Firefox
3. Setup Mail Accounts & Calendar
4. Copy Old Mailboxes ??
5. Setup login items:
   - Thyme
   - nextcloud
   - Dropbox
   - Rectangle
   - Bartender
   - Jumpcut
6. Activate Zooming in System preferences
7. Set Desktop Color
8. Setup nexcloud account
9. Transfer virtual machines
10. Transfer iTunes Music
11. Transfer or install digital certificate
12. Setup licenses for all programs that require licenses
13. Add new ssh key to services (GitHub, GitLab)

14. Move old photos
15. Transfer desktop & other files
16. Move Sparkleshare stuff

## Goals

1. Be able to save all settings and sync-up later

## Todo

Global gitignore

## Links

https://github.com/webpro/dotfiles
https://github.com/lra/mackup
https://github.com/necolas/dotfiles
https://github.com/gf3/dotfiles
https://github.com/alrra/dotfiles
https://github.com/mas-cli/mas
https://github.com/mathiasbynens/dotfiles
https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/

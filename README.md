# .dotfiles

This repo does not really contain my dotfiles (at least for now). It rather helps to setup a new macOS box step by step. These scripts are optimized for my own system use at your own risk. They were last installed on macOS 10.15.5 (Catalina)

## Setup sequence

### 1. Initial steps

- Initial mac setup via system dialogs
  - User Filevault
  - Use Locations services
- After install check for macOS updates & install if any
- Setup iCloud preferences
- Setup sharing preferences
  - Change computer name
  - Make sure all file sharing is disabled
- Setup preferences for Finder, Dock, Destop, Keyboard, Mouse & Trackpad, etc.

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
sh install.sh
```

What the script will do (in execution order):

- Install homebrew formulae
- Install cask binaries & powerline fonts
- Install Xcode and Active Collab Timer via [mas](https://github.com/mas-cli/mas)
- Set some macOS System defaults (see `.macos`)

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
sh .vscode
```

### 8. Configuration

Symlink configuration files stored in iCloud Drive. Perquisites before running the script:

- Make sure that iCloud has synced all files in the `macOS` folder.
- Make sure that all programs have been opened at least once so that the target locations for the symlinks exist. No checks are performed by the script.

```
cd ~/.dotfiles
sh .configs
```

The following configuration files & folders files are symlinked (destination location shown):

```
~/.gitconfig
~/.oh-my-zsh
~/.zshrc
~/.ssh/config
~/Library/Application Support/Code/User/keybindings.json
~/Library/Application Support/Code/User/settings.json
~/Library/Application Support/Code/User/snippets
~/Library/Application Support/Jumpcut/JCEngine.save
~/Library/Application Support/Sublime Text/Packages/User
~/Library/Preferences/net.sf.Jumpcut.plist
~/Library/Preferences/com.apple.symbolichotkeys.plist
~/Library/Preferences/com.googlecode.iterm2.plist
~/Library/Preferences/com.surteesstudios.Bartender.plist
~/Library/Preferences/com.binarynights.ForkLift-3.plist
```

### 9. Install Little Snitch

- Execute `.dmg` file installed via cask located at `/usr/local/Caskroom/little-snitch/` manually.
- Restart computer (required)
- Enter license-key.
- On the old machine, export rules via Little Snitch backup feature and import in the fresh installation.

### 10. Further manual steps

- [x] Sing-in to Chrome
- [x] Sing-in to Firefox
- [x] Setup Mail Accounts
- [x] Setup Calendar https://config.infomaniak.com/
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
- [x] Sign in to all Slack teams
- [x] Setup licenses for all programs that require licenses
- [x] Add new ssh key to services (GitHub, GitLab)
- [x] Install Adobe CC Programs (Adobe Creative Cloud.app is installed via `cask`)
- [ ] Transfer iTunes Music
- [ ] Transfer relevant entries from `/etc/hosts/`
- [ ] Importing old vagrant box (without existing dbs):
  - On old system export old vagrant box, useing `vagrant box list` to get the name, provider and ID and `vagrant box repackage` to package it.
  - Copy vagrant folder (e.g. php72) & fresh box export to new computer
  - install box by using `vagrant box add <PATH_TO_BOX>`
  - `cd` to vagrant folder and run `vagrant up`
- [ ] Move old photos
- [ ] Copy & import old local mailboxes
- [ ] Transfer or install digital certificate

## Caveats

### Installing VirtualBox via `cask`

If `brew cask install virtualbox` produces errors it might be due to the fact that the installer is not signed. If you are lucky a accept dialog is shown in `System Preferences > Security & privacy > General`. If not you need to add Oracle to the list of trusted developers:

- Boot into recovery mode: Shut down the system and hold `Cmd + R` while booting.
- Enter your password in the recover password screen (you might be able to skip this step if your drive is not encrypted).
- Open the terminal and enter `spctl kext-consent add VR5E2TV963` (allow the ID for Oracle).
- Restart and try installation again.

## Todo

- Add global `.gitignore` & symlink to `~`
- Define how to update / sync with other machine / react to changes in the files

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
- https://github.com/holman/dotfiles
- https://github.com/nicknisi/dotfiles
- https://github.com/zsh-users/zsh-syntax-highlighting
- https://blog.macsales.com/55671-move-or-manage-the-music-apple-tv-and-podcasts-libraries/

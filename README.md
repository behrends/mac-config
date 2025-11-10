# Config files and instructions for setting up a new Mac

Whenever a new Mac is configured (every few years), we can check if the apps/tools are still needed and ask Chat if there are better/modern/maintained alternatives.

## Shell/Terminal

- Install [oh-my-zsh](https://ohmyz.sh)
- Clone this repository, e.g. in Folder `~/projects/other/`
- Create link to `zshrc` from this repository:
  - `ln -sf ~/projects/other/mac-config/zshrc ~/.zshrc` (this will overwrite the default `.zshrc` file)
- Install [Homebrew](https://brew.sh)
- Install JetBrains Mono Font: `brew install font-jetbrains-mono-nerd-font`
- Install Starship with Homebrew: `brew install starship` (https://starship.rs)
- Install terminal app Ghostty with Homebrew: `brew install ghostty` (https://ghostty.org)
- Create link to Ghostty config from this repository:
  - `ln -sf ~/projects/other/mac-config/ghostty-config ~/Library/Application\ Support/com.mitchellh.ghostty/config`
 
## Install some cli tools and apps with Homebrew

The following cli tools and apps can be installed with `brew install`

Tools:

- ripgrep (better grep, https://github.com/BurntSushi/ripgrep)
- zoxide (autojump alternative, https://github.com/ajeetdsouza/zoxide)
- tree (https://oldmanprogrammer.net/source.php?dir=projects/tree)
- node (https://nodejs.org)
- llm (https://datasette.io/tools/llm)
  - `llm keys set openai`
- codex (https://github.com/openai/codex)
- sqlite (https://sqlite.org)
- unar (https://theunarchiver.com/command-line)

Apps: 

- keepassxc (https://keepassxc.org)
- Raycast (https://www.raycast.com)
  - install `Coffee` extension via store
  - add menu bar icon with `Caffeinate Status Menu Bar`
  - install `Pomodoro` extension via store
  - add menu bar icon with `Show Pomodoro in Menu Bar`
- logseq (https://logseq.com/)
  - Add a graph: select logseq folder in iCloud Drive 
  - disable diagnostics in settings
- utm (https://mac.getutm.app/):
  - copy VMs from previous mac
  - turn on "Inverted scrolling" in Settings-Input 

## More Apps to install

- XCode via AppStore
- Docker Desktop via https://docker.com
- VS Code and VS Code Insiders via https://code.visualstudio.com
- Firefox and Firefox Developer Edition (https://www.firefox.com)
- Chrome
- Android Studio (https://developer.android.com/studio)
- Dropbox (if needed, unlink previous device before setup)
- Anki
- DHBW stuff:
  - eduVPN via AppStore (see ITS infos in moodle)
  - MS Outlook **not via App Store!**, &rarr; use in legacy mode!, included in MS Office, need to research…
    - OneDrive : login with school/work account and add to login items

## Configurations

In system settings:

- Trackpad: enable "Tap to click"
- Focus:
  - disable "Share across devices"
  - in "Do Not Disturb" set schedule to 3:30-3:29 on every day
- Desktop & Dock
 - enable "Automatically hide and show the Dock"
 - Hot Corners (clockwise from top left): Lock Screen, Mission Control, Desktop
- Game Center: disable
- Wallpaper: Shuffle All,  Every 12 Hours
- Menu bar:
  - select "Always" in "Automatically hide and show…" 
  - enable some icons and disable irrelevant ones (focus, spotlight, …)

In terminal:	

- save screenshot as jpg:
  - `defaults write com.apple.screencapture type jpg`
  - `killall SystemUIServer`
- decrease spacing between menu bar icons:
  - `defaults -currentHost write -globalDomain NSStatusItemSpacing -int 6`
  - `defaults -currentHost write -globalDomain NSStatusItemSelectionPadding -int 6`
  - `killall ControlCenter; killall SystemUIServer`

Finder:

- Settings - General - New Finder windows show: Home folder
- Settings - Advanced - Show all filename extensions
- Settings - Advanced - Keep folders on Top - In windows… und On Desktop
- View - Show Path Bar, Show Status Bar
- Show the `~/Library` folder, terminal command: `chflags nohidden ~/Library`
- Desktop right click: `Sort By - Name`

Various:

- Create `~/.ssh` folder and copy ssh keys
- Create `.gitconfig:` 
```
[user]
    name = Erik Behrends
    email = behrends@users.noreply.github.com
```
- TextEdit: new file as TXT (Settings, Format, Plain Text), remove autocorrect
- Setup printer

## App configurations

VS Code and VS Code Insiders, in settings:
  - Font Size: 16
  - Font Family, add to front: JetBrainsMono Nerd Font Mono
  - Command Palette… - Shell command: Install 'code' command in PATH

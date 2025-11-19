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
  - `llm models default <latest gpt>`
- codex (https://github.com/openai/codex)
- sqlite (https://sqlite.org)
- unar (https://theunarchiver.com/command-line)

Apps: 

- keepassxc (https://keepassxc.org)
- logseq (https://logseq.com/)
  - Add a graph: select logseq folder in iCloud Drive 
  - disable diagnostics in settings
- Raycast (https://www.raycast.com)
  - install `Coffee` extension via store
  - add menu bar icon with `Caffeinate Status Menu Bar`
  - install `Pomodoro` extension via store
  - Extensions: Search Files → Alias → f
  - Extensions: Search Emojis & Symbols → Alias → e
  - Settings → Advanced → Hyper Key → Caps Lock (disable "Include shift in Hyper Key")
  - Extensions: Set Hyper Keys for Ghostty, VS Code (Insiders), Browsers, Logseq, keepassxc, finder, etc.
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
  - MS Outlook **not via App Store!**, &rarr; use in legacy mode!, included in MS Office
    - https://learn.microsoft.com/en-us/officeupdates/update-history-office-for-mac
    - OneDrive : login with school/work account and add to login items
- Logitech Software for Spotlight Presenter 

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
  - Screen Saver… - After 1 Minute
- Menu bar:
  - select "Always" in "Automatically hide and show…" 
  - enable some icons and disable irrelevant ones (focus, spotlight, …)
 - Lock Screen:
  - Require Password after screen saver… - After 5 seconds
 - Airdrop & Handoff: disable "AirPlay Receiver"
 
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

### VS Code and VS Code Insiders

Command Palette… - Shell command: Install 'code' command in PATH

Extensions:
  - Prettier
  - Tailwind CSS IntelliSense

Settings:

```json
{
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.fontFamily": "JetBrainsMono Nerd Font Mono,Menlo, Monaco, 'Courier New', monospace",
  "editor.fontSize": 16,
  "editor.formatOnSave": true,
  "editor.glyphMargin": false,
  "editor.minimap.enabled": false,
  "editor.tabSize": 2,
  "extensions.ignoreRecommendations": true,
  "github.copilot.nextEditSuggestions.enabled": true,
  "prettier.singleQuote": true,
  "terminal.integrated.fontSize": 16
}
```

### Browsers

Logins and sensitive data are only entered in Firefox and Safari.
Therefore we won't install extensions which could spy on our data.

Firefox Developer Edition is used for casual browsing where we
do not want annoying cookie popups and ads. Here we use 
extensions to block those.

Chrome is used with a dummy Google user for testing Google apps 
and others providing a Google login. 

Safari:

- Settings:
  - General:
    - Safari opens with: All windows from last session
    - New windows / New tabs open with: Empty Page
    - File download location: Desktop
  - Search: DuckDuckGo
  - Advanced: Enable "Show features for web developers"
- View: Show status bar
- Extensions via App Store: Hush Nag Blocker

Firefox and Firefox Developer Edition:

- Settings:
  - General: 
    - check "Open previous windows and tabs" 
    - disable "Always check if … default browser"
    - disable "Check spelling as you type"
    - Downloads: Save files to Desktop
  - Home: Homepage and new windows, new tabs: Blank Page
  - Search: DuckDuckGo
  - Privacy and Security: 
    - choose Strict mode
    - enable "Tell websites not to sell or share my data"
    - disable "Ask to save passwords"
    - disable Firefox Data Collection and Use
    - Firefox Developer Edition: enable "Delete cookies and site data when Firefox Developer Edition is closed"
- Firefox: no extensions (only used for few websites with logins)
- Firefox Developer Edition Extensions (web surfing only) 
  - uBlock Origin
  - PopUpOFF (Settings - Mode: Aggressive)

Chrome:

- Settings:
  - On Startup: Continue where you left off
  - Downloads: Desktop
  - Privacy and security → Third-party cookies: Enable "Block third-party cookies"

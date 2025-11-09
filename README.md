# Config files and instructions for setting up a new Mac

Whenever a new Mac is configured (every few years), we can check if the apps/tools are still needed and ask Chat if there are better/modern/maintained alternatives.

## Shell/Terminal

- Install [oh-my-zsh](https://ohmyz.sh)
- Clone this repository, e.g. in Folder `~/projects/other/`
- Create link to `zshrc` from this repository:
  - `ln -sf ~/projects/other/mac-config/zshrc ~/.zshrc` (this will overwrite the default `.zshrc` file)
- Install [Homebrew](https://brew.sh)
- Install Starship with Homebrew: `brew install starship` (https://starship.rs)
- Install Ghostty with Homebrew: `brew install ghostty` (https://ghostty.org)
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
- sqlite (https://sqlite.org)

Apps: 

- keepassxc (https://keepassxc.org)
- Raycast (https://www.raycast.com)
		Coffee extension


## More Apps to install

- XCode via AppStore
- Docker Desktop via https://docker.com
- VS Code and VS Code Insiders via https://code.visualstudio.com
- Firefox and Firefox Developer Edition (https://www.firefox.com)
- Chrome
- DHBW stuff:
  - eduVPN via AppStore (see ITS infos in moodle)
  - MS Outlook **not via App Store!**, &rarr; use in legacy mode!, included in MS Office, need to research…

## Browser Configs

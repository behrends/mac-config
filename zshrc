export ZSH="$HOME/.oh-my-zsh"

HYPHEN_INSENSITIVE="true"

# we are using Starship (see below), hence no theme needed
ZSH_THEME=""

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# zoxid (autojump)
command -v zoxide >/dev/null && eval "$(zoxide init zsh)"

# android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

# java (via Android Studio)
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"

# ruby (use ruby installed with homebrew
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Starship
command -v starship >/dev/null && eval "$(starship init zsh)"

# Added by Antigravity
export PATH="/Users/erik/.antigravity/antigravity/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/erik/.lmstudio/bin"

# Disable Maestro Analytics
export MAESTRO_CLI_NO_ANALYTICS=1

# Disable Next.js Telemetry
export NEXT_TELEMETRY_DISABLED=1

# Binaries in `.local/bin` (e.g. Claude Code)
export PATH="$HOME/.local/bin:$PATH"

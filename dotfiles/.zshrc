# Configure ZSH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
source $ZSH/oh-my-zsh.sh

# Set the default editor
export EDITOR='code'

# Don’t clear the screen after quitting a manual page
export MANPAGER='less -X'

# Set dotfiles paths
export DOTFILES_PATH=$HOME/Projects/dotfiles
VENDOR_PATH=$DOTFILES_PATH/vendor

PATH="/sbin:$PATH"
PATH="/bin:$PATH"
PATH="/usr/sbin:$PATH"
PATH="/usr/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="/usr/local/bin:$PATH"
PATH="/usr/local/share/npm/bin:$PATH"
PATH="$DOTFILES_PATH/bin:$PATH"

# Load dotfiles
source ~/.aliases

# Rubyenv
eval "$(rbenv init - zsh)"

# GO env
export GOPROXY=https://goproxy.githubapp.com/mod,https://proxy.golang.org/,direct
export GOPRIVATE=
export GONOPROXY=
export GONOSUMDB='github.com/github/*'

# Add completions
plugins=(git docker docker-compose)
fpath=($fpath $VENDOR_PATH/zsh-completions/src)
autoload -U compinit; compinit

. $HOMEBREW_PREFIX/etc/profile.d/z.sh

# Add key for agent forwarding
# ssh-add -K ~/.ssh/id_ed25519
/usr/bin/ssh-add --apple-use-keychain ~/.ssh/id_ed25519 2>/dev/null

# Make sure this is the last path
export PATH="./bin:$PATH"
export PATH="/opt/homebrew/opt/ruby@3.1/bin:$PATH"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/dejnon/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

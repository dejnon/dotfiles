# Configure ZSH
autoload -U compinit promptinit
compinit
promptinit
setopt autocd

# Set locale variables to prevent possible encoding issues
export LANG='en_US'
export LC_ALL='en_US.UTF-8'

# Set the default editor
export EDITOR='vim -c startinsert'

# Don’t clear the screen after quitting a manual page
export MANPAGER='less -X'

# Set dotfiles paths
export DOTFILES_PATH=$HOME/.dotfiles
VENDOR_PATH=$DOTFILES_PATH/vendor

if command -v brew > /dev/null 2>&1; then
  PATH="`brew --prefix`/share/npm/bin:$PATH"
fi
PATH="/usr/local/sbin:$PATH"
PATH="/usr/local/bin:$PATH"
export PATH="$DOTFILES_PATH/bin:$PATH"

# Load dotfiles
source $DOTFILES_PATH/aliases.zsh
source $DOTFILES_PATH/extra.zsh

# Load vendor plugins
source $VENDOR_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $VENDOR_PATH/zsh-history-substring-search/zsh-history-substring-search.zsh
source $VENDOR_PATH/z/z.sh
eval "$(rbenv init - --no-rehash)"

# Add completions
fpath=($fpath $VENDOR_PATH/zsh-completions/src)

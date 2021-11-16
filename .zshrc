alias brewdump="brew bundle dump --force --file=~/Developer/dotfiles/Brewfile --no-lock"
alias ..="cd .."

# https://github.com/wting/autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# https://github.com/zsh-users/zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
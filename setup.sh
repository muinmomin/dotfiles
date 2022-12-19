echo "Run each block manually one by one."
exit 1

echo "Setup: adding git aliases"
git config --global alias.ac '!git add -A && git commit'
git config --global alias.st "status -sb"
git config --global alias.rank "shortlog -sn --no-merges"
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Install oh-my-zsh if it's not there already
if [ ! -d ~/.oh-my-zsh ]; then
 	echo "Setup: oh-my-zsh is not installed - installing..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# .zshrc: oh-my-zsh renames existing .zshrc file and adds a fresh one - replace with our own
mv ~/.zshrc ~/.zshrc.pre-custom-setup-script
cp .zshrc ~/.zshrc  # TODO: use git bare approach if there's a lot of dotfiles https://www.atlassian.com/git/tutorials/dotfiles

# oh-my-zsh plugins
# zsh-nvm
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

# Install Homebrew if not already
if test ! $(which brew); then
    echo "Setup: Hombrew is not installed - installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# For custom fonts (needed for starship prompt)
echo "Setup: tapping homebrew/cask-fonts"
brew tap homebrew/cask-fonts

# Install Homebrew packages
PACKAGES=(
    autojump    # moving around directories quickly in zsh
    gh          # GitHub CLI, makes auth easy; codespaces, etc.
    neovim      # editor
    starship    # cross-shell prompt: https://starship.rs/
    tree       # visualize directories
    tmux        # terminal multiplexer, saving sessions, pane splitting, etc.
)
echo "Setup: installing Homebrew packages..."
brew install ${PACKAGES[@]}

# Install Homebrew casks
CASKS=(
    font-hack-nerd-font
    iterm2
    ngrok
)
echo "Setup: installing Homebrew casks"
brew install --cask ${CASKS[@]}

# Suppress the "last login" prompt in the shell
touch ~/.hushlogin

echo "---------- Setup: MANUAL STEPS ----------"
echo "Setup: Import iTerm settings from the file in this repo"

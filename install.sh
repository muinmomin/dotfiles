if test ! $(which brew); then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

cp .zshrc ~/.zshrc

# Set default shell to zsh
chsh -s $(which zsh)

git config --global alias.st status
git config --global alias.ac !git add -A && git commit
git config --global alias.st status
git config --global alias.st !git status -sb
git config --global alias.rank shortlog -sn --no-merges

# Start zsh
zsh
echo "Setting up git configs"
git config --global user.name "Muin Momin"
git config --global user.email "momin.muin@gmail.com"
git config --global alias.ac "!git add -A && git commit"
git config --global alias.st "!git status -sb"
git config --global alias.rank "shortlog -sn --no-merges"
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
echo ""

echo "Running brew bundle with included Brewfile"
brew bundle --file=./Brewfile --no-lock
echo ""

if [[ ! -f ~/.zshrc ]]
then
    echo ".zshrc not found, copying .zshrc file from this repo"
    cp .zshrc ~/.zshrc
else
    echo ".zshrc FILE ALREADY EXISTS, NOT COPYING CUSTOM FILE"
fi
echo ""
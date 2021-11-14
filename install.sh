git config --global user.name "Muin Momin"
git config --global user.email "momin.muin@gmail.com"
git config --global alias.ac "!git add -A && git commit"
git config --global alias.st "!git status -sb"
git config --global alias.rank "shortlog -sn --no-merges"
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

brew bundle --file=./Brewfile --no-lock
echo "Downloading Essestial Dotfiles"

export DOTFILE_URL = https://raw.githubusercontent.com/isumitkrsaha/dotfiles/main/

curl $DOTFILE_URL/.bash_helper --output .bash_helper 
curl $DOTFILE_URL/.inputrc --output .inputrc 

curl $DOTFILE_URL/.gitconfig --output .gitconfig 
curl $DOTFILE_URL/.gitignore_global --output .gitignore_global 
curl $DOTFILE_URL/.gitmessage.txt --output .gitmessage.txt 

curl $DOTFILE_URL/.vimrc --output .vimrc

curl $DOTFILE_URL/.condarc --output .condarc
curl $DOTFILE_URL/.pylintrc --output .pylintrc

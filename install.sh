echo "Downloading Essestial Dotfiles"

URL="https://raw.githubusercontent.com/isumitkrsaha/dotfiles/main"

echo "== bash helper"
wget --output-document $HOME/.bash_helper $URL/.bash_helper
wget --output-document $HOME/.inputrc $URL/.inputrc

echo "== git helper"
wget --output-document $HOME/.gitconfig $URL/.gitconfig
wget --output-document $HOME/.gitignore_global $URL/.gitignore_global
wget --output-document $HOME/.gitmessage.txt $URL/.gitmessage.txt

echo "== vim helper"
wget --output-document $HOME/.vimrc $URL/.vimrc

echo "== python helper"
wget --output-document $HOME/.condarc $URL/.condarc
wget --output-document $HOME/.pylintrc $URL/.pylintrc

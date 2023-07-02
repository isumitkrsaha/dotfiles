echo "Downloading Essestial Dotfiles"

URL="https://raw.githubusercontent.com/isumitkrsaha/dotfiles/main"

echo "== bash helper"
wget --output-document $HOME/.bash_helper $URL/.bash_helper
wget --output-document $HOME/.inputrc $URL/.inputrc

echo "== git helper"
wget --output-document $HOME/.gitconfig $URL/.gitconfig
wget --output-document $HOME/.gitignore_global $URL/.gitignore_global
wget --output-document $HOME/.gitmessage.txt $URL/.gitmessage.txt

echo "== tmux helper"
wget --output-document $HOME/.tmux.conf $URL/.tmux.conf

echo "== vim helper"
wget --output-document $HOME/.vimrc $URL/.vimrc
git clone --depth 1 https://tpope.io/vim/sensible.git ~/.vim/pack/tpope/start/sensible
git clone --depth 1 https://tpope.io/vim/sleuth.git ~/.vim/pack/tpope/start/sleuth
vim -u NONE -c "helptags sleuth/doc" -c q
git clone --depth 1 https://tpope.io/vim/commentary.git ~/.vim/pack/tpope/start/commentary
vim -u NONE -c "helptags commentary/doc" -c q
git clone --depth 1 https://github.com/tpope/vim-flagship.git ~/.vim/pack/tpope/start/vim-flagship
vim -u NONE -c "helptags vim-flagship/doc" -c q
git clone --depth 1 https://github.com/sheerun/vim-polyglot ~/.vim/pack/plugins/start/vim-polyglot
git clone --depth 1 https://github.com/Raimondi/delimitMate ~/.vim/pack/plugins/start/delimitMate


echo "== python helper"
wget --output-document $HOME/.condarc $URL/.condarc
wget --output-document $HOME/.pylintrc $URL/.pylintrc

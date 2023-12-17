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
git clone --depth 1 https://tpope.io/vim/endwise.git ~/.vim/pack/tpope/start/endwise
git clone --depth 1 https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
git clone --depth 1 https://github.com/tpope/vim-vinegar.git ~/.vim/pack/tpope/start/vim-vinegar
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale

echo "== python helper"
wget --output-document $HOME/.condarc $URL/.condarc
wget --output-document $HOME/.pylintrc $URL/.pylintrc

# WSL stuff
if [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
  wget --output-document $HOME/.wsl_helper $URL/.wsl_helper
fi
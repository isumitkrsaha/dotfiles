echo "Downloading Essestial Dotfiles"

URL="https://raw.githubusercontent.com/isumitkrsaha/dotfiles/main/"
OUT="~/"

echo "== bash helper"
wget --output-document $OUT.bash_helper $URL.bash_helper
wget --output-document $OUT.inputrc $URL.inputrc

echo "== git helper"
wget --output-document $OUT.gitconfig $URL.gitconfig
wget --output-document $OUT.gitignore_global $URL.gitignore_global
wget --output-document $OUT.gitmessage.txt $URL.gitmessage.txt

echo "== vim helper"
wget --output-document $OUT.vimrc $URL.vimrc

echo "== python helper"
wget --output-document $OUT.condarc $URL.condarc
wget --output-document $OUT.pylintrc $URL.pylintrc

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

ln -s $SCRIPT_DIR/../configs/git/gitconfig ~/.gitconfig
ln -s $SCRIPT_DIR/../configs/git/gitignore ~/.gitignore_global

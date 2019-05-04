# Install the .vimrc
echo "Installing .vimrc..."
if [ -f "$HOME/.vimrc" ]; then
    echo "There is already a .vimrc file, remove this one first"
    exit 1
else
    ln -s "$(dirname "$(pwd)/$0")/.vimrc" "$HOME/.vimrc"
fi

echo "Done!"

function copy_dotfile() {
    if [ -f "$HOME/.$1" ]; then
        echo "There is already a .$1 file, remove this one first"
    else
        ln -s "$(dirname "$(pwd)/$0")/.$1" "$HOME/.$1"
        echo "Installed .$1"
    fi
}

copy_dotfile vimrc
copy_dotfile tmux.conf

# Only do WM stuff on macOS, requires chunkwm
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "On macOS, installing WM"
    copy_dotfile chunkwmrc
    copy_dotfile skhdrc
else
    echo "Not on macOS, skipping WM"
fi

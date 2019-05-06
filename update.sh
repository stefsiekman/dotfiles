if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "On macOS, updating WM"
    brew services restart chunkwm
    brew services restart skhd
else
    echo "Not on macOS, skipping WM"
fi

EXTENSION_FILE="extensions.txt"

echo "Exporting list of installed VSCode extensions to $EXTENSION_FILE"
code --list-extensions > "$EXTENSION_FILE"

if [ $? -eq 0 ]; then
    echo "Export completed successfully."
else
    echo 'Failed to export extensions. Verify that the "code" command is in your PATH.'
fi

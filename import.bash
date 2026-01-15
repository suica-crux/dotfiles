EXTENSION_FILE="vscode/extensions.txt"

if [ ! -f "$EXTENSION_FILE" ]; then
    echo "No extensions file found at $EXTENSION_FILE. Skipping export."
    exit 0
fi

echo "Starting installation of VSCode extensions from $EXTENSION_FILE"

while IFS= read -r extension_id
do
  if [[ -n "$extension_id" ]]; then
    echo "Installing extension: $extension_id"
    code --install-extension "$extension_id"
  fi
done < "$EXTENSION_FILE"

echo "VSCode extensions installation completed."
echo "Remember to restart VSCode if it was open during this process."
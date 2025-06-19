echo "Setting up VSCode Extensions..."
if command -v code &> /dev/null; then
  while read ext; do
    code --install-extension "$ext"
  done < vscode/extensions.txt
else
  echo "VSCode CLI (code) not found. Skipping..."
fi

echo "Done!"
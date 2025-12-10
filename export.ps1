$ExtensionFile="vscode/extensions.txt"

Write-Host "Exporting list of installed VSCode extensions to $ExtensionFile"
try {
  code --list-extensions | Out-File -FilePath $ExtensionFile -Encoding UTF8 -Force
  Write-Host "Export completed successfully."
} catch {
  Write-Host 'Failed to export extensions. Verify that the "code" command is in your PATH.'
}
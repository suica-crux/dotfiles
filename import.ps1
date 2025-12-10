$ExtensionFile="vscode/extensions.txt"

if (-not (Test-Path $ExtensionFile)) {
    Write-Host "No extensions file found at $ExtensionFile. Skipping export."
    exit 1
}

Write-Host "Starting installation of VSCode extensions from $ExtensionFile"
$Extensions = Get-Content $ExtensionFile
foreach ($extension_id in $Extensions) {
  if (-not [string]::IsNullOrWhiteSpace($extension_id)) {
    Write-Host "Installing extension: $extension_id"
    try {
      code --install-extension "$extension_id"
    } catch {
      Write-Host "Failed to install extension: $extension_id"
    }
  }
}

Write-Host "VSCode extensions installation completed."
Write-Host "Remember to restart VSCode if it was open during this process."
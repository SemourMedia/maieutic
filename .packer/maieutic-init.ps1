# maieutic-init.ps1
# The "Remote Fetch" Installer

# 1. The URL to your raw Base64 file on GitHub
$remoteUrl = "https://raw.githubusercontent.com/SemourMedia/maieutic/refs/heads/main/template_text.txt"

# 2. Local settings
$tempZip = Join-Path $env:TEMP "maieutic_payload.zip"
$dest = ".\maieutic-app"

try {
    Write-Host "[*] Fetching project template from GitHub..." -ForegroundColor Cyan
    
    # DOWNLOAD the string directly into memory
    $base64Data = Invoke-RestMethod -Uri $remoteUrl

    Write-Host "[*] Reconstructing binary data..." -ForegroundColor Cyan
    $bytes = [Convert]::FromBase64String($base64Data)
    [System.IO.File]::WriteAllBytes($tempZip, $bytes)

    if (-not (Test-Path $dest)) { New-Item -ItemType Directory -Path $dest | Out-Null }

    Write-Host "[*] Extracting files to $dest..." -ForegroundColor Cyan
    Expand-Archive -Path $tempZip -DestinationPath $dest -Force
    
    # Cleanup
    Remove-Item $tempZip -Force
    Write-Host "[+] Setup Complete! Your environment is ready in $dest" -ForegroundColor Green
}
catch {
    Write-Error "Failed to initialize: $($_.Exception.Message)"
}
# Pack-Template.ps1
# This script bundles a folder into a self-extracting PowerShell script.

# --- CONFIGURATION ---
$SourceFolder      = "public-builds\template"        # The folder you want to pack
$OutputZip         = "public-builds\template.zip"    # Temporary zip location
$FinalScriptPath   = "public-builds\maieutic-init.ps1" # The script to be generated
$UnpackFolderName  = "extracted-template"            # Name of folder after unpacking

# 1. Clean up old artifacts
if (Test-Path $OutputZip) { Remove-Item $OutputZip -Force }

Write-Host "[*] Zipping $SourceFolder..." -ForegroundColor Cyan
# 2. Zip the source folder
Compress-Archive -Path "$SourceFolder\*" -DestinationPath $OutputZip -Force

Write-Host "[*] Converting to Base64..." -ForegroundColor Cyan
# 3. Read bytes and convert to Base64 string
$bytes = [System.IO.File]::ReadAllBytes($OutputZip)
$base64 = [Convert]::ToBase64String($bytes)

# 4. Generate the Unpacker Script content
# We use a 'Here-String' to define the template for the new script
$ScriptTemplate = @"
# maieutic-init.ps1 (Generated)
# This is a self-contained installer.

`$base64Data = '$base64'
`$tempZip = Join-Path `$env:TEMP "temp_bundle.zip"
`$dest = ".\$UnpackFolderName"

Write-Host "[*] Reconstructing files..." -ForegroundColor Cyan
`$bytes = [Convert]::FromBase64String(`$base64Data)
[System.IO.File]::WriteAllBytes(`$tempZip, `$bytes)

if (-not (Test-Path `$dest)) { New-Item -ItemType Directory -Path `$dest | Out-Null }

Write-Host "[*] Extracting to `$dest..." -ForegroundColor Cyan
Expand-Archive -Path `$tempZip -DestinationPath `$dest -Force
Remove-Item `$tempZip -Force

Write-Host "[+] Installation Complete!" -ForegroundColor Green
"@

Write-Host "[*] Writing final script to $FinalScriptPath..." -ForegroundColor Cyan
# 5. Save the generated script
Set-Content -Path $FinalScriptPath -Value $ScriptTemplate -Encoding UTF8

# 6. Cleanup the temporary zip
Remove-Item $OutputZip -Force

Write-Host "[!] Done! You can now share $FinalScriptPath" -ForegroundColor Green
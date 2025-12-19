# Generate-Base64.ps1
# Specifically designed to create the template_base64.txt file

# --- SETTINGS ---
$SourcePath = "public-builds\template"
$ZipPath = "public-builds\template.zip"
$OutputPath = "public-builds\template_base64.txt"

try {
    # 1. Zip the folder
    Write-Host "[*] Compressing $SourcePath..." -ForegroundColor Cyan
    Compress-Archive -Path "$SourcePath\*" -DestinationPath $ZipPath -Force

    # 2. Read the Zip file as Bytes
    Write-Host "[*] Reading binary data..." -ForegroundColor Cyan
    $bytes = [System.IO.File]::ReadAllBytes($ZipPath)

    # 3. Convert Bytes to Base64 String
    Write-Host "[*] Converting to Base64 string..." -ForegroundColor Cyan
    $base64 = [Convert]::ToBase64String($bytes)

    # 4. Output validation (matches your log check)
    $len = $base64.Length
    Write-Host "[+] String generated. Length: $len characters (~$([math]::Round($len/1KB, 2)) KB)" -ForegroundColor Green

    # 5. Save to file with NO NEWLINE
    # This is critical so the string doesn't break when read by other scripts
    Write-Host "[*] Saving to $OutputPath..." -ForegroundColor Cyan
    Set-Content -Path $OutputPath -Value $base64 -NoNewline

    # 6. Cleanup the intermediate ZIP
    Remove-Item $ZipPath -Force
    Write-Host "[!] Process Complete." -ForegroundColor Yellow
}
catch {
    Write-Error "Failed to generate Base64: $($_.Exception.Message)"
}
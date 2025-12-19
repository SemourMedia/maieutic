# plant_maieutic.ps1
# PHASE 3: PLANT

param(
    [string]$DestPath = ".",
    [string]$RemoteUrl = "https://raw.githubusercontent.com/SemourMedia/maieutic/refs/heads/main/template_text.txt"
)

$ErrorActionPreference = "Stop"

function Log-Message {
    param([string]$Msg)
    Write-Host "[INFILTRATE] $Msg" -ForegroundColor Green
}

try {
    Log-Message "Starting Phase 3: Planting Maieutic..."

    # Use a temp directory for download/extraction
    $tempZip = Join-Path $env:TEMP "maieutic_payload.zip"
    
    Log-Message "Fetching project template from GitHub..."
    $base64Data = Invoke-RestMethod -Uri $RemoteUrl

    Log-Message "Reconstructing binary data..."
    $bytes = [Convert]::FromBase64String($base64Data)
    [System.IO.File]::WriteAllBytes($tempZip, $bytes)

    Log-Message "Extracting Maieutic files to $DestPath..."
    Expand-Archive -Path $tempZip -DestinationPath $DestPath -Force

    # Cleanup
    Remove-Item $tempZip -Force
    Log-Message "Maieutic Planted Successfully."

}
catch {
    Write-Error "Plant Failed: $($_.Exception.Message)"
}

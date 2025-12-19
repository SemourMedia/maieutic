# archive_and_isolate.ps1
# PHASE 1 & 2: SAFETY & ISOLATION

param(
    [string]$RootPath = ".",
    [string]$ArchiveDirName = "_archive",
    [string]$AppDirName = "maieutic-app"
)

$ErrorActionPreference = "Stop"

function Log-Message {
    param([string]$Msg)
    Write-Host "[INFILTRATE] $Msg" -ForegroundColor Cyan
}

try {
    $timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
    $archiveDir = Join-Path $RootPath $ArchiveDirName
    $scratchDir = Join-Path $RootPath "$AppDirName\scratch"

    # --- PHASE 1: ARCHIVE ---
    Log-Message "Starting Phase 1: Archiving..."
    
    if (-not (Test-Path $archiveDir)) {
        New-Item -ItemType Directory -Path $archiveDir -Force | Out-Null
    }

    # Get all items to archive (excluding the archive dir itself to prevent recursion loop)
    # We also exclude .git to keep the zip size reasonable, unless requested otherwise.
    # For a full "Commadeer", we probably WANT .git history backup.
    $itemsToArchive = Get-ChildItem -Path $RootPath | Where-Object { $_.Name -ne $ArchiveDirName }
    
    $zipPath = Join-Path $archiveDir "commandeer_backup_$timestamp.zip"
    
    if ($itemsToArchive) {
        Compress-Archive -Path $itemsToArchive.FullName -DestinationPath $zipPath -Update
        Log-Message "Archive created at $zipPath"
    }
    else {
        Log-Message "Directory is empty, nothing to archive."
    }

    # --- PHASE 2: ISOLATE ---
    Log-Message "Starting Phase 2: Isolation..."
    
    if (-not (Test-Path $scratchDir)) {
        New-Item -ItemType Directory -Path $scratchDir -Force | Out-Null
    }

    # Identify items to move (Exclude archive and the maieutic app folder itself)
    $itemsToMove = Get-ChildItem -Path $RootPath | Where-Object { 
        $_.Name -ne $ArchiveDirName -and 
        $_.Name -ne $AppDirName -and
        $_.Name -ne ".git" # Leave .git in root? Usually safer to keep .git in root so repo identity is preserved.
    }

    foreach ($item in $itemsToMove) {
        Log-Message "Moving $($item.Name) to scratch..."
        Move-Item -Path $item.FullName -Destination $scratchDir -Force
    }
    
    Log-Message "Isolation complete. Legacy code is now in $scratchDir"

}
catch {
    Write-Error "Infiltration Failed: $($_.Exception.Message)"
}

# test_infiltration.ps1
# Manually verify the Infiltration Protocol scripts

$testDir = Join-Path $PWD "temp_legacy_repo"
$scriptsDir = Join-Path $PWD "scripts\infiltration"

# Clean up previous runs
if (Test-Path $testDir) { Remove-Item $testDir -Recurse -Force }
New-Item -ItemType Directory -Path $testDir | Out-Null

# 1. Setup Dummy Legacy Repo
Write-Host "Creating dummy legacy repo..."
New-Item -Path "$testDir\src" -ItemType Directory | Out-Null
New-Item -Path "$testDir\docs" -ItemType Directory | Out-Null
Set-Content -Path "$testDir\src\main.py" -Value "print('legacy')"
Set-Content -Path "$testDir\docs\readme.txt" -Value "legacy docs"
Set-Content -Path "$testDir\README.md" -Value "# Legacy Project"

# 2. Run Phase 1 & 2: Archive & Isolate
Write-Host "Running Archive & Isolate..."
& "$scriptsDir\archive_and_isolate.ps1" -RootPath $testDir

# Verify Phase 1 & 2
if (-not (Test-Path "$testDir\_archive")) { Write-Error "Archive dir missing!"; exit }
if (-not (Test-Path "$testDir\maieutic-app\scratch\src\main.py")) { Write-Error "Src main.py not moved to scratch!"; exit }
if (Test-Path "$testDir\src") { Write-Error "Original src dir still exists in root!"; exit }

Write-Host "Phase 1 & 2 Verified." -ForegroundColor Green

# 3. Skip Phase 3 (Plant) as it downloads from web. We simulate it by creating the app dir (already done by Isolate)

# 4. Run Phase 4: Digest
Write-Host "Running Digest..."
& "$scriptsDir\digest.ps1" -RootPath $testDir

# Verify Phase 4
if (-not (Test-Path "$testDir\maieutic-app\scratch\DIGESTION_PLAN.md")) { Write-Error "Digestion Plan missing!"; exit }

$planContent = Get-Content "$testDir\maieutic-app\scratch\DIGESTION_PLAN.md" -Raw
if ($planContent -match "src\\main.py") { 
    Write-Host "Digestion Plan Verified." -ForegroundColor Green 
}
else {
    Write-Error "Digestion Plan content incorrect."
}

# Cleanup
# Remove-Item $testDir -Recurse -Force
Write-Host "Test Complete. artifacts left in $testDir for inspection."

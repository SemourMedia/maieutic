@echo off
set "SCRIPT_DIR=%~dp0"
set "REPORTS_DIR=%SCRIPT_DIR%..\..\docs\reports"
set "ARCHIVE_DIR=%REPORTS_DIR%\archive"

if not exist "%ARCHIVE_DIR%" mkdir "%ARCHIVE_DIR%"

REM Archives automated reports (Audit, Critique, Compete, Invest, Test, Secure).
REM Implementation Plans are stored in docs/dev-plans/ and are NOT archived by this script.

echo Running Smart Retention Archival...
powershell -Command "$types = @('AUDIT', 'CRITIQUE', 'COMPETE', 'INVEST', 'TEST', 'SECURE', 'YAP'); $reportsDir = '%REPORTS_DIR%'; $archiveDir = '%ARCHIVE_DIR%'; foreach ($type in $types) { $files = Get-ChildItem -Path $reportsDir -Filter \"$type-*.md\" | Sort-Object Name -Descending; if ($files.Count -gt 1) { $files | Select-Object -Skip 1 | Move-Item -Destination $archiveDir -Force; Write-Host \"Archived older $type reports.\"; } }"
echo Done.

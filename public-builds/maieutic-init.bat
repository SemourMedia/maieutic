@echo off
setlocal enabledelayedexpansion

echo ================================================================
echo   MAIEUTIC FRAMEWORK INITIALIZER
echo   "A tool to create more tools"
echo ================================================================
echo.

:: Check if manifest.json already exists (abort if yes)
if exist "manifest.json" (
    echo [ERROR] manifest.json already exists in this directory.
    echo [ERROR] Maieutic may already be initialized here. Aborting.
    exit /b 1
)

:: Get the script's directory (where the template folder should be)
set "SCRIPT_DIR=%~dp0"
set "TEMPLATE_DIR=%SCRIPT_DIR%template"

:: Check if template directory exists
if not exist "%TEMPLATE_DIR%" (
    echo [ERROR] Template directory not found at: %TEMPLATE_DIR%
    echo [ERROR] Ensure maieutic-init.bat is in the same folder as the template/ directory.
    exit /b 1
)

:: Prompt for project name
set /p PROJECT_NAME="Enter project name: "
if "%PROJECT_NAME%"=="" (
    echo [ERROR] Project name cannot be empty. Aborting.
    exit /b 1
)

:: Prompt for version
set /p VERSION="Enter version (default: 0.1.0): "
if "%VERSION%"=="" set VERSION=0.1.0

:: Prompt for identity
set /p AGENT_IDENTITY="Enter agent identity (e.g. Lead Developer): "
if "%AGENT_IDENTITY%"=="" set AGENT_IDENTITY=Lead Developer

:: Prompt for goal
set /p PROJECT_GOAL="Enter project goal: "
if "%PROJECT_GOAL%"=="" set PROJECT_GOAL=To build a great tool.

echo.
echo [INFO] Initializing Maieutic for: %PROJECT_NAME% v%VERSION%
echo.

:: Copy template contents to current directory
echo [1/4] Copying framework structure...
xcopy "%TEMPLATE_DIR%\*" "." /E /I /Y /Q >nul 2>&1

:: Rename manifest.json.template to manifest.json
echo [2/4] Creating manifest.json...
if exist "manifest.json.template" (
    :: Replace placeholders using PowerShell (more reliable for string replacement)
    powershell -Command "(Get-Content 'manifest.json.template') -replace '\[PROJECT_NAME\]', '%PROJECT_NAME%' -replace '\[VERSION\]', '%VERSION%' -replace '\[AGENT_IDENTITY\]', '%AGENT_IDENTITY%' -replace '\[PROJECT_GOAL\]', '%PROJECT_GOAL%' | Set-Content 'manifest.json'"
    del manifest.json.template
) else (
    echo [WARN] manifest.json.template not found. Manual configuration required.
)

:: Create .gitignore if it doesn't exist
echo [3/4] Creating .gitignore...
if not exist ".gitignore" (
    echo # Maieutic defaults> .gitignore
    echo __pycache__/>> .gitignore
    echo *.pyc>> .gitignore
    echo .env>> .gitignore
    echo config/secrets.yaml>> .gitignore
    echo data/>> .gitignore
    echo venv/>> .gitignore
)

:: Create requirements.txt if it doesn't exist
echo [4/4] Creating requirements.txt...
if not exist "requirements.txt" (
    echo # Maieutic dependencies> requirements.txt
    echo # Add your dependencies here>> requirements.txt
)

echo.
echo ================================================================
echo   SUCCESS! Maieutic initialized for: %PROJECT_NAME%
echo ================================================================
echo.
echo Next steps:
echo   1. Run: python -m venv venv
echo   2. Run: venv\Scripts\activate
echo   3. Run: pip install -r requirements.txt
echo   4. Use /plan, /build, /audit workflows with your AI assistant
echo.
echo Happy building!
echo.

endlocal

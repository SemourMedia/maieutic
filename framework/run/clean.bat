@echo off
REM clean.bat - Recursively delete __pycache__ folders and .pyc files
echo [CLEAN] Starting cleanup of .pyc and __pycache__...

REM Delete .pyc files
echo [CLEAN] Deleting .pyc files...
del /s /q /f *.pyc

REM Delete __pycache__ directories
echo [CLEAN] Deleting __pycache__ directories...
for /d /r . %%d in (__pycache__) do @if exist "%%d" rd /s /q "%%d"

echo [CLEAN] Cleanup complete.
python -c "print('Cleanup Verified')"

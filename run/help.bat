@echo off
echo Available Shortcuts:
echo ----------------------------------------------------------------
echo run\server.bat        - Start Web Server (Auto-Fixes Port Conflicts)
echo run\ingest.bat        - Run Gmail Sync Pipeline
echo run\test.bat          - Run Automated Tests
echo run\audit.bat         - Audit Ledger Integrity
echo run\kill.bat          - Force Kill All Python Processes
echo.
echo Account Management:
echo ----------------------------------------------------------------
echo run\account-add.bat   - Add New Gmail Account (OAuth)
echo run\account-list.bat  - List All Registered Accounts
echo run\account-sync.bat  - Sync All Accounts (or specific: sync email)
echo run\account-remove.bat ^<email^> - Deactivate Account
echo.
echo Database:
echo ----------------------------------------------------------------
echo run\db-reset.bat      - Clear Database (requires confirmation)
echo ----------------------------------------------------------------

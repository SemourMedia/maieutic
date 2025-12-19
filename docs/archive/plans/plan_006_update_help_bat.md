# Plan 006: Update help.bat to Reflect Actual Scripts

## Problem Statement

The current `framework/run/help.bat` has:
- References to non-existent scripts (`audit.bat`, `kill.bat`)
- Missing `clean.bat` (which exists)
- Generic placeholder sections

Related to **ISSUE_002** in `ISSUES.md`.

---

## Current State

```batch
@echo off
echo maieutic run commands:
echo ----------------------------------------------------------------
echo run\test.bat          - Run Automated Tests
echo run\audit.bat         - Audit Ledger Integrity      ❌ MISSING
echo run\kill.bat          - Force Kill All Python       ❌ MISSING
echo.
echo Section:                                            ⚠️ PLACEHOLDER
echo ----------------------------------------------------------------
echo run\example.bat   - Example Command (Placeholder)
...
```

**Actual scripts in `framework/run/`:**
| Script | Status |
|--------|--------|
| `clean.bat` | ✅ Exists |
| `test.bat` | ✅ Exists |
| `help.bat` | ✅ Exists |

---

## Proposed Changes

### [MODIFY] [help.bat](file:///c:/Users/ethan/Documents/GitHub/maieutic/framework/run/help.bat)

```batch
@echo off
echo maieutic run commands:
echo ----------------------------------------------------------------
echo run\help.bat          - Display this help menu
echo run\clean.bat         - Remove __pycache__ and .pyc files
echo run\test.bat          - Run automated tests
echo.
echo Maintenance:
echo ----------------------------------------------------------------
echo (No scripts yet - see ISSUE_002)
echo.
echo Development:
echo ----------------------------------------------------------------
echo (No scripts yet - see ISSUE_002)
echo ----------------------------------------------------------------
```

---

## Verification

1. Run `framework\run\help.bat`
2. Confirm output lists only existing scripts

---

## Confidence: **95/100**

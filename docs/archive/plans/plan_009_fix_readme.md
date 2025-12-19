# Plan 009: Documentation Integrity Fixes

## Problem Statement

The Audit Report (2025-12-19) identified a **CRITICAL FAILURE** in documentation integrity. `README.md` and `DIRECTORY_STRUCTURE.md` reference multiple files and directories that no longer exist or were moved, specifically legacy artifacts (`scripts/`, `web/`) and missing configuration/docs (`SCHEMA.md`).

---

## Proposed Changes

### Phase 1: Fix README.md

#### [MODIFY] [README.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/README.md)
1. **Quick Start Section:**
   - Remove legacy setup commands (`init_db.py`, `venv` setup if specific to old structure).
   - Point users to `framework/run/help.bat` as the primary entry point.
   - Remove references to missing run scripts (`server.bat`, `ingest.bat`).
2. **Project Structure Section:**
   - Remove `scripts/` and `web/`.
   - Update `run/` -> `framework/run/`.
3. **Documentation Table:**
   - Remove `SCHEMA.md` entry (file does not exist).
   - Verify other links.

### Phase 2: Fix DIRECTORY_STRUCTURE.md

#### [MODIFY] [DIRECTORY_STRUCTURE.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/docs/dev/DIRECTORY_STRUCTURE.md)
1. Remove `.DEV_README.md` entry (file missing).

---

## Verification

1. **Manual Check:** Read `README.md` to ensure no broken links remain.
2. **Automated Audit:** Run `/audit` workflow.
   - Expect **PASS** on Documentation Integrity.
   - Expect **PASS** on Naming Conventions.

---

## Confidence: **95/100**
*Straightforward documentation cleanup to match current state.*

# Plan 007: Legacy Cleanup

## Problem Statement

Two active issues require resolution:
- **ISSUE_001:** `scripts/` and `web/` directories exist but are deprecated
- **ISSUE_002:** References outdated scripts (`start.bat`, `server.bat`, `ingest.bat`) that are no longer relevant

---

## Proposed Changes

### Phase 1: Delete Legacy Directories

#### [DELETE] `scripts/`
- Contains only `__init__.py` stubs
- No critical code remains

#### [DELETE] `web/`
- Legacy directory from previous project structure

---

### Phase 2: Update Documentation

#### [MODIFY] [ISSUES.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/docs/dev/ISSUES.md)

Mark both issues as **RESOLVED**:
- ISSUE_001: Deleted `scripts/` and `web/`
- ISSUE_002: Obsolete (references removed, no scripts needed)

#### [MODIFY] [DIRECTORY_STRUCTURE.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/docs/dev/DIRECTORY_STRUCTURE.md)

Remove `scripts/` and `web/` if listed.

---

## Verification

1. Confirm `scripts/` and `web/` no longer exist
2. Server/framework still functions (no dependencies)
3. `help.bat` already updated (Plan 006)

---

## Confidence: **90/100**

Low risk—deleting empty stub directories with no dependencies.

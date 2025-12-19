# Plan 010: Archive Consolidation & Smart Retention

## 1. Goal
Simplify the directory structure by centralizing all archive folders into `docs/archive/` and implementing "Smart Retention" for reports (keeping only the newest of each type in the active folder).

## 2. Changes
### Directory Structure
#### [MODIFY] [directory structure](file:///c:/Users/ethan/Documents/GitHub/maieutic/docs/dev/DIRECTORY_STRUCTURE.md)
*   **Consolidate:**
    *   `docs/dev-plans/archive/` -> `docs/archive/plans/`
    *   `docs/reports/archive/` -> `docs/archive/reports/`
*   **Update:** `DIRECTORY_STRUCTURE.md` to reflect these changes.

### Framework Logic
#### [MODIFY] [archive.bat](file:///c:/Users/ethan/Documents/GitHub/maieutic/framework/run/archive.bat)
*   **Target:** `docs/archive/reports/`
*   **New Logic ("Smart Retention"):**
    *   Iterate through each valid report type (AUDIT, CRITIQUE, COMPETE, INVEST, TEST, SECURE).
    *   Identify the **newest** file of that type (by timestamp/name sort).
    *   Move **all other** files of that type to the archive.
    *   *Implementation Detail:* Will use a PowerShell one-liner embedded in the `.bat` file for robust sorting and filtering.

## 3. Verification
*   **Audit:** Run `@/audit` to ensure no orphaned directories or broken paths.
*   **Test:** Create dummy reports, run `archive.bat`, and verify only the newest remains.

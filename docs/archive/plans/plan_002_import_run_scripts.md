# IMP_PLAN: [002] Import & Templatize Run Scripts

**Status:** Draft
**Owner:** The Dreamer / The Planner
**Confidence Score:** 90%

## 1. Objective
Import the suite of operational batch scripts from `EXTERNALIMPORTMOVETHESE/run` into the `framework/run` directory. Convert them into generic templates by replacing project-specific strings (e.g., "Local Asset OS") with placeholders (e.g., `[PROJECT_NAME]`), allowing them to serve as a robust starting point for any project built on this framework.

## 2. User Review Required
> [!NOTE]
> `run\start.bat` was referenced in `README.md` but is missing from the import source. I will assume `run\server.bat` is the equivalent or primary entry point for now.

## 3. Proposed Changes

### Script Import & Templating
#### [NEW] [framework/run/](file:///c:/Users/ethan/Documents/GitHub/christain/framework/run/)
Destination for all scripts.

#### [MODIFY] [framework/run/*.bat](file:///c:/Users/ethan/Documents/GitHub/christain/framework/run/)
Copy all files and apply the following transformations:
*   `db-reset.bat`:
    *   `LOCAL ASSET OS` -> `[PROJECT_NAME]`
    *   Specific warnings (Gmail, etc.) -> Keep for now as "Opinionated Defaults" (per Critique), or generalize if strictly requested. *Decision: Keep opinions but template the name.*
*   `kill.bat`:
    *   `local-asset-os` (process filter) -> `[PROJECT_SLUG]` (or `python` filter adjustment to be more generic if possible, but `[PROJECT_SLUG]` is safer).
*   `help.bat`:
    *   Ensure all listed commands match the imported files.

### Workflow Integration
#### [MODIFY] [framework/README.md](file:///c:/Users/ethan/Documents/GitHub/christain/framework/README.md)
*   Update the "Quick Start" section to reference `run\server.bat` instead of `run\start.bat` (or rename `server.bat` to `start.bat` if that's preferred. *Decision: Use server.bat as it's more descriptive, update README.*).
*   List the new available commands.

## 4. Verification Plan

### Automated Verification
*   **Script**: `verify_plan_002.py`
    *   Check for existence of all `.bat` files in `framework/run`.
    *   Verify `[PROJECT_NAME]` placeholder exists in `db-reset.bat`.

### Manual Verification
*   Inspect `framework/run` to ensure all files are present.
*   Review `framework/README.md` for correct command references.

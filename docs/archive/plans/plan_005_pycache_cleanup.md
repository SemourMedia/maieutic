# IMP_PLAN: [005] Pycache Cleanup Utilities

**Status:** Draft
**Owner:** The Planner
**Confidence Score:** 100%

## 1. Objective
Create a developer utility script (`run/clean.bat`) to recursively remove all `__pycache__` directories and `.pyc` files from the repository. This improves hygiene and ensures clean execution states.

## 2. User Review Required
None.

## 3. Proposed Changes

### Run Scripts
#### [NEW] [run/clean.bat](file:///c:/Users/ethan/Documents/GitHub/maieutic/run/clean.bat)
*   Implement a batch script that:
    1.  Recursively finds and deletes `__pycache__` directories.
    2.  Recursively finds and deletes `*.pyc` files.
    3.  Prints a success message.

## 4. Verification Plan

### Automated Verification
*   **Script**: `tests/verify_clean.bat` (Transient)
    *   Create a dummy `__pycache__` directory and a `.pyc` file in a temporary location.
    *   Run `run/clean.bat`.
    *   Assert that the files are gone.

### Manual Verification
*   Run `run/clean.bat` manually and observe output.

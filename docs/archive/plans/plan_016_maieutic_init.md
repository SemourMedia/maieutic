# Plan 016: Self-Integration Script (`maieutic-init`)

**Goal**: Create a portable script that scaffolds the full Maieutic framework into any external project root.

## User Review Required

> [!IMPORTANT]
> This plan creates a **distributable artifact** (`public-builds/maieutic-init.bat`). This is a core capability enabling Maieutic to propagate itself.

## Proposed Changes

### Template Directory
#### [NEW] `public-builds/template/`
A clean, templatized copy of the Maieutic scaffold:
-   `.agent/` (workflows, rules)
-   `docs/` (dev protocols, issues, structure - with placeholders)
-   `framework/` (core, personas, run scripts)
-   `manifest.json.template` (with `[PROJECT_NAME]`, `[VERSION]` placeholders)

---

### Init Script
#### [NEW] `public-builds/maieutic-init.bat`
A Windows batch script that:
1.  Detects if target directory already has Maieutic files (abort if yes).
2.  Copies `public-builds/template/*` to current directory.
3.  Prompts user for `PROJECT_NAME` and `VERSION`.
4.  Renames/replaces placeholders in `manifest.json.template` → `manifest.json`.
5.  Outputs success message.

---

### Documentation
#### [MODIFY] `framework/run/help.bat`
Add entry for `maieutic-init.bat`.

#### [MODIFY] `README.md`
Add "Quick Start (New Project)" section referencing `maieutic-init.bat`.

## Verification Plan

### Manual Verification
1.  Copy `maieutic-init.bat` to an empty test directory.
2.  Run the script.
3.  Verify all expected directories and files are created.
4.  Verify `manifest.json` contains user-provided values.

## Confidence Score
**95%** - Clear requirements from FEAT_003. Minor ambiguity on cross-platform support (PowerShell vs Bash), but `.bat` is explicitly scoped.

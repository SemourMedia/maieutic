# Infiltration Protocol

The **Infiltration Protocol** is a specialized Maieutic workflow designed to "commandeer" an existing codebase. Instead of starting fresh, Maieutic infiltrates the target repository, archives its current state, and systematically refactors it into the `maieutic-app` format.

## Overview

The process consists of 4 distinct phases:

### Phase 1: Archive (Safety First)
- **Action**: Create a complete zip archive of the current repository state.
- **Location**: `_archive/commandeer_backup_[TIMESTAMP].zip`
- **Purpose**: Ensure that no matter what happens during the infiltration, the original state can be restored.

### Phase 2: Isolate (Prepare for Surgery)
- **Action**: Move *all* existing files (excluding the archive and the Infiltration Kit itself) into a temporary "scratch" directory.
- **Location**: `maieutic-app/scratch/`
- **Result**: The root directory is now clean and ready for Maieutic's structure, while the legacy code is safely isolated in `scratch`.

### Phase 3: Plant (Establish the Colony)
- **Action**: Unpack the standard Maieutic directory structure and configuration files into the root.
- **Includes**: `manifest.json`, `.agent/`, `docs/`, `scripts/`, etc.
- **Result**: The repo is now technically a Maieutic app, but it has no logic yet (other than the framework).

### Phase 4: Digest (The Recursive Refactor)
- **Action**: A recursive loop of **Yap -> Critique -> Plan -> Build** that iterates through the files in `maieutic-app/scratch/`.
- **Logic**:
    1.  **Analyze**: What does this file do?
    2.  **Map**: Where does it belong in the Maieutic structure? (e.g., `projects/CoreLogic`, `framework/utils`, `docs/legacy`)
    3.  **Refactor & Move**: Systematically move and (optionally) refactor the code to adhere to Maieutic's strict standards (Monochrome logs, No hardcoding, etc.).
    4.  **Verify**: Ensure the moved code still functions.

## Usage

To initiate the protocol, use the specialized slash command:

```bash
/infiltrate
```

> [!WARNING]
> This is a destructive operation for the file structure. Ensure you have backups (though Phase 1 creates one, external backups are recommended).

# IMP_PLAN: [001] Framework Simplification & Opinionated Defaults

**Status:** Draft
**Owner:** The Planner
**Confidence Score:** 98%

## 1. Objective
Simplify the framework by centralizing bureaucratic documentation (`MASTER_SPECS.md`, `PHASES.md`) into a single machine-readable `manifest.json`. This enforces "Local Sovereignty" via hardcoded defaults and provides a structured "source of truth" without the markdown bloat.

## 2. User Review Required
> [!IMPORTANT]
> This plan DELETES `docs/dev/MASTER_SPECS.md` and `docs/dev/PHASES.md` in favor of a root-level `manifest.json`.

## 3. Proposed Changes

### Framework Root
#### [NEW] [manifest.json](file:///c:/Users/ethan/Documents/GitHub/christain/framework/manifest.json)
*   **Purpose**: Single source of truth for project config, philosophy, and roadmap.
*   **Structure**:
    ```json
    {
      "project": "[PROJECT_NAME]",
      "version": "0.1.0",
      "philosophy": {
        "name": "Local Asset OS",
        "core_principle": "Local Sovereignty",
        "defaults": { "db": "sqlite", "network": "local-first" }
      },
      "phases": [
         { "id": 1, "name": "Foundation", "status": "completed" },
         { "id": 2, "name": "Core Capabilities", "status": "active" }
      ]
    }
    ```

#### [MODIFY] [README.md](file:///c:/Users/ethan/Documents/GitHub/christain/framework/README.md)
*   **Philosophy Section**: Explicitly state "Local Sovereignty" as the guiding principle.
*   **Cleanup**: Remove generic placeholders that are now handled by `manifest.json`.

### Documentation
#### [DELETE] [MASTER_SPECS.md](file:///c:/Users/ethan/Documents/GitHub/christain/framework/docs/dev/MASTER_SPECS.md)
*   *Reason*: Replaced by `manifest.json`.

#### [DELETE] [PHASES.md](file:///c:/Users/ethan/Documents/GitHub/christain/framework/docs/dev/PHASES.md)
*   *Reason*: Replaced by `manifest.json`.

#### [MODIFY] [DIRECTORY_STRUCTURE.md](file:///c:/Users/ethan/Documents/GitHub/christain/framework/docs/dev/DIRECTORY_STRUCTURE.md)
*   Update to include `manifest.json` and remove deleted files.

## 4. Verification Plan

### Automated Verification
*   **Script**: Create a temporary script `verify_plan_001.py` to:
    *   Assert `docs/dev/MASTER_SPECS.md` does not exist.
    *   Assert `docs/dev/PHASES.md` does not exist.
    *   Assert `manifest.json` exists and contains valid JSON with "Local Sovereignty".

### Manual Verification
*   Review `manifest.json` for structural correctness.

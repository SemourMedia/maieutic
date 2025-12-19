---
description: Infiltration Protocol - Commandeer and Refactor Legacy Codebases
---

# Infiltration Protocol

The Infiltration Protocol allows Maieutic to take over an existing repository, archive its contents, and systematically refactor it into the Maieutic structure.

## Workflow

### 1. Archive & Isolate (Phase 1 & 2)
Safely backup the current repository and move all contents to a scratch area.
// turbo
1. Run `scripts/infiltration/archive_and_isolate.ps1`

### 2. Plant (Phase 3)
Establish the Maieutic framework in the root directory.
// turbo
2. Run `scripts/infiltration/plant_maieutic.ps1`

### 3. Digest (Phase 4)
Analyze the legacy code and generate a migration plan.
// turbo
3. Run `scripts/infiltration/digest.ps1`

### 4. Recursive Refactoring Cycle
Iterate through the `maieutic-app/scratch/DIGESTION_PLAN.md` and process files.

For each major component or directory in `scratch`:
1.  **Yap**: Analyze the component's purpose.
2.  **Critique**: Identify violations of Maieutic rules (e.g., hardcoding, quiet fails).
3.  **Plan**: Create a refactoring plan to move the code to `projects/[ComponentName]` and fix issues.
4.  **Build**: Execute the moves and refactors.
5.  **Clean**: Verify the move and delete the original from `scratch`.

Repeat until `scratch` is empty.

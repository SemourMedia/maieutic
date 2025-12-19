# Plan 013: Auto-Incrementing Plan Counter

## Goal Description
Implement `FEAT_002`: Reduce administrative friction by automating the sequential numbering of implementation plans. The `manifest.json` will track the `latest_plan_number`. The `/plan` workflow will read this value, increment it for the new plan (e.g., `012` -> `013`), and write the new value back to the manifest.

## User Review Required
> [!IMPORTANT]
> This plan modifies `manifest.json` schema and the core `/plan` workflow.

## Proposed Changes
### Governance
#### [MODIFY] [manifest.json](file:///c:/Users/ethan/Documents/GitHub/maieutic/manifest.json)
- Add `"latest_plan_number": 13` to the root object.

### Workflows
#### [MODIFY] [.agent/workflows/plan.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/workflows/plan.md)
- Update "The Planner" prompt logic to:
    1. Read `latest_plan_number` from `manifest.json`.
    2. Increment the number.
    3. Use the new number for the plan filename `plan_[NEW_NUM]_[NAME].md`.
    4. **CRITICAL:** Update `manifest.json` with the new `latest_plan_number`.

## Verification Plan
### Manual Verification
- Run a dummy `/plan` command (e.g., "Add a hello world script").
- Verify the generated plan has ID `014`.
- Verify `manifest.json` updates to `14`.

## Confidence Score
**100/100**
- Clear requirement.
- Simple logic change.

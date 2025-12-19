# Plan 015: Persona Consolidation

**Goal**: Consolidate the 14+ functional personalities into 8 "High-Density Personas" to reduce cognitive load while preserving all capabilities.

## User Review Required
> [!IMPORTANT]
> This is a major governance change. It involves deleting/archiving existing rule files and changing the persona triggers for several workflows.
> **Breaking Changes**:
> - `builder.md` renamed to `executor.md`.
> - `visionary.md`, `investor.md`, `protector.md`, `visualizer.md` will be archived/deleted.
> - Workflows like `/vision`, `/invest`, `/secure`, `/vibe` will now trigger different personas.

## Proposed Changes

### Manifest & Documentation
#### [MODIFY] [manifest.json](file:///C:/Users/ethan/Documents/GitHub/maieutic/manifest.json)
-   Replace `personas` array with new 8-persona list.
-   Increment `latest_plan_number` to 15.

#### [MODIFY] [README.md](file:///C:/Users/ethan/Documents/GitHub/maieutic/README.md)
-   Update "Workflows (Slash Commands)" table.

### Rule Files (.agent/rules/)
#### [NEW] [executor.md](file:///C:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/executor.md)
-   Created from `builder.md`.
-   Trigger: `/build`, `/starter`.
-   Role: The Executor.

#### [MODIFY] [planner.md](file:///C:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/planner.md)
-   Add triggers: `/vision`, `/invest`.
-   Absorb roles: Strategist, Investor.

#### [MODIFY] [auditor.md](file:///C:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/auditor.md)
-   Add trigger: `/secure`.
-   Absorb role: Security Specialist.

#### [MODIFY] [critic.md](file:///C:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/critic.md)
-   Add triggers: `/vibe`, `/compete`.
-   Absorb roles: Visualizer, Benchmarker.

#### [DELETE] Obsolete Rules
-   `builder.md` (renamed to executor)
-   `visionary.md`
-   `investor.md`
-   `protector.md`
-   `visualizer.md`

### Workflow Files (.agent/workflows/)
-   Update `vision.md`, `invest.md`, `secure.md`, `vibe.md`, `compete.md`, `starter.md` to reference their new consolidated Personas.

## Verification Plan
### Manual Verification
1.  **Manifest Check**: Verify `manifest.json` contains exactly 8 personas and `latest_plan_number` is 15.
2.  **Workflow Check**: Check that `README.md` reflects the new table.
3.  **Rule Check**: Verify `.agent/rules/` contains only the 8 active persona files.
4.  **Audit**: Run `/audit` (if available) to check for broken links or references (The Auditor itself is being preserved, so this is safe).

## Confidence Score
**100%** - User provided exact specifications.

# Plan 017: Template Remediation (Sycronization & Integrity)

**Goal**: Synchronize `public-builds/template` with the parent project's consolidated state and fix broken references identified in the critique.

## User Review Required

> [!IMPORTANT]
> This plan involves deleting redundant configuration files in the template and injecting core governance rules into the template's manifest.

## Proposed Changes

### File Deletions (Amputations)
- **[DELETE]** `public-builds/template/.agent/rules/rules.md`
- **[DELETE]** `public-builds/template/.agent/workflows/rules.md`
- **[DELETE]** `public-builds/template/framework/core/llm/`
- **[DELETE]** `public-builds/template/framework/core/memory/`
- **[DELETE]** `public-builds/template/framework/core/utils/`

### File Creations
#### [NEW] `public-builds/template/docs/dev/STYLING.md`
A clean, project-agnostic design system guide to fix broken references in persona rules.

### Governance Reinforcement
#### [MODIFY] `public-builds/template/manifest.json.template`
Inject the following core rules from the parent project:
- `RUN_001` (Script documentation)
- `RUN_002` (Auto-archiving)
- `NAME_001`, `NAME_002`, `NAME_003` (Naming conventions)
- `PERSONA_001` (Persona immutability)

### Script Optimization
#### [MODIFY] `public-builds/maieutic-init.bat`
- Add prompts for `AGENT_IDENTITY` (e.g., Lead Developer) and `PROJECT_GOAL`.
- Update PowerShell replacement logic to handle `[AGENT_IDENTITY]` and `[PROJECT_GOAL]` placeholders.

## Verification Plan

### Manual Verification
1. Run `maieutic-init.bat` in a test directory.
2. Verify `manifest.json` contains full governance block.
3. Verify no `rules.md` files exist in the child project.
4. Verify `docs/dev/STYLING.md` exists and is readable.

## Confidence Score
**98%** - Direct response to a "FAIL" audit. Logic is straightforward remediation.

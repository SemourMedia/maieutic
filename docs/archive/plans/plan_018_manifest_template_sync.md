# Plan 018: Manifest Template Sync (Structural Integrity)

**Goal**: Synchronize `public-builds/template/manifest.json.template` with initialization script prompts and parent project governance.

## User Review Required

> [!NOTE]
> Per user request, the "Naming Convention Bloat" (regex definitions) identified in the critique will NOT be removed.

## Proposed Changes

### Manifest Template Optimization
#### [MODIFY] `public-builds/template/manifest.json.template`
- **Add Fields**: Inject `"identity": "[AGENT_IDENTITY]"` and `"description": "[PROJECT_GOAL]"` into the root or philosophy block to catch values from `maieutic-init.bat`.
- **Sync Rationale**: Update `PERSONA_001` rationale to match the parent project word-for-word.

## Verification Plan

### Manual Verification
1. Inspect `public-builds/template/manifest.json.template` for new fields.
2. Verify `PERSONA_001` rationale contains the full "cognitive diversity" text.

## Confidence Score
**100%** - Straightforward data mapping and text synchronization.

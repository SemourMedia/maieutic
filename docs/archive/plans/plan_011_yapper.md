# Plan 011: Yapper Workflow & Persona

## Goal Description
Create a new "Yapper" persona and workflow designed to analyze the entire codebase and generate a comprehensive "YAP" report explaining how the system works. This includes adding the workflow file, the persona rule definition, and updating the manifest to recognize the new report type.

## User Review Required
> [!NOTE]
> None. Routine addition of new capability.

## Proposed Changes

### Configuration
#### [MODIFY] [manifest.json](file:///c:/Users/ethan/Documents/GitHub/maieutic/manifest.json)
- Add "YAP" to `maieutic.naming_conventions.reports.valid_types`.

### Documentation / Rules
#### [NEW] [docs/dev/rules/yapper.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/docs/dev/rules/yapper.md)
- Define the "The Yapper" persona.
- Mission: Comprehensive codebase analysis and explanation.
- Tone: Expansive, thorough, unbridled.
- Logic: Scan everything, explain everything.

### Workflow
#### [NEW] [.agent/workflows/yapper.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/workflows/yapper.md)
- Define the steps for the `/yapper` workflow.
- Trigger: `@/yapper`.
- Instructions: Read key files (manifest, directory structure), then analyze the codebase and generate the report.
- Output: `docs/reports/YAP-[DATETIME].md`.

## Verification Plan

### Automated Tests
- None appropriate for this metadata change.

### Manual Verification
1. **Manifest Validation**: Check `manifest.json` for valid JSON syntax.
2. **Workflow Existence**: Verify `.agent/workflows/yapper.md` exists.
3. **Persona Existence**: Verify `docs/dev/rules/yapper.md` exists.
4. **Execution Test**: Run `@[/yapper]` to verify it generates a report.

## Confidence Score
**95/100**
- Low risk, additive change.
- Follows standard patterns for workflows and personas.

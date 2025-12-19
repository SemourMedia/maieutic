# Plan 014: Exhaustive Report Archival

## Goal Description
The current `archive.bat` script only archives a subset of report types (Audit, Critique, Compete, Invest, Test, Secure). It is missing the `YAP` report type defined in `manifest.json`. This plan will update the script to include all valid report types to ensure clean and organized documentation.

## User Review Required
> [!NOTE]
> This change simply adds `YAP` to the archival list. It does not change the underlying logic of smart retention.

## Proposed Changes

### Framework / Run
#### [MODIFY] [archive.bat](file:///c:/Users/ethan/Documents/GitHub/maieutic/framework/run/archive.bat)
- Add `'YAP'` to the `$types` array in the PowerShell command at line 12.

### Governance
#### [MODIFY] [manifest.json](file:///c:/Users/ethan/Documents/GitHub/maieutic/manifest.json)
- Increment `latest_plan_number` to 14.

## Verification Plan

### Manual Verification
1. Create a dummy YAP report: `echo test > docs/reports/YAP-20251219-000000.md`.
2. Create another dummy YAP report: `echo test > docs/reports/YAP-20251219-000001.md`.
3. Run `framework\run\archive.bat`.
4. Verify that `YAP-20251219-000000.md` is moved to `docs/reports/archive/`.
5. Verify that `YAP-20251219-000001.md` remains in `docs/reports/`.

## Confidence Score
**100/100**
- Small, targeted fix.
- Directly addresses the user request.

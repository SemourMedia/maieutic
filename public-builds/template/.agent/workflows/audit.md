---
description: The Auditor - specific cold regression audit.
---

1. Read the following context files:
   - `manifest.json`
   - `framework/` (or core source directory)
   - `docs/dev/ISSUES.md`
   - `docs/dev/DEV_PROTOCOLS.md`
   - `.agent/rules/auditor.md`

2. Adopt the persona of "The Auditor" and execute the following logic:
   - **Prompt**: "Conduct a cold regression audit. Scan for historical patterns from ISSUES.md. Check for 'Quiet Fails' and hardcoded paths. **Critically, verify that the current directory structure and file naming conventions strictly adhere to the rules defined in `manifest.json`.** Output a PASS/FAIL status."
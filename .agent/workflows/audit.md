---
description: The Auditor - specific cold regression audit.
---

1. Read the following context files:
   - `scripts/` (or core source directory)
   - `docs/dev/ISSUES.md`
   - `docs/dev/DEV_PROTOCOLS.md`
   - `docs/dev/rules/auditor.md`

2. Adopt the persona of "The Auditor" and execute the following logic:
   - **Prompt**: "Conduct a cold regression audit. Scan for historical patterns from ISSUES.md. Check for 'Quiet Fails' and hardcoded paths. Output a PASS/FAIL status."

---
description: The Security Specialist - Audit plans or code for security.
---

1. Read the following context files:
   - `docs/dev/DEV_PROTOCOLS.md`
   - `manifest.json`
   - `.agent/rules/auditor.md`

2. Adopt the persona of "The Auditor" and execute the following logic:
   - **Prompt**: "Audit the proposed plan/code for security vulnerabilities. Check for: Injections, Hardcoded Secrets, Insecure Dependencies. Report vulnerabilities."
   - **Output**: Save the report to `docs/reports/` using the naming convention `SECURE-YYYYMMDD-HHMMSS.md`.

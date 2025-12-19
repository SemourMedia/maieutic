# Project Constitution & Rules

## 1. The One Truth
Ground yourself in manifest.json. It is the single source of truth for project configuration, phases, and active state. All other documentation is secondary.

## 2. Agnostic Code
- **Never hardcode paths.** Use relative paths or configuration loaders.
- **Never hardcode secrets.** Use environment variables or a secure keyring.
- **OS Agnostic:** Prefer cross-platform compatible commands where possible, but default to PowerShell/Batch for Windows-specific automation if strictly necessary.

## 3. No Quiet Fails
- Every try/except or try/catch block **MUST** log errors to data/logs/.
- Fail loudly and descriptively if a critical operation cannot proceed.

## 4. Recursive Memory
- Before starting a major task, check ISSUES.md for past regressions or recurring problems.
- If you fix a regression, update ISSUES.md to prevent it from happening again.

## 5. Aesthetic
- Enforce high-density, monochrome terminal styling for CLI outputs.
- Avoid 'AI' or 'SaaS' marketing fluff. Be technical, precise, and utilitarian.

## 6. Local Sovereignty
- This project is a 'Local Asset.' It assumes it runs on the user's machine.
- Do not rely on external cloud services unless explicitly configured by the user.

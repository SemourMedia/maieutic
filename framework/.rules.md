# ANTIGRAVITY CONSTITUTION: [PROJECT_NAME]
**Project:** [PROJECT_NAME]
**Identity:** [AGENT_IDENTITY] (e.g., Lead Developer & Multi-Agent Orchestrator)
**Goal:** [PROJECT_GOAL]

---

## ⚖️ THE HIERARCHY OF TRUTH
Before any action, you must ground yourself in these files in order:
1. **Scope:** `docs/dev/MASTER_SPECS.md` & `docs/dev/PHASES.md`.
2. **Laws:** `docs/dev/DEV_PROTOCOLS.md` (No hardcoding, mandatory logging).
3. **Visuals:** `docs/dev/STYLING.md` (Design System & Aesthetic).
4. **Memory:** `docs/dev/ISSUES.md` (Recursive failure log).
5. **Structure:** `docs/dev/DIRECTORY_STRUCTURE.md`.

---

## 🚫 FORBIDDEN PATTERNS
- **No Manual Installs:** Use `requirements.txt`; do not use `pip install` in code.
- **No Quiet Fails:** Empty `except` blocks are forbidden. Log all errors to `data/logs/`.
- **No "SaaS" Vibe:** [OPTIONAL: DEFINE VISUAL ANTI-PATTERNS].
- **No Rogue Files:** All files must exist within the `DIRECTORY_STRUCTURE.md` manifest.

## ✅ REQUIRED PATTERNS
- **Logging:** All scripts must import the core logger.
- **Agnostic Code:** Load all variables from configuration files.
- **Plan First:** Complex tasks require a plan in `dev_plans/` before execution.
- **Recursive Logic:** Check `ISSUES.md` before fixing bugs to avoid regressions.

---

## 🎭 PERSONA ORCHESTRATION
You operate as specialized personas triggered by `/` commands. Each persona is a distinct "part of the machine" with its own tone and constraints.
- **R&D:** `/vision`, `/dream`, `/compete`, `/critique`, `/invest`.
- **Execution:** `/plan`, `/secure`, `/build`, `/vibe`, `/test`, `/audit`, `/update`.

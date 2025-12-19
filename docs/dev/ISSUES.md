# AI-Managed Issue Repository

> **System Note:** This file is a persistent knowledge base. Issues are **never deleted**. Once resolved, they are moved to the "Historical/Resolved" section to serve as context for future troubleshooting.

---

## 🛑 Active & Blocking Issues

### ISSUE_004: Workflow Path Mismatch
* **Status:** **RESOLVED** (Update Workflow 2025-12-19)
* **Severity:** Low
* **Domain:** Governance / Documentation
* **Description:** The `/critique` and `/update` workflows referenced `docs/dev_plans/active_plan.md`, but the actual path is `docs/dev-plans/active_plan.md` (hyphen, not underscore).
* **Root Cause:** Documentation-reality mismatch during directory refactor.
* **Fix Applied:** Updated `.agent/workflows/critique.md` and `.agent/workflows/update.md` to use correct path.
* **Verification:** Workflows now reference correct path.

### ISSUE_005: Persona Bloat
* **Status:** **INVALIDATED** (PERSONA_001 Rule Added 2025-12-19)
* **Severity:** N/A
* **Domain:** Architecture / Governance
* **Description:** 12 personas are defined in `manifest.json`, but only ~5 are regularly used. This increases cognitive overhead and maintenance burden.
* **Source:** CRITIQUE-20251219-063609.md
* **Resolution:** Governance rule PERSONA_001 now forbids persona removal. Personas are declared IMMUTABLE. Recommendation is invalid.

### ISSUE_008: Manifest Template Dissonance
* **Status:** **ACTIVE** (Blocking)
* **Severity:** Low
* **Domain:** Distribution / Template
* **Description:** `manifest.json.template` lacks fields for `AGENT_IDENTITY` and `PROJECT_GOAL` collected by the init script. Rationale for `PERSONA_001` is inconsistent with parent.
* **Source:** CRITIQUE-20251219-080500.md
* **Recommendation:** Update template manifest structure to accept identity/goal and sync rule rationales.

---


## ✅ Historical / Resolved

### ISSUE_001: Legacy Framework Deprecation
* **Status:** **RESOLVED** (Plan 007 Executed)
* **Root Cause:** `scripts/` and `web/` directories were orphaned from previous project structure.
* **Fix Applied:** Deleted both directories.
* **Verification:** Directories no longer exist.

### ISSUE_002: Missing Operational Scripts
* **Status:** **RESOLVED** (Obsolete)
* **Root Cause:** References to `start.bat`, `server.bat`, `ingest.bat` were archaic holdovers.
* **Fix Applied:** Removed from documentation. No scripts needed for framework template.
* **Verification:** `help.bat` updated in Plan 006.

### ISSUE_003: Orphaned Plan 005 (Pycache)
* **Status:** **RESOLVED** (Plan 005 Executed)
* **Root Cause:** Plan was skipped during refactor.
* **Fix Applied:** Implemented `framework/run/clean.bat`.
* **Verification:** `tests/verify_clean.bat` passed.


# Features & Enhancements Repository

> **System Note:** This file tracks the roadmap for visual improvements, user interactivity, and analytical upgrades. Unlike `ISSUES.md`, this is a living document for growth and non-critical optimizations.

---

## 🚀 Active & Planned Features

### FEAT_001: Genesis Wizard (`/genesis`)

* **Priority:** High
* **Domain:** Framework / Personas
* **Description:** A conversational wizard-style persona that populates and updates `manifest.json`. Focuses on non-maieutic sections: `project`, `version`, `philosophy`, and `phases`. Can be re-invoked anytime to modify the manifest interactively.
* **Technical Path:** 
  1. Create `docs/dev/rules/genesis.md` (persona definition)
  2. Create `.agent/workflows/genesis.md` (workflow trigger)
  3. Reads/writes `manifest.json` directly
### FEAT_002: Auto-Incrementing Plan Counter

* **Priority:** Medium
* **Domain:** Governance / Workflow
* **Description:** Reduce administrative friction by automating the sequential numbering of implementation plans. The `manifest.json` will track the `latest_plan_number`. The `/plan` workflow will read this value, increment it for the new plan (e.g., `012` -> `013`), and write the new value back to the manifest.
* **Technical Path:**
  1. Add `"latest_plan_number": [INTEGER]` to `manifest.json` root.
  2. Update `.agent/workflows/plan.md` to instruct the Planner to read/write this value.
* **Status:** Planned

### FEAT_003: Self-Integration Script (`maieutic-init`)

* **Priority:** High
* **Domain:** Framework / Distribution
* **Description:** A portable script (`.bat`/`.ps1`/`.py`) that can be dropped into any external project's root directory. On execution, it scaffolds the full Maieutic framework into that project, including:
    *   `.agent/` (workflows + rules)
    *   `docs/` (dev protocols, issues, structure)
    *   `framework/` (core, personas, run scripts)
    *   A templated `manifest.json` with project-specific placeholders.
* **Technical Path:**
    1.  Create `public-builds/maieutic-init.bat` (or `.ps1`).
    2.  Script clones/copies a "clean template" from `public-builds/template/`.
    3.  Script runs a minimal wizard to populate `manifest.json` (project name, version).
    4.  Optional: Integrate with `/starter` workflow for post-init configuration.
* **Congruency:** ✅ Perfect alignment with core principle: "A tool to create more tools."
* **Status:** ✅ IMPLEMENTED (Plan 016)

### FEAT_004: Self-Contained Initializer (No Copy/Paste)

* **Priority:** High
* **Domain:** Framework / Distribution
* **Description:** An evolution of FEAT_003. Instead of requiring users to copy both `maieutic-init.bat` and the `template/` folder, create a **single self-contained script** (PowerShell or Python) that **embeds the entire template structure within itself**. On execution, it extracts/generates all directories, files, and configurations from embedded data (e.g., base64-encoded archives or inline heredocs).
* **Technical Path:**
    1.  Create `public-builds/maieutic-init.ps1` (PowerShell) or `.py` (Python).
    2.  Embed the template directory structure as compressed/encoded data within the script.
    3.  Script unpacks the embedded data, then runs the placeholder wizard.
    4.  Result: A **single file** that can be dropped anywhere and executed.
* **Benefits:**
    *   Zero copy/paste friction.
    *   True "one-liner" initialization.
    *   Easier distribution (single file vs. folder structure).
* **Congruency:** ✅ Perfect alignment with core principle: "A tool to create more tools."
* **Status:** Dream (Phase 2)


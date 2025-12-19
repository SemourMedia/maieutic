# Walkthrough - Plan 009: Persona Renaming (Asymmetric Setup)

Synchronized the naming convention as requested: Rule file is `yapper.md`, Workflow file is `yap.md`.

## Changes Made

### 🎭 Persona & Rule Sync
- Renamed `.agent/rules/yap.md` back to `.agent/rules/yapper.md`.
- Workflow remains `.agent/workflows/yap.md`.
- Internal persona name is **"THE YAP"** and trigger command is **`/yap`**.

### 🔄 Workflow Alignment
- Updated `.agent/workflows/yap.md` to point to `.agent/rules/yapper.md`.
- Adopt logic remains focused on the "The Yap" persona.

### 📜 Governance layer
- Updated `manifest.json`: Persona `id` is `yap`, `role` is `The Yap`, and `rule_file` is `.agent/rules/yapper.md`.
- Updated Root Constitutions: Both `.rules.md` and `.agent/rules/rules.md` recognize the `/yap` command.

### 📁 Documentation
- Updated `DIRECTORY_STRUCTURE.md` to reflect the asymmetric setup where `yapper.md` is the rule file.

## Verification Results

### Path Integrity
- Verified `manifest.json` points to the correctly named rule file.
- Verified `yap.md` workflow reads from `yapper.md`.
- Verified `/yap` command is available in core rules.

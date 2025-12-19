# Plan 008: NAME_001 Remediation

## Problem Statement

Audit identified 2 **NAME_001** violations (directories must be `lowercase-hyphen-separated`):
- `docs/dev_plans` → uses underscore
- `projects/hello_world` → uses underscore

---

## Proposed Changes

### Phase 1: Rename Directories

```powershell
Rename-Item "docs/dev_plans" "dev-plans"
Rename-Item "projects/hello_world" "hello-world"
```

---

### Phase 2: Update References (16 files)

| File | Reference |
|------|-----------|
| `README.md` | Line 68 |
| `DIRECTORY_STRUCTURE.md` | Line 40 |
| `.rules.md` | Line 27 |
| `docs/dev/rules/planner.md` | Lines 14, 21 |
| `docs/dev/rules/executor.md` | Line 13 |
| `docs/dev/rules/dreamer.md` | Line 25 |

*Audit reports and plan files reference the old name but are historical context only.*

---

## Verification

1. `Test-Path "docs/dev-plans"` → returns True
2. `Test-Path "projects/hello-world"` → returns True
3. Run `/audit` → NAME_001 should PASS

---

## Confidence: **85/100**


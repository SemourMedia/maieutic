# Plan 009: Rename Yapper to Yap

Rename all remaining "yapper" references to "yap" and correct the command to "/yap" across the codebase for consistency with the new workflow filename.

## Proposed Changes

---

### Personas (Rules & Workflows)

#### [RENAME] [.agent/rules/yapper.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/yapper.md) -> [.agent/rules/yap.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/yap.md)

#### [MODIFY] [.agent/rules/yap.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/yap.md)
Update persona name, trigger command, and any internal references to "yapper".

#### [MODIFY] [.agent/workflows/yap.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/workflows/yap.md)
Update reference from `.agent/rules/yapper.md` to `.agent/rules/yap.md`. Update description to use "Yap".

---

### Governance & Manifest

#### [MODIFY] [manifest.json](file:///c:/Users/ethan/Documents/GitHub/maieutic/manifest.json)
Update `id`, `role` (if applicable), and `rule_file` path for the yapper persona.

---

### Global Sync

#### [MODIFY] [.rules.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.rules.md)
#### [MODIFY] [.agent/rules/rules.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/rules.md)
Update command reference if present.

## Verification Plan

### Automated Verification
- **Grep Search**: Verify no case-insensitive "yapper" references remain in `.agent/`.
- **Grep Search**: Verify no "/yapper" commands remain in the codebase.

### Manual Verification
- Verify `/yap` triggers the correct persona logic.

## Reversion (Asymmetric Rename)
- The plan was later amended to rename the rule file back to `yapper.md` while keeping the workflow as `yap.md` and the command as `/yap`.

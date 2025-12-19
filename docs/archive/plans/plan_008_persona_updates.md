# Plan 008: Persona/Role Values Update and Expansion

Update and expand all persona definitions in `.agent/rules/` using the refined personalities from `temp/02.md` and the established template in `.agent/rules/builder.md`. Ensure systemic consistency across workflows and `manifest.json`.

## User Review Required

> [!IMPORTANT]
> **Reference Redirection:** `temp/02.md` refers to `MASTER_SPECS.md` and `PHASES.md`, which were deprecated and replaced by `manifest.json` in Plan 001. I have updated the persona directives to point to `manifest.json` to ensure the agents can actually find their "source of truth."

> [!NOTE]
> **Role Renaming:** 
> - "The Builder" (/build) is being renamed to **"The Executor"** to align with `temp/02.md`.
> - "The Protector" (/secure) is being renamed to **"The Sentinel"** to align with `temp/02.md`.
> - "The Starter" (/genesis) remains as is, as it wasn't explicitly redefined in `temp/02.md` but is part of the system.

## Proposed Changes

---

### Personas (Rules & Workflows)

Apply the `builder.md` template structure to all persona rule files, including the new `## REFINED OUTPUT` section.

#### [MODIFY] [.agent/rules/builder.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/builder.md)
Update role to "The Executor", update directive, voice, and archetype. Add refined output.

#### [MODIFY] [.agent/rules/planner.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/planner.md)
Update directive (pointing to `manifest.json`), voice, archetype, and add refined output.

#### [MODIFY] [.agent/rules/visualizer.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/visualizer.md)
Update directive, voice, archetype, and add refined output.

#### [MODIFY] [.agent/rules/tester.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/tester.md)
Update directive, voice, archetype, and add refined output.

#### [MODIFY] [.agent/rules/protector.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/protector.md)
Update role to "The Sentinel", update directive, voice, and archetype. Add refined output.

#### [MODIFY] [.agent/rules/visionary.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/visionary.md)
Update directive, voice, archetype, and add refined output.

#### [MODIFY] [.agent/rules/dreamer.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/dreamer.md)
Update directive (pointing to `manifest.json`), voice, archetype, and add refined output.

#### [MODIFY] [.agent/rules/investor.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/investor.md)
Update directive, voice, archetype, and add refined output.

#### [MODIFY] [.agent/rules/auditor.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/auditor.md)
Update directive, voice, archetype, and add refined output.

#### [MODIFY] [.agent/rules/yapper.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/yapper.md)
Update directive, voice, archetype, and add refined output.

#### [MODIFY] [.agent/rules/updater.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/updater.md)
Update directive, voice, archetype, and add refined output.

#### [MODIFY] [.agent/rules/critic.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/rules/critic.md)
Expand with refined output (not in `temp/02.md` but added for consistency).

---

### Governance & Manifest

#### [MODIFY] [manifest.json](file:///c:/Users/ethan/Documents/GitHub/maieutic/manifest.json)
- Update `role` strings to match the new persona names ("The Executor", "The Sentinel").

---

### Workflows

#### [MODIFY] [.agent/workflows/build.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/workflows/build.md)
#### [MODIFY] [.agent/workflows/secure.md](file:///c:/Users/ethan/Documents/GitHub/maieutic/.agent/workflows/secure.md)
- Update "Adopt the persona of..." instructions to use the new names.

## Verification Plan

### Automated Verification
- **Audit Workflow**: Run `/audit` to ensure the new persona definitions don't violate any naming conventions or structural rules.
- **Yapper Report**: Run `/yapper` to see if the system can still explain itself correctly with the new persona names.

### Manual Verification
- Verify that a slash command (e.g., `/build`) correctly triggers the "Executor" persona in the UI.
- Verify through direct chat that the persona tone matches the new definitions.

# IMPLEMENTATION PLAN: System Personalities & Governance Layer

## Goal Description
Implement the "Governance Layer" by strictly defining 11 distinct agent personas (The Execution Team, The R&D Team, The Meta-Maintenance Team) as markdown rule files. Connect these rules to the "Workflow Layer" (triggers) and the "Factory Layer" (Python adapter) to ensure every agent operates with the correct voice, constraints, and "Hierarchy of Truth". This aligns with the Maieutic Meta-Framework architecture.

## User Review Required
> [!IMPORTANT]
> This plan involves a systemic update to all workflow files and the core LLM adapter. It establishes the "Soul" of the machine.
> A key change is the enforcement of `docs/dev/rules/*.md` as the primary "System Prompt" source.

## Proposed Changes

### Governance Layer (The Soul)
Create or Update the following rule files in `docs/dev/rules/` with the specific "Hierarchy of Truth" and "System Directive" defined in `temp/02.md`.

#### [NEW] `docs/dev/rules/executor.md`
#### [MODIFY] `docs/dev/rules/planner.md`
#### [NEW] `docs/dev/rules/visualizer.md`
#### [NEW] `docs/dev/rules/tester.md`
#### [NEW] `docs/dev/rules/sentinel.md`
#### [NEW] `docs/dev/rules/visionary.md`
#### [NEW] `docs/dev/rules/dreamer.md`
#### [NEW] `docs/dev/rules/investor.md` (Matches command /invest)
#### [NEW] `docs/dev/rules/auditor.md`
#### [NEW] `docs/dev/rules/critic.md`
#### [NEW] `docs/dev/rules/updater.md`
#### [NEW] `docs/dev/rules/yapper.md`

### Workflow Layer (The Nervous System)
Update the `Context` section of all corresponding workflow files in `.agent/workflows/` to explicitly read the new rule files.

#### [MODIFY] `.agent/workflows/build.md` (Reads `executor.md`)
#### [MODIFY] `.agent/workflows/plan.md` (Reads `planner.md`)
#### [MODIFY] `.agent/workflows/vibe.md` (Reads `visualizer.md`)
#### [MODIFY] `.agent/workflows/test.md` (Reads `tester.md`)
#### [MODIFY] `.agent/workflows/secure.md` (Reads `sentinel.md`)
#### [MODIFY] `.agent/workflows/vision.md` (Reads `visionary.md`)
#### [MODIFY] `.agent/workflows/dream.md` (Reads `dreamer.md`)
#### [MODIFY] `.agent/workflows/invest.md` (Reads `investor.md`)
#### [MODIFY] `.agent/workflows/audit.md` (Reads `auditor.md`)
#### [MODIFY] `.agent/workflows/critique.md` (Reads `critic.md`)
#### [MODIFY] `.agent/workflows/update.md` (Reads `updater.md`)
#### [MODIFY] `.agent/workflows/yapper.md` (Reads `yapper.md`)

### Factory Layer (The Muscles)
Refine the core adapter to ingest the content of these rule files as the primary system prompt.

#### [MODIFY] `framework/core/llm/adapter.py`
- Implement logic to detect which rule file to load based on the active workflow or trigger.
- Prepend the content of the rule file to the LLM context.

### Registration (The Birth)
#### [MODIFY] `manifest.json`
- Register the new agents/personas if required to validate slash commands or define the "Team" structure.

## Verification Plan

### Automated Tests
- Run `/yapper` and verify the output tone matches the "Academic/Narrative" voice defined in `yapper.md`.
- Run `/plan` and verify the output includes the "Confidence Score" and "Hierarchy of Truth" references.

### Manual Verification
- Inspect `docs/dev/rules/` to ensure all 11 files exist.
- Check a sample workflow (e.g., `build.md`) to verify the context inclusion.

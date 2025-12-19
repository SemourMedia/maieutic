---
description: The Planner - Create technical implementation plans.
---

1. Read the following context files:
   - `docs/dev/ISSUES.md`
   - `manifest.json`
   - `docs/dev/FEATURES_ENHANCEMENTS.md`
   - `.agent/rules/planner.md`

2. Adopt the persona of "The Planner" and execute the following logic:
   - **Prompt**: "Create a technical implementation plan for: {{TASK}}. Prioritize Bugs (from ISSUES.md) > Phases > Dreams. You MUST read the `latest_plan_number` from `manifest.json`, increment it by 1 (e.g., 13 -> 14), and use this new number for the plan ID. Draft a new file in docs/dev_plans/ and output a Confidence Score (1-100)."
   - **Constraint**: "You MUST explicitly save the plan as a new file: `docs/dev-plans/plan_[NEW_ID]_[NAME].md`. You MUST also update `manifest.json` with the new `latest_plan_number`."

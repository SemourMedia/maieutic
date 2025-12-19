---
description: The Planner - Create technical implementation plans.
---

1. Read the following context files:
   - `docs/dev/ISSUES.md`
   - `docs/dev/PHASES.md`
   - `docs/dev/FEATURES_ENHANCEMENTS.md`
   - `docs/dev/rules/planner.md`

2. Adopt the persona of "The Planner" and execute the following logic:
   - **Prompt**: "Create a technical implementation plan for: {{TASK}}. Prioritize Bugs (from ISSUES.md) > Phases > Dreams. Draft a new file in docs/dev_plans/ and output a Confidence Score (1-100)."

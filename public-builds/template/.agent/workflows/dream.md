---
description: The Dreamer - Brainstorm and verify ideas against project scope.
---

1. Read the following context files:
   - `manifest.json`
   - `docs/dev/FEATURES_ENHANCEMENTS.md`
   - `.agent/rules/dreamer.md`

2. Adopt the persona of "The Dreamer" and execute the following logic:
   - **Prompt**: "Review the user's idea: {{TASK}}. Verify congruency with manifest.json (Phases). If valid, 'Dream' it into FEATURES_ENHANCEMENTS.md. If invalid, ask 3 clarifying questions."

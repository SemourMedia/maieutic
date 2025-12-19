# Logic & Agent Rules

## 1. Philosophy
**"[AGENT_CODENAME]."** The Agent is intelligent but cautious. It suggests actions locally; the user confirms them; the system executes them.
* **Data Depth:** We operate on [DATA_LEVEL] (e.g., extracted text, metadata).

## 2. Agent Workflows

### Workflow A: The Classification Loop
1.  **Ingest:** New content arrives.
2.  **Trigger:** System records event.
3.  **Analyze:** Agent reads the content.
4.  **Tag:** Agent updates metadata with suggestions.

### Workflow B: The Active Loop
1.  **User Action:** User confirms suggestion.
2.  **Local Commit:** Local state updates immediately.
3.  **Background Sync:** Worker processes the queue.
4.  **Execute:** External API calls made.
5.  **Conflict Resolution:** Strategy defined (e.g., Append/Remove).

## 3. The Registry
The Agent cannot invent constants that don't exist in the system.
* **Startup:** Sync registries from source.
* **Runtime:** Reference IDs from local registry interactions.

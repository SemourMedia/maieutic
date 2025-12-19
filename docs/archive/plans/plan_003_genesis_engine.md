# IMP_PLAN: [003] The Genesis Engine (Universal Meta-Framework)

**Status:** Approved
**Target:** Universal Application Factory
**Philosophy:** "The Codebase that Builds Codebases"

---

## 1. The Pivot: From "App" to "Factory"

We are transitioning `christain` from a single application (Local Asset OS) into a **Universal Meta-Framework**. This framework will act as a "Genesis Engine"—a development environment where autonomous agents interview the user, architect a solution, and build entirely new, isolated applications within a monorepo structure.

### Core Principles

* **Genesis Loop:** The entry point is always a conversation, not a blank file. The system "interviews" the user to build a manifest.
* **Monorepo Sovereignty:** All generated projects live in `projects/[PROJECT_NAME]`, each with its own isolated `venv`.
* **Strict Persona Roles:** specialized agents (Dreamer, Architect, Executor) handle distinct phases of the lifecycle.
* **Safety via Prediction:** The `Planner` must flag high-risk actions *before* execution.
* **Development Only:** This framework is a tool for developers. It is never deployed directly; it *publishes* builds.

---

## 2. Revised Directory Structure

The codebase will be reorganized to separate the **Framework (The Factory)** from the **Projects (The Products)**.

```text
[ROOT]
│
├── framework/                  # THE FACTORY (Meta-Framework Code)
│   ├── core/
│   │   ├── llm/                # Adapter Layer (Antigravity/OpenAI/Ollama)
│   │   ├── memory/             # JSON State Managers
│   │   └── utils/              # Shared Tools (Logging, I/O)
│   │
│   ├── personas/               # Agent Logic Definitions
│   │   ├── dreamer.py          # The Interviewer
│   │   ├── planner.py          # The Strategist & Risk Manager
│   │   ├── architect.py        # Dependency & Env Manager
│   │   ├── executor.py         # The Builder
│   │   ├── auditor.py          # The Critic
│   │   ├── publisher.py        # Release Manager
│   │
│   ├── templates/              # Jinja2 Templates for new apps
│   └── run/                    # Framework Operation Scripts
│
├── projects/                   # THE PRODUCTS (Generated Apps live here)
│   ├── snake_game_v1/          # [Example]
│   │   ├── .venv/              # Isolated Environment
│   │   ├── src/
│   │   └── manifest.json       # The Project "DNA"
│   └── ...
│
├── public-builds/              # THE EXPORTS (Clean builds ready for use)
│   ├── snake_game_v1.0.zip
│   └── ...
│
├── docs/                       # Framework Documentation
└── config/                     # Global Settings (API Keys, LLM selection)

```

---

## 3. The "Genesis" Workflow

### Phase 1: The Interview (The Dreamer)

**Trigger:** `run/genesis.bat` (or CLI entry)

1. **Interaction:** The **Dreamer** persona initiates a CLI conversation.
2. **Probing:** It asks rounds of 3 questions to clarify intent, scope, and tech stack.
3. **Output:** A structured `draft_manifest.json` is updated in real-time.
```json
{
  "project_name": "super_calculator",
  "intent": "A python CLI calculator for taxes",
  "stack": ["python", "pandas"],
  "risk_level": "low"
}

```



### Phase 2: The Blueprint (The Planner & Architect)

**Trigger:** User confirms `draft_manifest.json`.

1. **Risk Analysis:** The **Planner** scans the request. If "High Risk" (file deletion, network access) is detected, it flags for Human-in-the-Loop confirmation.
2. **Environment Setup:** The **Architect** creates the directory `projects/super_calculator` and initializes a fresh `venv`.
3. **Dependency Locking:** The **Architect** writes a strict `requirements.txt` based on the approved stack.

### Phase 3: Construction (The Executor)

**Trigger:** Blueprint Approved.

1. **Build Loop:** The **Executor** reads the plan and generates code into `projects/super_calculator/src`.
2. **Isolation:** All code execution happens inside the project's specific `venv`.
3. **Live Logs:** The user watches "Terminal-style" output as files are created.

### Phase 4: Validation (The Auditor)

**Trigger:** Build Complete.

1. **Static Analysis:** The **Auditor** scans the new code for "Blocker" violations (Hardcoded secrets, absolute paths).
2. **Integration Test:** Runs the project's own tests. If they fail, it kicks back to the Executor.

### Phase 5: Release (The Publisher)

**Trigger:** `/publish` command.

1. **Sanitization:** The **Publisher** copies the working code to `public-builds/`.
2. **Cleanup:** Strips out framework metadata (`manifest.json`, logs) leaving only the functional application.
3. **Versioning:** Tags the folder (e.g., `public-builds/super_calculator_v1.0`).

---

## 4. Persona Definitions (Technical Specs)

### 🎭 The Dreamer (Interviewer)

* **Role:** Requirements Gathering.
* **Behavior:** Inquisitive, clarifying.
* **Key Capability:** "Self-Healing Conversation" (If the user is vague, it asks specific probing questions).
* **IO:** Reads/Writes `projects/[NAME]/manifest.json`.

### 🧠 The Planner (Strategist)

* **Role:** Task decomposition & Safety.
* **Behavior:** Paranoid, precise.
* **Key Capability:** **Predictive Risk Scoring**. It must refuse to pass a plan to the Executor if the "Destruction Value" is too high without user override.

### 📐 The Architect (Librarian)

* **Role:** Infrastructure & Dependencies.
* **Behavior:** Strict, rigid.
* **Key Capability:** `pip` management. It ensures `requirements.txt` is exact. It owns the `venv` creation process.

### 🔨 The Executor (Builder)

* **Role:** Code Generation.
* **Behavior:** Obedient, fast.
* **Key Capability:** Context-Aware Coding. It knows it is writing inside `projects/[NAME]/` and adjusts imports accordingly.

### 🔍 The Auditor (Critic)

* **Role:** Quality Control.
* **Behavior:** Pedantic.
* **Key Capability:** "The Veto." It can halt the pipeline if code style violates `docs/dev/DEV_PROTOCOLS.md`.

### 📦 The Publisher (Release Manager)

* **Role:** Export & Versioning.
* **Behavior:** Formal.
* **Key Capability:** Artifact generation. Moves code from "Dev" (Monorepo) to "Prod" (Public Builds).

---

## 5. Integration Layer: "Antigravity Adapter"

To ensure the framework remains agnostic (compatible with Cursor, OpenAI, Local LLMs), we will wrap the "Antigravity" SDK in a standardized class.

**File:** `framework/core/llm/adapter.py`

```python
class LLMAdapter:
    def __init__(self, provider="antigravity"):
        self.provider = provider
        
    def complete(self, prompt, context, persona):
        """
        Generic wrapper.
        If provider == 'antigravity': use proprietary SDK.
        If provider == 'cursor': use standard stdout/stdin hooks.
        If provider == 'ollama': use local API.
        """
        pass

```

---

## 6. Immediate Action Plan

**Step 1: Cleanup**

* [ ] Create the `framework/` and `projects/` directories.
* [ ] Move existing scripts into `framework/run/` (archiving them as "Legacy Examples").
* [ ] Create the `public-builds/` directory.

**Step 2: Core Logic**

* [ ] Implement `framework/core/llm/adapter.py`.
* [ ] Create the `Dreamer` loop script (`framework/personas/dreamer.py`).

**Step 3: The First Project**

* [ ] Run the Genesis Loop manually to build "Hello World".
* [ ] Verify the `venv` isolation works.

**Step 4: Safety Rails**

* [ ] Implement the Planner's "Risk Score" logic.

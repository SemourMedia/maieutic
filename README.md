# Maieutic

> **A meta-framework for building AI-assisted projects** — The tool that builds tools.

![Phase](https://img.shields.io/badge/Phase-2_Core_Capabilities-blue)
![Language](https://img.shields.io/badge/Python-3.11+-green)

---

## Overview

Maieutic is a **meta-framework** designed to scaffold, govern, and guide the development of future projects using AI-assisted workflows. Named after the Socratic method of "midwifery" (drawing forth knowledge), it assists in the *birth* of new systems.

**Philosophy: Local Sovereignty**
*   **Database:** SQLite (Default)
*   **Network:** Local-First
*   **Data Owner:** You (Sole Owner)

---

## Features

### Phase 1 (Complete ✅)
*   Framework foundation
*   Persona system (12 AI personas)
*   Workflow system (15 slash commands)
*   Governance rules and naming conventions

### Phase 2 (Active 🚧)
*   Core Capabilities (See `manifest.json`)
*   Auto-incrementing plan counter
*   Genesis wizard for project initialization

---

## Quick Start (Windows)

```bash
# 1. Setup (One time)
cd maieutic
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt

# 2. View available commands
framework\run\help.bat
```

---

## Quick Start (New Project)

To initialize Maieutic in a **new external project**:

```bash
# 1. Copy public-builds/maieutic-init.bat to your new project root
# 2. Copy public-builds/template/ folder alongside it
# 3. Run the script:
maieutic-init.bat

# 4. Follow the prompts to set project name and version
```

---

## Project Structure

```
maieutic/
├── manifest.json     # Project Spec & Philosophy
├── .agent/           # AI Agent Configuration
│   ├── workflows/    # 15 slash-command workflows
│   └── rules/        # 14 persona rule files
├── config/           # settings.yaml, secrets
├── data/             # database, logs
├── docs/             # Documentation
│   ├── dev/          # DEV_PROTOCOLS, ISSUES, STYLING
│   ├── dev-plans/    # Active development plans
│   ├── archive/      # Archived plans and reports
│   └── reports/      # Audit, Critique, Yap reports
├── framework/        # Meta-framework source code
│   ├── core/         # LLM adapters, memory, utils
│   ├── personas/     # Python persona implementations
│   ├── run/          # Batch scripts (help, clean, archive)
│   └── templates/    # Jinja2 templates
├── projects/         # Generated projects
├── public-builds/    # Clean distributable builds
└── tests/            # Unit and integration tests
```

See [docs/dev/DIRECTORY_STRUCTURE.md](docs/dev/DIRECTORY_STRUCTURE.md) for full details.

---

## Workflows (Slash Commands)

| Command | Persona | Purpose |
| :--- | :--- | :--- |
| **STRATEGY** | | |
| `/plan` | **The Planner** | Create implementation plans (Step-by-step logic) |
| `/vision` | **The Planner** | Align tasks with long-term scope and philosophy |
| `/invest` | **The Planner** | Evaluate ROI and prioritize technical debt |
| **EXECUTION** | | |
| `/build` | **The Executor** | Execute plans with rigid protocol adherence |
| `/starter` | **The Executor** | Run project initialization wizard |
| **QUALITY** | | |
| `/audit` | **The Auditor** | Cold regression scan & manifest compliance check |
| `/secure` | **The Auditor** | Security vulnerability & dependency scan |
| `/test` | **The Tester** | Design stress tests and edge cases |
| **ANALYSIS** | | |
| `/critique` | **The Critic** | Identify bloat and over-engineering |
| `/vibe` | **The Critic** | Audit UI/UX against Design System |
| `/compete` | **The Critic** | Benchmark against market alternatives |
| **CREATIVITY** | | |
| `/dream` | **The Dreamer** | Brainstorm features and "What If" scenarios |
| **MAINTENANCE** | | |
| `/update` | **The Updater** | Archive completed plans & sync docs |
| `/yap` | **The Yapper** | Generate comprehensive narrative reports |

---

## Documentation

| Doc | Purpose |
|-----|---------|
| [manifest.json](manifest.json) | **MASTER SPEC** & Roadmap |
| [DEV_PROTOCOLS.md](docs/dev/DEV_PROTOCOLS.md) | Coding standards |
| [ISSUES.md](docs/dev/ISSUES.md) | Known issues & history |
| [FEATURES_ENHANCEMENTS.md](docs/dev/FEATURES_ENHANCEMENTS.md) | Feature roadmap |

---

## License

MIT


# [PROJECT_NAME]

> **[SHORT_DESCRIPTION]** — [TAGLINE]

![Phase](https://img.shields.io/badge/Phase-[CURRENT]-blue)
![Language](https://img.shields.io/badge/[LANGUAGE]-green)

---

## Overview

[PROJECT_OVERVIEW]

**Philosophy: Local Sovereignty**
This project conforms to the "Local Asset OS" standard.
*   **Database:** SQLite (Default)
*   **Network:** Local-First
*   **Data User:** You (Sole Owner)

---

## Features

### Phase 1 (Complete ✅)
*   Foundation (See `manifest.json`)

### Phase 2 (Active 🚧)
*   Core Capabilities (See `manifest.json`)

---

## Quick Start (Windows)

We provide batch shortcuts in the `run/` directory for common tasks.

```bash
# 1. Setup (One time)
cd [PROJECT_DIR]
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt
cp config/settings.yaml.example config/settings.yaml
python scripts/core/init_db.py

# 2. Run the Application
# 2. Run the Application
run\server.bat

# Other Commands:
# run\ingest.bat       - Sync Data
# run\kill.bat         - Stop Processes
# run\db-reset.bat     - Reset Database
```

---

## Project Structure

```
[PROJECT_ROOT]/
├── manifest.json     # Project Spec & Philosophy
├── config/           # settings.yaml, secrets
├── data/             # database, logs
├── docs/             # DEV_PROTOCOLS, SCHEMA
├── scripts/          # Source code
├── web/              # Frontend/API
├── tests/            # Automated tests
└── dev_plans/        # Development planning docs
```

See [docs/DIRECTORY_STRUCTURE.md](docs/DIRECTORY_STRUCTURE.md) for full details.

---

## Documentation

| Doc | Purpose |
|-----|---------|
| [manifest.json](manifest.json) | **MASTER SPEC** & Roadmap |
| [DEV_PROTOCOLS.md](docs/dev/DEV_PROTOCOLS.md) | Coding standards |
| [SCHEMA.md](docs/dev/SCHEMA.md) | Database schema |
| [STYLING.md](docs/dev/STYLING.md) | Visual design specs |

---

## License

[LICENSE_INFO]

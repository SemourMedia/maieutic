# [PROJECT_NAME]

> **[SHORT_DESCRIPTION]** — [TAGLINE]

![Phase](https://img.shields.io/badge/Phase-[CURRENT]-blue)
![Language](https://img.shields.io/badge/[LANGUAGE]-green)

---

## Overview

[PROJECT_OVERVIEW]

---

## Features

### Phase 1 (Complete ✅)
- [FEATURE_1]
- [FEATURE_2]

### Phase 2 (Active 🚧)
- [FEATURE_3]
- [FEATURE_4]

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
run\start.bat
```

---

## Project Structure

```
[PROJECT_ROOT]/
├── config/           # settings.yaml, secrets
├── data/             # database, logs
├── docs/             # MASTER_SPECS, SCHEMA, DEV_PROTOCOLS
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
| [MASTER_SPECS.md](docs/dev/MASTER_SPECS.md) | What we're building |
| [DEV_PROTOCOLS.md](docs/dev/DEV_PROTOCOLS.md) | Coding standards |
| [SCHEMA.md](docs/dev/SCHEMA.md) | Database schema |
| [PHASES.md](docs/dev/PHASES.md) | Project roadmap |
| [STYLING.md](docs/dev/STYLING.md) | Visual design specs |

---

## License

[LICENSE_INFO]

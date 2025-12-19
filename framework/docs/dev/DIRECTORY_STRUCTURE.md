# Directory Structure & File Manifest

## Root Directory
/[PROJECT_ROOT]
│
├── /archive                # Deprecated or backup files
├── /config                 # Configuration files (Ignored by Git)
│   ├── settings.yaml       # Global settings
│   └── secrets.yaml        # [OPTIONAL] Local strategy for secrets
│
├── /run                    # Developer Shortcut Scripts (e.g., .bat or .sh)
│   ├── start.bat           # Start Application
│   ├── test.bat            # Run Tests
│   └── help.bat            # List commands
│
├── /data                   # Local Data Storage
│   ├── [MAIN_DB_FILE]      # Primary Database
│   ├── workflow_scratchpad.md  # Current roadmap
│   └── /logs               # Operation logs
│
├── /docs                   # Documentation (Strict Requirement)
│   ├── /dev                # Core Technical Documentation
│   │   ├── MASTER_SPECS.md     # Functional requirements
│   │   ├── DEV_PROTOCOLS.md    # Coding standards
│   │   ├── PHASES.md           # Project roadmap
│   │   ├── ISSUES.md           # Known issues
│   │   ├── FEATURES_ENHANCEMENTS.md # Future roadmap
│   │   ├── DIRECTORY_STRUCTURE.md  # This file
│   │   └── /rules              # Agent Personas
│   │
│   ├── /dev_plans          # Development Planning Documents
│   │   ├── active_plan.md      # Current active plan
│   │   └── /archive            # ARC-XXX completed plans
│
├── /scripts                # Source Code / Backend Logic
│   ├── /core               # Shared utilities (logger, db)
│   └── /modules            # Domain logic
│
├── /web                    # Frontend / API (If applicable)
│
└── /tests                  # Testing Suite
    ├── /unit
    └── /integration

# Directory Structure & File Manifest

## Root Directory
/[PROJECT_ROOT]
│
├── manifest.json       # Project Spec, Philosophy, & Roadmap
├── .agent              # Agent Configuration
│   └── /workflows          # Agent Workflows
│   └── /rules              # Agent Personas
├── .packer             # Build Utilities (Pack/Unpack scripts)
│   ├── pack.ps1            # Compresses template to base64
│   └── unpack.ps1          # Extracts base64 to template

├── /config             # Configuration files (Ignored by Git)
│   ├── settings.yaml       # Global settings
│   └── secrets.yaml        # [OPTIONAL] Local strategy for secrets
│
├── /framework          # THE FACTORY (Meta-Framework Code)
│   ├── /core           # Core Logic
│   │   ├── /llm        # Adapter Layer
│   │   ├── /memory     # JSON State Managers
│   │   └── /utils      # Shared Tools
│   ├── /personas       # Agent Logic
│   ├── /run            # Framework Operation Scripts
│   └── /templates      # Jinja2 Templates
│
├── /projects           # THE PRODUCTS (Generated Apps)
│   └── ...
│
├── /public-builds      # THE EXPORTS (Clean builds)
│
├── /data               # Local Data Storage
│   ├── [MAIN_DB_FILE]      # Primary Database
│   ├── workflow_scratchpad.md  # Current roadmap
│   └── /logs               # Operation logs
│
├── /docs               # Documentation (Strict Requirement)
│   ├── /dev            # Core Technical Documentation
│   │   ├── DEV_PROTOCOLS.md    # Coding standards
│   │   ├── ISSUES.md           # Known issues
│   │   ├── FEATURES_ENHANCEMENTS.md # Future roadmap
│   │   ├── DIRECTORY_STRUCTURE.md  # This file
│   │   └── /rules              # Agent Personas (e.g., yapper.md)
│   │
│   ├── /dev-plans          # Development Planning Documents
│   │   └── active_plan.md      # Current active plan
│   │
│   ├── /archive            # Centralized Archives
│   │   ├── /plans              # Archived plans
│   │   └── /reports            # Archived reports
│   ├── /reports            # Automated Reports (Audit/Critique/etc)
│
│
├── /tests                  # Testing Suite
│   ├── /unit
│   └── /integration

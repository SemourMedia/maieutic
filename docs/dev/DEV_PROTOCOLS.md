# Development Protocols (v2 Draft)

## 1. Coding Standards
* **Language Version:** [LANGUAGE_VERSION] (e.g., Python 3.10+)
* **Style:** [STYLE_GUIDE] (e.g., PEP 8).
* **Docstrings:** Mandatory for every function and class.
* **Type Hinting:** Mandatory for all function arguments and returns.

## 2. Dependency Management (Frozen Policy)
* **Rule:** We prioritize stability over new features.
* **Requirement:** All packages in `requirements.txt` must have **exact version pinning**.
* **Upgrades:** Explicit task only.
* **Security Exception:** Immediate upgrades authorized for high-severity security patches.

## 3. Logging & Telemetry
* **Rule:** No "Quiet Fails." Every `try/except` block must log the error.
* **Storage:** Logs are stored in `data/logs/`.
* **Retention Policy:**
    *   **Live Rotation:** Keep last 7 days.
    *   **Archive:** Compress logs older than 7 days.
    *   **Cleanup:** Delete logs older than 90 days or if size exceeds limit.

## 4. The "Blocker" Protocol
* **Hardcoded Paths:** FORBIDDEN. Use configuration loaders.
* **Secrets vs Configuration:**
    *   **Secrets:** API Keys, Tokens. **MUST** use secure storage (e.g., `keyring`, `.env`). NEVER in files.
    *   **Configuration:** Behavior toggles. Use `settings.yaml`.
*   **Arbitration:** If a setting grants *access* (Secret), it goes in Secrets. If it changes *behavior* (Config), it goes in Config.
*   **Enforcement:** Deployment should fail if these are violated.

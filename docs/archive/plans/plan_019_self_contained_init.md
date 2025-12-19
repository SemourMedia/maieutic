# Plan 019: Self-Contained PowerShell Initializer

**Goal**: Create a single `.ps1` file that embeds the full Maieutic template as a base64-encoded ZIP, enabling zero-copy initialization.

## User Review Required

> [!IMPORTANT]
> This creates a new distribution artifact (`maieutic-init.ps1`) that replaces the need for the `template/` folder. The `.bat` version will remain for compatibility.

## Proposed Changes

### [NEW] `public-builds/maieutic-init.ps1`
A self-contained PowerShell script that:
1. Embeds the template as a base64-encoded ZIP string.
2. Decodes and extracts to memory, then writes to disk.
3. Prompts for `PROJECT_NAME`, `VERSION`, `AGENT_IDENTITY`, `PROJECT_GOAL`.
4. Replaces placeholders in `manifest.json`.
5. Creates `.gitignore` and `requirements.txt`.

### Build Process
A one-time build script to regenerate `maieutic-init.ps1` whenever the template changes:
1. ZIP the `public-builds/template/` folder.
2. Base64-encode the ZIP.
3. Inject the encoded string into a template `.ps1` file.

## Verification Plan

### Manual Verification
1. Run `maieutic-init.ps1` in an empty test directory.
2. Verify all directories and files are created.
3. Verify `manifest.json` contains user-provided values.

## Confidence Score
**95%** - Standard PowerShell techniques. Minor risk if ZIP > 1MB (PowerShell memory limits).

# Harness Scripts

## check.ps1

Runs build and test checks for Mr.Comic.

Usage:

```powershell
.\scripts\harness\check.ps1 -Scope all
.\scripts\harness\check.ps1 -Scope reader
.\scripts\harness\check.ps1 -Scope formats -SkipDetekt
```

Scopes:
- `reader` — feature-reader tests and compilation
- `formats` — engine-formats tests and compilation
- `rendering` — engine-rendering tests and compilation
- `library` — feature-library tests and compilation
- `settings` — feature-settings tests and compilation
- `app` — app tests and debug APK build
- `all` — format tests, reader tests, app tests, debug APK, and Detekt

## verify-protected-files.ps1

Verifies that protected task/TODO/roadmap/handoff files are unchanged.

Usage:

```powershell
# Create baseline (run before making changes)
.\scripts\harness\verify-protected-files.ps1 -CreateBaseline

# Verify (run after making changes)
.\scripts\harness\verify-protected-files.ps1
```

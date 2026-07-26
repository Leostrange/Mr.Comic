# Verify Protected Files Script
# Checks that protected task/TODO/roadmap/handoff files are unchanged.

param(
    [string]$BaselineDir = "",
    [switch]$CreateBaseline
)

$ErrorActionPreference = "Stop"

$protectedPatterns = @(
    "*task*",
    "*todo*",
    "*backlog*",
    "*roadmap*",
    "*handoff*",
    "*context*",
    "*plan*",
    "*bug*"
)

$protectedFiles = @(
    "ACTIVE_REMAINING_TASKS_2026-07-23.md",
    "EXTRACTION_TASKLIST.md",
    "PROJECT_CONTEXT_HANDOFF.md",
    "READER_BUG_ANALYSIS_2026-07-17.md",
    "READER_MASTER_BACKLOG.md",
    "TASKLIST_00_MASTER_STRUCTURE.md",
    "TASKLIST_01_READER_EXPERIENCE.md",
    "TASKLIST_02_LIBRARY_GAMIFICATION.md",
    "TASKLIST_03_TRANSLATION_AI_TTS.md",
    "TASKLIST_04_SETTINGS_IA_LOCALIZATION.md",
    "TASKLIST_05_PLATFORM_FOUNDATION.md",
    "REFACTORING_CONTINUATION_GUIDE.md",
    "CODE_REVIEW_REPORT.md",
    "session-ses_13c0.md",
    "READER_SETTINGS_SNAPSHOT_2026-03-25.md"
)

function Get-FileHash256 {
    param([string]$Path)
    if (Test-Path $Path) {
        return (Get-FileHash -Path $Path -Algorithm SHA256).Hash
    }
    return $null
}

$root = Get-Location
$baselineFile = Join-Path $root ".harness-backup\protected-hashes.json"

if ($CreateBaseline) {
    $hashes = @{}
    foreach ($file in $protectedFiles) {
        $path = Join-Path $root $file
        $hash = Get-FileHash256 $path
        if ($hash) {
            $hashes[$file] = $hash
            Write-Host "Baseline: $file = $($hash.Substring(0,16))..."
        }
    }
    $hashes | ConvertTo-Json | Set-Content $baselineFile
    Write-Host "Baseline saved to $baselineFile"
    exit 0
}

if (-not (Test-Path $baselineFile)) {
    Write-Error "Baseline file not found. Run with -CreateBaseline first."
    exit 1
}

$baseline = Get-Content $baselineFile | ConvertFrom-Json
$violations = @()

foreach ($file in $protectedFiles) {
    $path = Join-Path $root $file
    $currentHash = Get-FileHash256 $path
    $baselineHash = $baseline.$file

    if ($baselineHash -and $currentHash -ne $baselineHash) {
        $violations += $file
        Write-Warning "PROTECTED FILE CHANGED: $file"
    }
}

if ($violations.Count -gt 0) {
    Write-Host ""
    Write-Host "VIOLATION: $($violations.Count) protected file(s) changed:"
    foreach ($v in $violations) {
        Write-Host "  - $v"
    }
    exit 1
} else {
    Write-Host "All protected files verified unchanged."
    exit 0
}

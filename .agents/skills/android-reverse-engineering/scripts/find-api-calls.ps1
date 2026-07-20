# find-api-calls.ps1 — Find HTTP API calls in decompiled sources.
# Usage: .\find-api-calls.ps1 <sources-dir> [-Retrofit] [-Urls] [-Auth] [-Paths]
param(
    [Parameter(Position=0, Mandatory=$true)]
    [string]$SourcesDir,
    [switch]$Retrofit,
    [switch]$Urls,
    [switch]$Auth,
    [switch]$Paths
)

$ErrorActionPreference = "SilentlyContinue"

if (-not (Test-Path $SourcesDir)) {
    Write-Host "Error: Directory not found: $SourcesDir" -ForegroundColor Red
    exit 1
}

$all = -not ($Retrofit -or $Urls -or $Auth -or $Paths)

Write-Host "=== API Extraction: $(Split-Path $SourcesDir -Leaf) ===" -ForegroundColor Cyan
Write-Host ""

$javaFiles = Get-ChildItem -Path $SourcesDir -Filter "*.java" -Recurse

if ($all -or $Retrofit) {
    Write-Host "--- Retrofit ---" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "HTTP Method Annotations:"
    $javaFiles | Select-String -Pattern '@GET|@POST|@PUT|@DELETE|@PATCH|@HEAD' | Select-Object -First 100 | ForEach-Object { $_.ToString() }
    Write-Host ""
    Write-Host "Base URL Configuration:"
    $javaFiles | Select-String -Pattern 'baseUrl|\.baseUrl\(' | Select-Object -First 20 | ForEach-Object { $_.ToString() }
    Write-Host ""
}

if ($all -or $Urls) {
    Write-Host "--- Hardcoded URLs ---" -ForegroundColor Cyan
    Write-Host ""
    $javaFiles | Select-String -Pattern '"https?://[^"]*"' | ForEach-Object { $_.Matches.Value } | Sort-Object -Unique | Select-Object -First 200 | ForEach-Object { Write-Host "  $_" }
    Write-Host ""
    Write-Host "Base URL Constants:"
    $javaFiles | Select-String -Pattern 'BASE_URL|API_URL|SERVER_URL|ENDPOINT|API_BASE' | Select-Object -First 50 | ForEach-Object { $_.ToString() }
    Write-Host ""
}

if ($all -or $Auth) {
    Write-Host "--- Authentication Patterns ---" -ForegroundColor Cyan
    Write-Host ""
    $javaFiles | Select-String -Pattern 'bearer|api[_-]?key|api[_-]?secret|auth[_-]?token|access[_-]?token|Authorization' -CaseSensitive:$false | Select-Object -First 50 | ForEach-Object { $_.ToString() }
    Write-Host ""
}

if ($all -or $Paths) {
    Write-Host "--- Endpoint-Shaped Path Literals ---" -ForegroundColor Cyan
    Write-Host ""
    $javaFiles | Select-String -Pattern '"(/[A-Za-z0-9_{}.\-]+(/[A-Za-z0-9_{}.\-]+)+/?)"' | ForEach-Object { $_.Matches.Value } | Sort-Object -Unique | Select-Object -First 300 | ForEach-Object { Write-Host "  $_" }
    Write-Host ""
}

Write-Host "=== API Extraction Complete ===" -ForegroundColor Green

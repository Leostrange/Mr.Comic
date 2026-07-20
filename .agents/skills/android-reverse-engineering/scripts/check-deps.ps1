# check-deps.ps1 — Verify that required and optional tools are installed.
param()

$ErrorActionPreference = "SilentlyContinue"

Write-Host "=== Android Reverse Engineering: Dependency Check ===" -ForegroundColor Cyan
Write-Host ""

$requiredOk = $true

function Check-Required {
    param([string]$Name, [string]$Command)
    $path = Get-Command $Command -ErrorAction SilentlyContinue
    if ($path) {
        Write-Host "  OK  $Name ($($path.Source))" -ForegroundColor Green
        Write-Output "INSTALL_REQUIRED:${Name}:OK"
    } else {
        Write-Host "  MISSING  $Name (required)" -ForegroundColor Red
        Write-Output "INSTALL_REQUIRED:${Name}:MISSING"
        $script:requiredOk = $false
    }
}

function Check-Optional {
    param([string]$Name, [string]$Command)
    $path = Get-Command $Command -ErrorAction SilentlyContinue
    if ($path) {
        Write-Host "  OK  $Name ($($path.Source))" -ForegroundColor Green
        Write-Output "INSTALL_OPTIONAL:${Name}:OK"
    } else {
        Write-Host "  MISSING  $Name (optional)" -ForegroundColor Yellow
        Write-Output "INSTALL_OPTIONAL:${Name}:MISSING"
    }
}

# Refresh PATH from user environment
$userPath = [Environment]::GetEnvironmentVariable("PATH", "User")
if ($userPath) {
    $env:PATH = "$userPath;$env:PATH"
}

# Required
Check-Required "java" "java"
Check-Required "jadx" "jadx"

# Optional
Check-Optional "fernflower/vineflower" "fernflower"
Check-Optional "dex2jar" "d2j-dex2jar"
Check-Optional "apktool" "apktool"
Check-Optional "adb" "adb"

# Check Java version
Write-Host ""
if (Get-Command java -ErrorAction SilentlyContinue) {
    $javaVer = & java -version 2>&1 | Select-Object -First 1
    if ($javaVer -match '"(\d+)\.') {
        $major = [int]$Matches[1]
        if ($major -ge 17) {
            Write-Host "  OK  Java version >= 17 (found: $major)" -ForegroundColor Green
        } else {
            Write-Host "  WARN  Java version < 17 (found: $major). jadx requires 17+." -ForegroundColor Yellow
            $requiredOk = $false
        }
    }
}

# Check Fernflower JAR
if ($env:FERNFLOWER_JAR_PATH -and (Test-Path $env:FERNFLOWER_JAR_PATH)) {
    Write-Host "  OK  FERNFLOWER_JAR_PATH=$($env:FERNFLOWER_JAR_PATH)" -ForegroundColor Green
}

Write-Host ""
if ($requiredOk) {
    Write-Host "All required dependencies are installed." -ForegroundColor Green
} else {
    Write-Host "Some required dependencies are missing." -ForegroundColor Red
    Write-Host "Run: .\install-deps.ps1 <dep-name>"
}

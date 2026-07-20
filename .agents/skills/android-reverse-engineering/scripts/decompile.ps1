# decompile.ps1 — Decompile APK/XAPK/JAR/AAR with jadx and/or Fernflower.
# Usage: .\decompile.ps1 [OPTIONS] <file>
param(
    [string]$Engine = "jadx",
    [string]$Output = "",
    [switch]$Deobf,
    [switch]$NoRes,
    [Parameter(Position=0, Mandatory=$true)]
    [string]$InputFile
)

$ErrorActionPreference = "Stop"

# Refresh PATH
$userPath = [Environment]::GetEnvironmentVariable("PATH", "User")
if ($userPath -and $env:PATH -notlike "*$userPath*") {
    $env:PATH = "$userPath;$env:PATH"
}

if (-not (Test-Path $InputFile)) {
    Write-Host "Error: File not found: $InputFile" -ForegroundColor Red
    exit 1
}

if (-not $Output) {
    $baseName = [System.IO.Path]::GetFileNameWithoutExtension($InputFile)
    $Output = "${baseName}-decompiled"
}

Write-Host "=== Android Reverse Engineering: Decompile ===" -ForegroundColor Cyan
Write-Host "Input:   $InputFile"
Write-Host "Output:  $Output"
Write-Host "Engine:  $Engine"
Write-Host "Deobf:   $Deobf"
Write-Host ""

$ext = [System.IO.Path]::GetExtension($InputFile).ToLower()

# Handle XAPK
if ($ext -eq ".xapk") {
    Write-Host "XAPK detected. Extracting APKs..."
    $xapkDir = Join-Path $Output "_xapk_extracted"
    New-Item -ItemType Directory -Force -Path $xapkDir | Out-Null
    Expand-Archive -Path $InputFile -DestinationPath $xapkDir -Force
    $apkFiles = Get-ChildItem -Path $xapkDir -Filter "*.apk" -Recurse
    Write-Host "Found $($apkFiles.Count) APK(s):"
    foreach ($apk in $apkFiles) { Write-Host "  - $($apk.Name)" }
    # Decompile each
    foreach ($apk in $apkFiles) {
        $apkOut = if ($apk.Name -eq "base.apk") { Join-Path $Output "base" } else { Join-Path $Output $apk.BaseName }
        if ($Engine -eq "both") {
            & jadx -d (Join-Path $apkOut "jadx") $(if ($Deobf) { "--deobf" }) $(if ($NoRes) { "--no-res" }) --show-bad-code $apk.FullName
        } elseif ($Engine -eq "fernflower") {
            Write-Host "Fernflower for XAPK sub-APKs requires dex2jar. Skipping $($apk.Name)."
        } else {
            & jadx -d $apkOut $(if ($Deobf) { "--deobf" }) $(if ($NoRes) { "--no-res" }) --show-bad-code $apk.FullName
        }
    }
    Write-Host "XAPK decompilation complete." -ForegroundColor Green
    exit 0
}

# Standard decompilation
New-Item -ItemType Directory -Force -Path $Output | Out-Null

function Invoke-Jadx {
    param([string]$In, [string]$Out)
    $args = @("-d", $Out)
    if ($Deobf) { $args += "--deobf" }
    if ($NoRes) { $args += "--no-res" }
    $args += "--show-bad-code"
    $args += $In
    Write-Host "Decompiling with jadx..." -ForegroundColor Cyan
    & jadx @args
    if ($LASTEXITCODE -eq 0) {
        Write-Host "jadx decompilation succeeded." -ForegroundColor Green
    } else {
        Write-Host "jadx exited with warnings." -ForegroundColor Yellow
    }
}

function Invoke-Fernflower {
    param([string]$In, [string]$Out)
    New-Item -ItemType Directory -Force -Path $Out | Out-Null
    $ffInput = $In
    $inExt = [System.IO.Path]::GetExtension($In).ToLower()
    if ($inExt -in @(".apk", ".dex")) {
        if (-not (Get-Command d2j-dex2jar -ErrorAction SilentlyContinue)) {
            Write-Host "dex2jar not found. Install: .\install-dep.ps1 dex2jar" -ForegroundColor Yellow
            return
        }
        $jarTmp = Join-Path $Out "_converted.jar"
        & d2j-dex2jar -f -o $jarTmp $In
        $ffInput = $jarTmp
    }
    $ffJar = $env:FERNFLOWER_JAR_PATH
    if (-not $ffJar -or -not (Test-Path $ffJar)) {
        $candidates = @(
            "$env:USERPROFILE\.local\share\vineflower.jar",
            "$env:USERPROFILE\vineflower\vineflower.jar"
        )
        foreach ($c in $candidates) { if (Test-Path $c) { $ffJar = $c; break } }
    }
    if (-not $ffJar -or -not (Test-Path $ffJar)) {
        Write-Host "Fernflower JAR not found. Install: .\install-dep.ps1 fernflower" -ForegroundColor Yellow
        return
    }
    Write-Host "Decompiling with Fernflower..." -ForegroundColor Cyan
    & java -jar $ffJar -dgs=1 -mpm=60 $ffInput (Join-Path $Out "sources")
    Write-Host "Fernflower decompilation complete." -ForegroundColor Green
}

switch ($Engine) {
    "both" {
        Invoke-Jadx -In $InputFile -Out (Join-Path $Output "jadx")
        Invoke-Fernflower -In $InputFile -Out (Join-Path $Output "fernflower")
        Write-Host ""
        Write-Host "=== Comparison ===" -ForegroundColor Cyan
        Write-Host "jadx output:       $(Join-Path $Output 'jadx')"
        Write-Host "fernflower output: $(Join-Path $Output 'fernflower')"
    }
    "fernflower" {
        Invoke-Fernflower -In $InputFile -Out $Output
    }
    default {
        Invoke-Jadx -In $InputFile -Out $Output
    }
}

Write-Host ""
Write-Host "=== Decompilation complete ===" -ForegroundColor Green
Write-Host "Output: $Output"

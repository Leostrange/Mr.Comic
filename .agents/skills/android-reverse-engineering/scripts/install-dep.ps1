# install-deps.ps1 — Install a missing dependency.
# Usage: .\install-deps.ps1 <java|jadx|fernflower|dex2jar|apktool|adb>
param(
    [Parameter(Mandatory=$true)]
    [string]$Dependency
)

$ErrorActionPreference = "Stop"

$localShare = Join-Path $env:USERPROFILE ".local\share"
$localBin = Join-Path $env:USERPROFILE ".local\bin"
New-Item -ItemType Directory -Force -Path $localShare, $localBin | Out-Null

# Refresh PATH
$userPath = [Environment]::GetEnvironmentVariable("PATH", "User")
if ($userPath -and $env:PATH -notlike "*$userPath*") {
    $env:PATH = "$userPath;$env:PATH"
}

function Add-ToUserPath {
    param([string]$Dir)
    $currentPath = [Environment]::GetEnvironmentVariable("PATH", "User")
    if ($currentPath -notlike "*$Dir*") {
        [Environment]::SetEnvironmentVariable("PATH", "$Dir;$currentPath", "User")
        $env:PATH = "$Dir;$env:PATH"
        Write-Host "  Added $Dir to user PATH." -ForegroundColor Green
    }
}

switch ($Dependency) {
    "java" {
        Write-Host "Installing Java JDK 17..." -ForegroundColor Cyan
        if (Get-Command winget -ErrorAction SilentlyContinue) {
            winget install EclipseAdoptium.Temurin.17.JDK --accept-package-agreements --accept-source-agreements
        } elseif (Get-Command choco -ErrorAction SilentlyContinue) {
            choco install temurin17 -y
        } else {
            Write-Host "Install from https://adoptium.net/ or install winget/scoop/choco." -ForegroundColor Yellow
            exit 1
        }
    }
    "jadx" {
        Write-Host "Installing jadx..." -ForegroundColor Cyan
        if (Get-Command scoop -ErrorAction SilentlyContinue) {
            scoop install jadx
        } elseif (Get-Command choco -ErrorAction SilentlyContinue) {
            choco install jadx -y
        } else {
            Write-Host "Downloading jadx from GitHub Releases..."
            $release = Invoke-RestMethod -Uri "https://api.github.com/repos/skylot/jadx/releases/latest"
            $asset = $release.assets | Where-Object { $_.name -like "jadx-*-windows-am64.zip" } | Select-Object -First 1
            if (-not $asset) {
                $asset = $release.assets | Where-Object { $_.name -like "jadx-*.zip" } | Select-Object -First 1
            }
            if ($asset) {
                $zipPath = Join-Path $localShare "jadx.zip"
                Invoke-WebRequest -Uri $asset.browser_download_url -OutFile $zipPath
                Expand-Archive -Path $zipPath -DestinationPath (Join-Path $localShare "jadx") -Force
                $jadxBin = Get-ChildItem -Path (Join-Path $localShare "jadx") -Recurse -Filter "jadx.bat" | Select-Object -First 1
                if ($jadxBin) {
                    Copy-Item $jadxBin.FullName (Join-Path $localBin "jadx.bat") -Force
                    Add-ToUserPath $localBin
                    Write-Host "jadx installed." -ForegroundColor Green
                }
            }
        }
    }
    "fernflower" {
        Write-Host "Installing Vineflower..." -ForegroundColor Cyan
        $release = Invoke-RestMethod -Uri "https://api.github.com/repos/Vineflower/vineflower/releases/latest"
        $asset = $release.assets | Where-Object { $_.name -like "vineflower-*.jar" } | Select-Object -First 1
        if ($asset) {
            $jarPath = Join-Path $localShare "vineflower.jar"
            Invoke-WebRequest -Uri $asset.browser_download_url -OutFile $jarPath
            [Environment]::SetEnvironmentVariable("FERNFLOWER_JAR_PATH", $jarPath, "User")
            $env:FERNFLOWER_JAR_PATH = $jarPath
            Write-Host "Vineflower installed to $jarPath" -ForegroundColor Green
        }
    }
    "dex2jar" {
        Write-Host "Installing dex2jar..." -ForegroundColor Cyan
        $release = Invoke-RestMethod -Uri "https://api.github.com/repos/ThexXTURBOXx/dex2jar/releases/latest"
        $asset = $release.assets | Where-Object { $_.name -like "*dex-tools*.zip" } | Select-Object -First 1
        if ($asset) {
            $zipPath = Join-Path $localShare "dex2jar.zip"
            Invoke-WebRequest -Uri $asset.browser_download_url -OutFile $zipPath
            Expand-Archive -Path $zipPath -DestinationPath (Join-Path $localShare "dex2jar") -Force
            Add-ToUserPath $localBin
            Write-Host "dex2jar installed." -ForegroundColor Green
        }
    }
    "apktool" {
        Write-Host "Installing apktool..." -ForegroundColor Cyan
        if (Get-Command choco -ErrorAction SilentlyContinue) {
            choco install apktool -y
        } else {
            $release = Invoke-RestMethod -Uri "https://api.github.com/repos/iBotPeaches/Apktool/releases/latest"
            $asset = $release.assets | Where-Object { $_.name -like "apktool_*.jar" } | Select-Object -First 1
            if ($asset) {
                $jarPath = Join-Path $localShare "apktool.jar"
                Invoke-WebRequest -Uri $asset.browser_download_url -OutFile $jarPath
                $batContent = "@echo off`njava -jar `"$jarPath`" %*"
                Set-Content -Path (Join-Path $localBin "apktool.bat") -Value $batContent
                Add-ToUserPath $localBin
                Write-Host "apktool installed." -ForegroundColor Green
            }
        }
    }
    "adb" {
        Write-Host "Installing adb (platform-tools)..." -ForegroundColor Cyan
        if (Get-Command choco -ErrorAction SilentlyContinue) {
            choco install adb -y
        } else {
            Write-Host "Download from https://developer.android.com/tools/releases/platform-tools"
        }
    }
    default {
        Write-Host "Unknown dependency: $Dependency" -ForegroundColor Red
        Write-Host "Available: java, jadx, fernflower, dex2jar, apktool, adb"
        exit 1
    }
}

Write-Host "Done." -ForegroundColor Green

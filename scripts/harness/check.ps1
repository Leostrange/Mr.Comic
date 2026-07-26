param(
    [ValidateSet(
        "reader",
        "formats",
        "rendering",
        "library",
        "settings",
        "app",
        "all"
    )]
    [string]$Scope = "all",

    [switch]$SkipDetekt
)

$ErrorActionPreference = "Stop"
$gradle = ".\gradlew.bat"
$common = @("--no-daemon", "--console=plain", "--stacktrace")

function Run-Gradle {
    param([string[]]$Tasks)

    Write-Host ""
    Write-Host "Running Gradle: $($Tasks -join ' ')"

    & $gradle @common @Tasks

    if ($LASTEXITCODE -ne 0) {
        throw "Gradle command failed: $($Tasks -join ' ')"
    }
}

switch ($Scope) {
    "reader" {
        Run-Gradle @(
            ":feature-reader:testDebugUnitTest",
            ":feature-reader:compileDebugKotlin"
        )
    }

    "formats" {
        Run-Gradle @(
            ":engine-formats:testDebugUnitTest",
            ":engine-formats:compileDebugKotlin"
        )
    }

    "rendering" {
        Run-Gradle @(
            ":engine-rendering:testDebugUnitTest",
            ":engine-rendering:compileDebugKotlin"
        )
    }

    "library" {
        Run-Gradle @(
            ":feature-library:testDebugUnitTest",
            ":feature-library:compileDebugKotlin"
        )
    }

    "settings" {
        Run-Gradle @(
            ":feature-settings:testDebugUnitTest",
            ":feature-settings:compileDebugKotlin"
        )
    }

    "app" {
        Run-Gradle @(
            ":app:testDebugUnitTest",
            ":app:assembleDebug"
        )
    }

    "all" {
        Run-Gradle @(
            ":engine-formats:testDebugUnitTest",
            ":feature-reader:testDebugUnitTest",
            ":app:testDebugUnitTest",
            ":app:assembleDebug"
        )
    }
}

if (-not $SkipDetekt) {
    Run-Gradle @("detekt")
}

Write-Host ""
Write-Host "Harness checks completed successfully."

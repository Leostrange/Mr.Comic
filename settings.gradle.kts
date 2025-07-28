pluginManagement {
    repositories {
        maven { url = uri("https://plugins.gradle.org/m2/") }
        gradlePluginPortal()
        google()
        mavenCentral()
    }
}

dependencyResolutionManagement {
    // repositoriesMode.set(RepositoriesMode.PREFER_SETTINGS)
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
        maven { url = uri("https://jitpack.io") }
        maven { url = uri("https://github.com/psiegman/mvn-repo/raw/master/releases") } // Для epublib
        maven { url = uri("https://oss.sonatype.org/content/repositories/snapshots/") } // Для некоторых библиотек
        maven { url = uri("https://repository.aspose.com/repo/") } // Альтернативный репозиторий
        maven { url = uri("https://maven.google.com/") } // Дополнительно Google Maven
        maven { url = uri("https://repo1.maven.org/maven2/") } // Дополнительно Maven Central
    }
}

rootProject.name = "MrComic"

// ========================================
// ANDROID APPLICATION MODULES
// ========================================
// Main app module
include(":android:app")
project(":android:app").projectDir = file("android/app")

// Core modules
include(":android:core")
project(":android:core").projectDir = file("android/core")

include(":android:core-analytics")
project(":android:core-analytics").projectDir = file("android/core-analytics")

include(":android:core-data")
project(":android:core-data").projectDir = file("android/core-data")

include(":android:core-domain")
project(":android:core-domain").projectDir = file("android/core-domain")

include(":android:core-model")
project(":android:core-model").projectDir = file("android/core-model")

include(":android:core-reader")
project(":android:core-reader").projectDir = file("android/core-reader")

include(":android:core-ui")
project(":android:core-ui").projectDir = file("android/core-ui")

// Feature modules
include(":android:feature-library")
project(":android:feature-library").projectDir = file("android/feature-library")

include(":android:feature-ocr")
project(":android:feature-ocr").projectDir = file("android/feature-ocr")

include(":android:feature-onboarding")
project(":android:feature-onboarding").projectDir = file("android/feature-onboarding")

include(":android:feature-reader")
project(":android:feature-reader").projectDir = file("android/feature-reader")

include(":android:feature-settings")
project(":android:feature-settings").projectDir = file("android/feature-settings")

include(":android:feature-themes")
project(":android:feature-themes").projectDir = file("android/feature-themes")

// Shared modules
include(":android:shared")
project(":android:shared").projectDir = file("android/shared")

// ========================================
// UTILITY & DEVELOPMENT MODULES (NON-ANDROID)
// ========================================
// Scripts and utilities
include(":scripts")
include(":reports")

// ========================================
// DEPRECATED/LEGACY MODULES (TO BE REMOVED)
// ========================================
// THESE MODULES CONFLICT WITH ANDROID STRUCTURE
// They will be removed or integrated into android modules
// include(":reader")        // Conflicting with android:feature-reader - TO REMOVE
// include(":src")           // Unclear purpose - TO REMOVE
// include(":themes_store")  // Should be integrated into android:feature-themes - TO REMOVE



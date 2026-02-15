pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
    plugins {
        id("com.android.application") version "8.1.4"
        id("org.jetbrains.kotlin.android") version "1.9.20"
        id("com.google.dagger.hilt.android") version "2.48"
        id("com.google.devtools.ksp") version "1.9.20-1.0.14"
        id("com.google.hilt.android") version "2.48"
    }
}

dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        mavenCentral()
        maven { url = uri("https://jitpack.io") }
        // Microsoft Maven repository for MSAL
        maven { url = uri("https://pkgs.dev.azure.com/MicrosoftDeviceSDK/DuoSDK-Public/_packaging/Duo-SDK-Feed/maven/v1") }
    }
}

rootProject.name = "Mr.Comic"

include(":app")
project(":app").projectDir = file("android/app")

include(":shared")
project(":shared").projectDir = file("android/shared")

include(":core-analytics")
project(":core-analytics").projectDir = file("android/core-analytics")

include(":core-data")
project(":core-data").projectDir = file("android/core-data")

include(":core-domain")
project(":core-domain").projectDir = file("android/core-domain")

include(":core-model")
project(":core-model").projectDir = file("android/core-model")

include(":core-reader")
project(":core-reader").projectDir = file("android/core-reader")

include(":core-ui")
project(":core-ui").projectDir = file("android/core-ui")

include(":feature-cbr")
project(":feature-cbr").projectDir = file("android/feature-cbr")

include(":feature-library")
project(":feature-library").projectDir = file("android/feature-library")

include(":feature-ocr")
project(":feature-ocr").projectDir = file("android/feature-ocr")

include(":feature-onboarding")
project(":feature-onboarding").projectDir = file("android/feature-onboarding")

include(":feature-reader")
project(":feature-reader").projectDir = file("android/feature-reader")

include(":feature-settings")
project(":feature-settings").projectDir = file("android/feature-settings")

include(":feature-themes")
project(":feature-themes").projectDir = file("android/feature-themes")

include(":feature-translate")
project(":feature-translate").projectDir = file("android/feature-translate")
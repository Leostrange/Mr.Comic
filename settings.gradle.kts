pluginManagement {
    repositories {
        gradlePluginPortal()
        google()
        mavenCentral()
    }
}

dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.PREFER_SETTINGS)
    repositories {
        google()
        mavenCentral()
        maven { url = uri("https://jitpack.io") }
    }
    versionCatalogs {
        create("libs") {
            from(files("gradle/libs.versions.toml"))
        }
    }
}

rootProject.name = "MrComic"

include(":app")
include(":core:ui")
project(":core:ui").projectDir = file("core/ui")
include(":core-data")
include(":core-reader")
include(":core-model")
include(":feature-reader")
include(":feature-library")
include(":feature-ocr")
include(":feature-settings")
include(":shared")



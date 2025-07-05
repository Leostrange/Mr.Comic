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
}

rootProject.name = "MrComic"

include(":app")
include(":core")
include(":core-data")
include(":core-model")
include(":core-reader")
include(":core-ui")
include(":feature-library")
include(":feature-ocr")
include(":feature-reader")
include(":feature-settings")
include(":feature-themes")
include(":mrcomic-api")
include(":mrcomic-ocr-translation")
include(":mrcomic-processing-pipeline")
include(":plugins")
include(":reader")
include(":reports")
include(":scripts")
include(":shared")
include(":src")
include(":themes_store")
include(":core-domain")



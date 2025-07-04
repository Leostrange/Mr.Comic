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
include(":core-ui")
include(":core-data")
include(":core-reader")
include(":core-model")
include(":feature-reader")
include(":feature-library")
include(":feature-ocr")
include(":feature-settings")
include(":feature-themes")
include(":shared")
include(":plugins")
include(":reports")
include(":scripts")
include(":themes_store")
include(":mrcomic-api")
include(":mrcomic-ocr-translation")
include(":mrcomic-processing-pipeline")



include(":core-domain")


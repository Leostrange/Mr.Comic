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

include(":app")
include(":core")
include(":core-analytics")
include(":core-data")
include(":core-model")
include(":core-reader")
include(":core-ui")
include(":feature-library")
include(":feature-ocr")
include(":feature-reader")
include(":feature-settings")
include(":feature-themes")
// include(":mrcomic-api")
// include(":mrcomic-ocr-translation")
// include(":mrcomic-processing-pipeline")
include(":plugins")
include(":reader")
include(":reports")
include(":scripts")
include(":shared")
include(":src")
include(":themes_store")
include(":core-domain")



pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}
plugins {
    id("org.gradle.toolchains.foojay-resolver-convention") version "0.10.0"
}

dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        mavenCentral()
        maven { url = uri("https://jitpack.io") }
        maven { url = uri("https://pkgs.dev.azure.com/MicrosoftDeviceSDK/DuoSDK-Public/_packaging/Duo-SDK-Feed/maven/v1") }
    }
}

rootProject.name = "Mr.Comic"

include(":app");                project(":app").projectDir                = file("android/app")
include(":core-model");         project(":core-model").projectDir         = file("android/core-model")
include(":core-interfaces");    project(":core-interfaces").projectDir    = file("android/core-interfaces")
include(":core-data");          project(":core-data").projectDir          = file("android/core-data")
include(":core-domain");        project(":core-domain").projectDir        = file("android/core-domain")
include(":core-ui");            project(":core-ui").projectDir            = file("android/core-ui")
include(":engine-api");         project(":engine-api").projectDir         = file("android/engine-api")
include(":engine-epub-readium"); project(":engine-epub-readium").projectDir = file("android/engine-epub-readium")
include(":engine-formats");     project(":engine-formats").projectDir     = file("android/engine-formats")
include(":engine-llm");         project(":engine-llm").projectDir         = file("android/engine-llm")
include(":engine-registry");    project(":engine-registry").projectDir    = file("android/engine-registry")
include(":engine-rendering");   project(":engine-rendering").projectDir   = file("android/engine-rendering")
include(":feature-library");    project(":feature-library").projectDir    = file("android/feature-library")
include(":feature-reader");     project(":feature-reader").projectDir     = file("android/feature-reader")
include(":feature-settings");   project(":feature-settings").projectDir   = file("android/feature-settings")
include(":feature-ocr");        project(":feature-ocr").projectDir        = file("android/feature-ocr")
include(":feature-onboarding"); project(":feature-onboarding").projectDir = file("android/feature-onboarding")

plugins {
    id("org.jetbrains.kotlin.multiplatform")
    id("com.android.library")
}

kotlin {
    androidTarget {
        publishLibraryVariants("debug", "release")
    }

    sourceSets {
        commonMain.dependencies {
            // Pure Kotlin
        }
        androidMain.dependencies {
            api(project(":core-domain"))
            api(project(":core-model"))
        }
    }
}

android {
    namespace = "io.leostrange.mrcomic.shared"
    compileSdk = libs.versions.compileSdk.get().toInt()
    defaultConfig { minSdk = libs.versions.minSdk.get().toInt() }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
}

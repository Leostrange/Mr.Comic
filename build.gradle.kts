plugins {
    alias(libs.plugins.android.application) apply false
    alias(libs.plugins.kotlin.android) apply false
    alias(libs.plugins.hilt.android) apply false
    alias(libs.plugins.kotlin.kapt) apply false
    alias(libs.plugins.ksp) apply false
    alias(libs.plugins.spotless) apply false
    alias(libs.plugins.ktlint.gradle) apply false
    id("jacoco")
}

// Репозитории теперь централизованы в settings.gradle.kts

subprojects {
    apply(plugin = "com.diffplug.spotless")

    spotless {
        kotlin {
            target("**/*.kt")
            ktlint("1.2.1")
            licenseHeaderFile(rootProject.file("spotless.license.kt"))
        }
    }
}





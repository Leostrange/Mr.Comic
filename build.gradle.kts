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

// Принудительно устанавливаем версию Kotlin для всех модулей
allprojects {
    configurations.all {
        resolutionStrategy {
            force("org.jetbrains.kotlin:kotlin-stdlib:1.9.23")
            force("org.jetbrains.kotlin:kotlin-stdlib-jdk8:1.9.23")
            force("org.jetbrains.kotlin:kotlin-stdlib-common:1.9.23")
            force("org.jetbrains.kotlin:kotlin-reflect:1.9.23")
        }
    }
}

// Репозитории теперь централизованы в settings.gradle.kts







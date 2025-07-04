plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
}

android {
    namespace = "com.example.core"
    compileSdk = 35

    defaultConfig {
        minSdk = 23
    }

    kotlinOptions {
        jvmTarget = "17"
    }
}

dependencies {
    // Здесь можно добавить зависимости, если они нужны
} 
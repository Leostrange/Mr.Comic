plugins {
    id("com.android.library")
    kotlin("android")
}

android {
    namespace = "com.mrcomic.core.ui"
    compileSdk = 34
    defaultConfig {
        minSdk = 23
        targetSdk = 34
    }
    buildFeatures {
        compose = true
    }
    composeOptions {
        kotlinCompilerExtensionVersion = "1.5.14"
    }
    kotlinOptions {
        jvmTarget = "17"
    }
}

dependencies {
    implementation(platform("androidx.compose:compose-bom:2024.05.00"))
    implementation("androidx.compose.ui:ui")
    implementation("androidx.compose.material3:material3")
} 
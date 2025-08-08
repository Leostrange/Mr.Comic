plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
    id("com.google.dagger.hilt.android")
    kotlin("kapt")
}

android {
    namespace = "com.example.feature.settings"
    compileSdk = libs.versions.compileSdk.get().toInt()
    defaultConfig {
        minSdk = libs.versions.minSdk.get().toInt()
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    buildFeatures { compose = true }
    composeOptions { kotlinCompilerExtensionVersion = libs.versions.kotlinCompilerExtension.get() }
    kotlinOptions { jvmTarget = libs.versions.jvmTarget.get() }
}

kapt {
    correctErrorTypes = true
}

dependencies {
    implementation(platform(libs.androidx.compose.bom))
    implementation(libs.bundles.compose)
    implementation(project(":android:core-data"))
    implementation(project(":android:core-model"))
    implementation(project(":android:core-ui"))
    implementation(libs.androidx.lifecycle.viewmodel.compose)
    implementation(libs.google.hilt.android)
    kapt(libs.google.hilt.compiler)
    implementation(libs.androidx.datastore.preferences)
    implementation("androidx.activity:activity-compose:1.9.0")
    implementation("androidx.hilt:hilt-navigation-compose:1.2.0")
}
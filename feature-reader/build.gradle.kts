plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
    id("com.google.dagger.hilt.android")
    kotlin("kapt")
}

android {
    namespace = "com.example.feature.reader"
    compileSdk = libs.versions.compileSdk.get().toInt()
    defaultConfig {
        minSdk = libs.versions.minSdk.get().toInt()
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    buildFeatures {
        compose = true
    }
    composeOptions {
        kotlinCompilerExtensionVersion = libs.versions.kotlinCompilerExtension.get()
    }
    kotlinOptions {
        jvmTarget = libs.versions.jvmTarget.get()
    }
}

dependencies {
    implementation(platform(libs.androidx.compose.bom))
    implementation(libs.bundles.compose)
    implementation(project(":core-reader"))
    implementation("androidx.compose.material:material-icons-extended")
    implementation(libs.androidx.lifecycle.viewmodel.compose)
    implementation(libs.google.hilt.android)
    kapt(libs.google.hilt.compiler)

    // Zoomable Image support
    implementation(libs.telephoto.zoomable.image)
}


    implementation("com.github.barteksc:android-pdf-viewer:3.2.0-beta.1")


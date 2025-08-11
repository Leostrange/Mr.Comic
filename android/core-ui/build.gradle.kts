plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
}

android {
    lint {
        disable += "NullSafeMutableLiveData"
    }
    namespace = "com.example.core.ui"
    compileSdk = libs.versions.compileSdk.get().toInt()

    defaultConfig {
        minSdk = libs.versions.minSdk.get().toInt()
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = "17"
    }

    buildFeatures {
        compose = true
    }

    composeOptions {
        kotlinCompilerExtensionVersion = libs.versions.kotlinCompilerExtension.get()
    }
}

dependencies {
    // Compose BOM
    implementation(platform(libs.androidx.compose.bom))
    
    // Core Compose
    implementation(libs.androidx.compose.ui)
    implementation(libs.androidx.compose.material3)
    implementation(libs.androidx.compose.ui.tooling.preview)
    implementation(libs.androidx.compose.material.icons.extended)
    
    // Modern UI Components
    implementation(libs.lottie.compose)
    implementation(libs.material3.window.size)
    implementation(libs.constraintlayout.compose)
    
    // Animation & Effects
    implementation(libs.accompanist.systemuicontroller)
    implementation(libs.accompanist.adaptive)
    implementation(libs.accompanist.permissions)
    
    // Image loading and processing
    implementation(libs.coil.compose)
    implementation(libs.androidx.palette)
    implementation(libs.glide.core)
    // Note: Use Coil Compose instead of Glide Compose for better stability
    
    // ExoPlayer for video components
    implementation(libs.media3.exoplayer)
    implementation(libs.media3.ui)
    implementation(libs.media3.session)
    
    // Lifecycle
    implementation(libs.androidx.lifecycle.runtime.compose)
    implementation(libs.androidx.lifecycle.viewmodel.compose)

    // Models
    implementation(project(":android:core-model"))
}
plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
}

android {
    lint {
        disable += "NullSafeMutableLiveData"
    }
    namespace = "com.mrcomic.shared"
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
}

dependencies {
    // Core reader module for comic book support
    implementation(project(":android:core-reader"))
    implementation(project(":android:core-model"))
    
    // Android framework
    implementation("androidx.core:core-ktx:1.9.0")
    
    // Coroutines for async operations
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-android:1.8.0")
}

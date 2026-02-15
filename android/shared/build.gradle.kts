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
    implementation(project(":core-reader"))
    implementation(project(":core-model"))
    
    // Android framework
    implementation(libs.androidx.core.ktx)
    
    // Coroutines for async operations
    implementation(libs.kotlinx.coroutines.android)
}

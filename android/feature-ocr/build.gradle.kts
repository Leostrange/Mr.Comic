plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
    id("com.google.devtools.ksp")
    id("com.google.dagger.hilt.android")
}

android {
    lint {
        disable += "NullSafeMutableLiveData"
    }
    namespace = "com.mrcomic.feature.ocr"
    compileSdk = libs.versions.compileSdk.get().toInt()
    defaultConfig {
        minSdk = libs.versions.minSdk.get().toInt()
    }
    buildFeatures {
        compose = true
    }
    composeOptions {
        kotlinCompilerExtensionVersion = libs.versions.kotlinCompilerExtension.get()
    }
    kotlinOptions {
        jvmTarget = "17"
    }
}

dependencies {
    implementation(platform(libs.androidx.compose.bom))
    implementation(libs.androidx.compose.ui)
    implementation(libs.androidx.compose.material3)
    implementation(libs.mlkit.text.recognition)
    implementation(libs.mlkit.text.recognition.common)
    implementation(project(":android:shared"))

    // Hilt
    implementation(libs.google.hilt.android)
    ksp(libs.google.hilt.compiler)
}



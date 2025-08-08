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

kapt {
    correctErrorTypes = true
}

dependencies {
    implementation(platform(libs.androidx.compose.bom))
    implementation(libs.bundles.compose)
    implementation(project(":android:core-reader"))
    implementation(project(":android:core-data"))
    implementation(project(":android:core-domain"))
    implementation(libs.bundles.room)
    kapt(libs.androidx.room.compiler)
    implementation(libs.androidx.compose.material.icons.extended)
    implementation(libs.androidx.lifecycle.viewmodel.compose)
    implementation(libs.google.hilt.android)
    kapt(libs.google.hilt.compiler)

    // Zoomable Image support - temporarily disabled due to dependency resolution issues
    // implementation(libs.telephoto.zoomable)

    // Archive/document format support
    implementation(libs.pdfium.android) // PDF library - using stable version
    implementation(libs.junrar) // CBR support
    implementation(libs.zip4j) // CBZ support
    implementation(libs.commons.compress) // General archive support
    // implementation(libs.android.pdf.viewer) // Alternative PDF viewer - temporarily disabled
}



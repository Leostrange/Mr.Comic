plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
    id("com.google.dagger.hilt.android")
    id("com.google.devtools.ksp")
}

android {
    lint {
        disable += "NullSafeMutableLiveData"
    }
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
    implementation(project(":android:core-reader"))
    implementation(project(":android:core-data"))
    implementation(project(":android:core-domain"))
    implementation(project(":android:core-ui"))
    implementation(libs.bundles.room)
    ksp(libs.androidx.room.compiler)
    implementation(libs.androidx.compose.material.icons.extended)
    implementation(libs.androidx.lifecycle.viewmodel.compose)
    implementation(libs.google.hilt.android)
    ksp(libs.google.hilt.compiler)
    implementation(libs.androidx.hilt.navigation.compose)

    // Zoomable Image support - temporarily disabled due to dependency resolution issues
    // implementation(libs.telephoto.zoomable)

    // Archive/document format support
    implementation(libs.pdfium.android) // PDF library - using stable version
    implementation(libs.junrar) // CBR support
    implementation(libs.zip4j) // CBZ support
    implementation(libs.commons.compress) // General archive support
    // implementation(libs.android.pdf.viewer) // Alternative PDF viewer - temporarily disabled
    
    // Test dependencies
    testImplementation(libs.bundles.test.unit)
}



plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
    id("com.google.dagger.hilt.android")
    id("com.google.devtools.ksp")
}

android {
    namespace = "com.example.feature.cbr"
    compileSdk = libs.versions.compileSdk.get().toInt()

    defaultConfig {
        minSdk = libs.versions.minSdk.get().toInt()
        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }
    
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    
    kotlinOptions {
        jvmTarget = libs.versions.jvmTarget.get()
    }
    
    buildFeatures {
        compose = true
    }
    
    composeOptions {
        kotlinCompilerExtensionVersion = libs.versions.kotlinCompilerExtension.get()
    }
}

dependencies {
    // Removed app dependency to fix circular reference
    implementation(project(":android:core-reader"))
    implementation(project(":android:core-model"))
    implementation(project(":android:core-ui"))
    
    // CBR/RAR support - OPTIONAL MODULE
    implementation(libs.junrar)
    
    // Compose
    implementation(platform(libs.androidx.compose.bom))
    implementation(libs.androidx.compose.ui)
    implementation(libs.androidx.compose.material3)
    
    // Android framework
    implementation("androidx.core:core-ktx:1.9.0")
    
    // DataStore for preferences
    implementation(libs.androidx.datastore.preferences)
    
    // Material Icons Extended
    implementation(libs.androidx.compose.material.icons.extended)
    
    // Hilt Navigation Compose
    implementation(libs.androidx.hilt.navigation.compose)
    
    // Hilt DI
    implementation(libs.google.hilt.android)
    ksp(libs.google.hilt.compiler)
    
    // Testing
    testImplementation(libs.test.junit)
    androidTestImplementation(libs.androidx.junit)
}

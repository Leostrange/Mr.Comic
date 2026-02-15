plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
    id("com.google.dagger.hilt.android")
    id("com.google.devtools.ksp")
}

android {
    lint {
        disable += "NullSafeMutableLiveData"
    }
    namespace = "com.example.mrcomic"
    compileSdk = libs.versions.compileSdk.get().toInt()
    buildToolsVersion = libs.versions.buildTools.get()

    defaultConfig {
        applicationId = "com.example.mrcomic"
        minSdk = libs.versions.minSdk.get().toInt()
        targetSdk = libs.versions.targetSdk.get().toInt()

        // Updated with improvements: CBZ/CBR, enhanced reader, themes, icons
        versionCode = 13
        versionName = "1.1.0"

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
        vectorDrawables {
            useSupportLibrary = true
        }
    }

    buildTypes {
        release {
            isMinifyEnabled = true
            isShrinkResources = true
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )

            // Aggressive optimizations for APK size
            ndk {
                debugSymbolLevel = "NONE" // No debug symbols in release
            }
        }

        debug {
            isDebuggable = true
            applicationIdSuffix = ".debug"
            versionNameSuffix = "-debug"
        }
    }
    
    // Dynamic Features конфигурация
    // CBR/CBZ support - using regular dependency instead of dynamic feature
    // dynamicFeatures.add(":android:feature_cbr")
    
    // App Bundle configuration for smaller APK sizes
    bundle {
        language {
            enableSplit = true // Separate languages into splits
        }
        density {
            enableSplit = true // Separate densities (xxhdpi, xxxhdpi, etc)
        }
        abi {
            enableSplit = true // Separate ABIs (arm64-v8a, armeabi-v7a, etc)
        }
    }

    // APK splits для уменьшения размера (используется при assembleRelease)
    splits {
        abi {
            isEnable = true
            reset() // Clear default includes
            include("armeabi-v7a", "arm64-v8a", "x86", "x86_64") // Most common ABIs
            isUniversalApk = true // Also generate universal APK
        }
        density {
            isEnable = true
            reset()
            include("mdpi", "hdpi", "xhdpi", "xxhdpi", "xxxhdpi")
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
    
    packaging {
        resources {
            excludes += "/META-INF/{AL2.0,LGPL2.1}"
            excludes += "META-INF/DEPENDENCIES"
        }
    }
}

// KSP does not need kapt options

dependencies {
    // AndroidX Core
    implementation(libs.androidx.core.ktx)
    implementation(libs.androidx.lifecycle.runtime.ktx)
    implementation(libs.androidx.activity.compose)
    implementation(libs.androidx.splashscreen)
    implementation(libs.androidx.lifecycle.viewmodel.compose)
    implementation(libs.androidx.lifecycle.runtime.compose)
    
    // Compose BOM
    implementation(platform(libs.androidx.compose.bom))
    implementation(libs.androidx.compose.ui)
    implementation(libs.androidx.compose.ui.tooling.preview)
    implementation(libs.androidx.compose.material3)
    implementation(libs.androidx.compose.material.icons.extended)
    
    // Navigation
    implementation(libs.androidx.navigation.compose)
    implementation(libs.androidx.hilt.navigation.compose)

    // Networking
    implementation(libs.retrofit.core)
    implementation(libs.retrofit.converter.gson)
    implementation(libs.okhttp.logging.interceptor)
    implementation(libs.google.gson)

    // Hilt DI
    implementation(libs.google.hilt.android)
    ksp(libs.google.hilt.compiler)
    
    // Room Database
    implementation(libs.androidx.room.runtime)
    implementation(libs.androidx.room.ktx)
    ksp(libs.androidx.room.compiler)
    
    // DataStore
    implementation(libs.androidx.datastore.preferences)
    
    // Android modules with proper paths (matching settings.gradle.kts)
    implementation(project(":shared"))
    implementation(project(":core-analytics"))
    implementation(project(":core-ui"))
    implementation(project(":core-data"))
    implementation(project(":core-model"))
    // Enabled now that compilation errors are fixed
    implementation(project(":core-reader"))
    implementation(project(":feature-library"))
    implementation(project(":feature-settings"))
    implementation(project(":feature-reader"))
    implementation(project(":feature-themes"))
    implementation(project(":feature-onboarding"))
    implementation(project(":feature-ocr"))
    implementation(project(":feature-translate"))
    // CBR/CBZ support - using core-reader implementation instead of separate feature module
    // implementation(project(":feature-cbr"))
    
    // Third-party libraries
    implementation(libs.coil.compose)
    implementation(libs.material)
    
    // Archive support for comic files
    implementation(libs.zip4j)
    implementation(libs.junrar)
    implementation(libs.commons.compress)
    
    // PDF support - using pdfbox-android (Maven Central)
    implementation(libs.pdfium.android)
    
    // EPUB support - REMOVED (no available libraries on Maven Central)
    // TODO: Add EPUB support later when library becomes available
    
    // Video splash screen (Media3)
    implementation(libs.media3.exoplayer)
    implementation(libs.media3.ui)
    implementation(libs.media3.session)
    
    // Testing
    testImplementation(libs.test.junit)
    androidTestImplementation(libs.androidx.junit)
    androidTestImplementation(libs.androidx.espresso.core)
    androidTestImplementation(platform(libs.androidx.compose.bom))
    androidTestImplementation("androidx.compose.ui:ui-test-junit4")
    debugImplementation("androidx.compose.ui:ui-tooling")
    debugImplementation("androidx.compose.ui:ui-test-manifest")
}

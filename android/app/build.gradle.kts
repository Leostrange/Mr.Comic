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

    signingConfigs {
        create("release") {
            // Using debug keystore for release signing (temporary solution)
            // For production, replace with proper keystore
            storeFile = rootProject.file("debug.keystore")
            storePassword = "android"
            keyAlias = "androiddebugkey"
            keyPassword = "android"
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
            signingConfig = signingConfigs.getByName("release")
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
    
    // App Bundle конфигурация
    bundle {
        language {
            enableSplit = false
        }
        density {
            enableSplit = false
        }
        abi {
            enableSplit = false
        }
    }
    
    // Отключаем все сплиты для создания универсального APK
    splits {
        abi {
            isEnable = false
            reset()
            isUniversalApk = true
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
    
    // Android modules with proper paths
    implementation(project(":android:shared"))
    implementation(project(":android:core-analytics"))
    implementation(project(":android:core-ui"))
    implementation(project(":android:core-data"))
    implementation(project(":android:core-model"))
    // Enabled now that compilation errors are fixed
    implementation(project(":android:core-reader"))
    implementation(project(":android:feature-library"))
    implementation(project(":android:feature-settings"))
    implementation(project(":android:feature-reader"))
    implementation(project(":android:feature-themes"))
    implementation(project(":android:feature-onboarding"))
    implementation(project(":android:feature-ocr"))
    implementation(project(":android:feature-translate"))
    // CBR/CBZ support - using core-reader implementation instead of separate feature module
    // implementation(project(":android:feature_cbr"))
    
    // Third-party libraries
    implementation(libs.coil.compose)
    implementation(libs.material)
    
    // Archive support for comic files
    implementation(libs.zip4j)
    implementation(libs.junrar)
    implementation(libs.commons.compress)
    
    // PDF support - using stable alternatives
    implementation(libs.pdfium.android)
    // implementation(libs.android.pdf.viewer.fallback)
    
    // EPUB support - LGPL licensed
    implementation(libs.epublib.core) {
        exclude(group = "xmlpull", module = "xmlpull")
        exclude(group = "org.slf4j", module = "slf4j-simple")
    }
    
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



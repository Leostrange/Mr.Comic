plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
    id("com.google.dagger.hilt.android")
    id("org.jetbrains.kotlin.kapt")
}

android {
    namespace = "com.example.mrcomic"
    compileSdk = libs.versions.compileSdk.get().toInt()

    defaultConfig {
        applicationId = "com.example.mrcomic"
        minSdk = libs.versions.minSdk.get().toInt()
        targetSdk = libs.versions.targetSdk.get().toInt()

        versionCode = 1
        versionName = "1.0"

        testInstrumentationRunner = "com.example.mrcomic.CustomTestRunner"
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
            
            // Оптимизации R8
            isDebuggable = false
            isJniDebuggable = false
            renderscriptOptimLevel = 3
            
            // Оптимизация размера APK
            packaging {
                resources {
                    excludes += "/META-INF/{AL2.0,LGPL2.1}"
                    excludes += "/META-INF/androidx.*"
                    excludes += "/META-INF/proguard/*"
                    excludes += "DebugProbesKt.bin"
                    excludes += "kotlin-tooling-metadata.json"
                }
            }
        }
        
        debug {
            isMinifyEnabled = false
            isDebuggable = true
            applicationIdSuffix = ".debug"
            versionNameSuffix = "-debug"
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
        viewBinding = true
    }
    composeOptions {
        kotlinCompilerExtensionVersion = libs.versions.kotlinCompilerExtension.get()
    }
    packaging {
        resources {
            excludes += "/META-INF/{AL2.0,LGPL2.1}"
            excludes += "META-INF/kotlin-stdlib*.kotlin_module"
            pickFirsts += "META-INF/kotlin-stdlib*.kotlin_module"
        }
    }
    lint {
        baseline = file("lint-baseline.xml")
    }
    dependenciesInfo {
        includeInApk = true
        includeInBundle = true
    }
}

kapt {
    arguments {
        arg("room.schemaLocation", "$projectDir/schemas")
    }
}

configurations.all {
    exclude(group = "xmlpull", module = "xmlpull")
}

dependencies {
    implementation(libs.androidx.core.ktx)
    implementation(libs.androidx.lifecycle.runtime.ktx)
    implementation(libs.androidx.activity.compose)
    implementation(libs.androidx.core.splashscreen)
    
    implementation(platform(libs.androidx.compose.bom))
    implementation(libs.androidx.compose.ui)
    implementation(libs.androidx.compose.ui.graphics)
    implementation(libs.androidx.compose.ui.tooling.preview)
    implementation(libs.androidx.compose.material3)
    implementation(libs.androidx.compose.material)
    implementation(libs.androidx.compose.material.icons.core)
    implementation(libs.androidx.compose.material.icons.extended)
    
    // Navigation
    implementation(libs.androidx.navigation.compose)
    implementation(libs.androidx.navigation.ui.ktx)

    // Networking - Retrofit, Gson, OkHttp Logging Interceptor
    implementation(libs.retrofit.core)
    implementation(libs.retrofit.converter.gson)
    implementation(libs.okhttp.logging.interceptor) // For logging API calls
    implementation(libs.google.gson)
    
    // Coil для загрузки изображений
    implementation(libs.coil.compose)
    
    // Material Components для ресурсов
    implementation(libs.material)
    
    // Hilt с kapt
    implementation(libs.google.hilt.android)
    kapt(libs.google.hilt.compiler)
    implementation(libs.androidx.hilt.navigation.compose)
    // Зависимости для Hilt в тестах
    androidTestImplementation(libs.google.hilt.android.testing)
    kaptAndroidTest(libs.google.hilt.compiler)
    
    // Room с kapt
    implementation(libs.androidx.room.runtime)
    implementation(libs.androidx.room.ktx)
    kapt(libs.androidx.room.compiler)
    
    // Android modules with proper paths
    implementation(project(":android:shared"))
    implementation(project(":android:core-analytics"))
    implementation(project(":android:core-ui"))
    implementation(project(":android:core-data"))
    implementation(project(":android:core-model"))
    implementation(project(":android:feature-library"))
    implementation(project(":android:feature-settings"))
    implementation(project(":android:feature-reader"))
    implementation(project(":android:feature-themes"))
    
    testImplementation(libs.test.junit)
    androidTestImplementation(libs.androidx.junit)
    androidTestImplementation(libs.androidx.espresso.core)
    androidTestImplementation(platform(libs.androidx.compose.bom))
    androidTestImplementation("androidx.compose.ui:ui-test-junit4")
    debugImplementation("androidx.compose.ui:ui-tooling")
    debugImplementation("androidx.compose.ui:ui-test-manifest:1.8.3")

    implementation("androidx.compose.ui:ui-viewbinding:1.8.3")

    // Junrar для CBR (RAR)
    implementation(libs.junrar)

    // Archive support
    implementation(libs.libarchive)

    // EPUB (Siegmann's repo) - с исключением конфликтующих зависимостей
    implementation(libs.epublib.core.siegmann) {
        exclude(group = "org.slf4j") // Как рекомендовано в документации epublib
        exclude(group = "xmlpull", module = "xmlpull")
        exclude(group = "com.android.support", module = "support-annotations")
        exclude(group = "com.android.support", module = "support-compat")
        exclude(group = "com.android.support", module = "support-v4")
    }
    implementation(libs.slf4j.android) // Рекомендованная реализация SLF4J для Android

    // Accompanist Permissions
    implementation(libs.accompanist.permissions)

    // WebKit для EPUB
    implementation(libs.webkit)

    // Media3 (ExoPlayer) - с исключением конфликтующих зависимостей
    implementation(libs.media3.exoplayer) {
        exclude(group = "com.android.support", module = "support-annotations")
        exclude(group = "com.android.support", module = "support-compat")
    }
    implementation(libs.media3.ui) {
        exclude(group = "com.android.support", module = "support-annotations")
        exclude(group = "com.android.support", module = "support-compat")
    }
    implementation(libs.media3.session) {
        exclude(group = "com.android.support", module = "support-annotations")
        exclude(group = "com.android.support", module = "support-compat")
    }

    // Libarchive needs this
    implementation(libs.exifinterface)
    
    // Comic Book formats
    // implementation "com.github.siegfriedstech:cbr-android:1.0.3" // We replaced this
    implementation(libs.junrar)

    //FolioReader для EPUB - с исключением конфликтующих зависимостей
    implementation(libs.folioreader) {
        exclude(group = "com.android.support", module = "support-annotations")
        exclude(group = "com.android.support", module = "support-compat")
        exclude(group = "com.android.support", module = "support-v4")
        exclude(group = "com.android.support", module = "design")
        exclude(group = "com.android.support", module = "appcompat-v7")
    }

    // PDFBox Android - с исключением конфликтующих зависимостей
    implementation(libs.pdfbox.android) {
        exclude(group = "com.android.support", module = "support-annotations")
        exclude(group = "com.android.support", module = "support-compat")
        exclude(group = "com.android.support", module = "support-v4")
    }
}

// Jacoco coverage report
tasks.register("jacocoTestReport", org.gradle.testing.jacoco.tasks.JacocoReport::class) {
    dependsOn("testDebugUnitTest")
    reports {
        xml.required.set(true)
        html.required.set(true)
    }
    val fileFilter = listOf("**/R.class", "**/R$*.class", "**/BuildConfig.*", "**/Manifest*.*")
    classDirectories.setFrom(
        files(classDirectories.files.map {
            fileTree(it) {
                exclude(fileFilter)
            }
        })
    )
    sourceDirectories.setFrom(files("src/main/java"))
    executionData.setFrom(files("build/jacoco/testDebugUnitTest.exec"))
}

tasks.withType<org.jetbrains.kotlin.gradle.tasks.KaptGenerateStubs> {
    if (name.contains("UnitTest")) {
        enabled = false
    }
}
tasks.withType<org.jetbrains.kotlin.gradle.tasks.Kapt> {
    if (name.contains("UnitTest")) {
        enabled = false
    }
}
tasks.withType<org.gradle.api.tasks.testing.Test> {
    if (name.contains("UnitTest")) {
        enabled = false
    }
}



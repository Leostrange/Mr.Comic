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
    implementation(platform(libs.androidx.compose.bom))
    implementation(libs.androidx.compose.ui)
    implementation(libs.androidx.compose.ui.graphics)
    implementation(libs.androidx.compose.ui.tooling.preview)
    implementation(libs.androidx.compose.material3)
    implementation(libs.androidx.compose.material)
    implementation(libs.androidx.compose.material.icons.core)
    implementation(libs.androidx.compose.material.icons.extended)
    implementation(libs.androidx.navigation.compose)

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
    
    // Feature modules - пока только shared
    implementation(project(":shared"))
    implementation(project(":core-ui"))
    implementation(project(":core-data"))
    implementation(project(":core-model"))
    implementation(project(":feature-library"))
    implementation(project(":feature-settings"))
    implementation(project(":feature-reader"))
    implementation(project(":feature-themes"))
    
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

    // EPUB (Siegmann's repo)
    implementation(libs.epublib.core.siegmann) {
        exclude(group = "org.slf4j") // Как рекомендовано в документации epublib
        exclude(group = "xmlpull", module = "xmlpull")
    }
    implementation(libs.slf4j.android) // Рекомендованная реализация SLF4J для Android

    // Accompanist Permissions
    implementation(libs.accompanist.permissions)

    // WebKit для EPUB
    implementation(libs.webkit)

    // Media3 (ExoPlayer)
    implementation(libs.media3.exoplayer)
    implementation(libs.media3.ui)
    implementation(libs.media3.session)

    // Libarchive needs this
    implementation(libs.exifinterface)
    
    // Comic Book formats
    // implementation "com.github.siegfriedstech:cbr-android:1.0.3" // We replaced this
    implementation(libs.junrar)

    //FolioReader для EPUB
    implementation(libs.folioreader)

    implementation(libs.pdfbox.android)
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



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
    
    // Coil для загрузки изображений
    implementation("io.coil-kt:coil-compose:2.7.0")
    
    // Material Components для ресурсов
    implementation("com.google.android.material:material:1.12.0")
    
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
    // implementation(project(":feature-library"))
    // implementation(project(":feature-settings"))
    implementation(project(":feature-reader"))
    implementation(project(":feature-themes"))
    
    testImplementation(libs.test.junit)
    androidTestImplementation("androidx.test.ext:junit:1.2.1")
    androidTestImplementation("androidx.test.espresso:espresso-core:3.6.1")
    androidTestImplementation(platform(libs.androidx.compose.bom))
    androidTestImplementation("androidx.compose.ui:ui-test-junit4")
    debugImplementation("androidx.compose.ui:ui-tooling")
    debugImplementation("androidx.compose.ui:ui-test-manifest:1.8.3")

    implementation("androidx.compose.ui:ui-viewbinding:1.8.3")

    // Junrar для CBR (RAR)
    implementation(libs.junrar)

    // Archive support
    implementation("me.zhanghai.android.libarchive:library:1.1.6")

    // EPUB (Maven Central)
    implementation("com.positiondev.epublib:epublib-core:3.1") {
        exclude(group = "xmlpull", module = "xmlpull")
    }

    // Accompanist Permissions
    implementation("com.google.accompanist:accompanist-permissions:0.37.3")

    // WebKit для EPUB
    implementation("androidx.webkit:webkit:1.14.0")

    // Media3 (ExoPlayer)
    implementation("androidx.media3:media3-exoplayer:1.7.1")
    implementation("androidx.media3:media3-ui:1.7.1")
    implementation("androidx.media3:media3-session:1.7.1")

    // Libarchive needs this
    implementation("androidx.exifinterface:exifinterface:1.4.1")
    
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



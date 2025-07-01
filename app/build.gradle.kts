plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
    id("com.google.dagger.hilt.android")
    id("org.jetbrains.kotlin.kapt")
}

android {
    namespace = "com.example.mrcomic"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.example.mrcomic"
        minSdk = 26
        targetSdk = 35
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
        jvmTarget = "17"
    }
    buildFeatures {
        compose = true
        viewBinding = true
    }
    composeOptions {
        kotlinCompilerExtensionVersion = "1.5.8"
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
    ndkVersion = "29.0.13599879 rc2"
    buildToolsVersion = "36.0.0"
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
    implementation("androidx.core:core-ktx:1.16.0")
    implementation("androidx.lifecycle:lifecycle-runtime-ktx:2.9.1")
    implementation("androidx.activity:activity-compose:1.10.1")
    implementation(platform("androidx.compose:compose-bom:2025.06.01"))
    implementation("androidx.compose.ui:ui")
    implementation("androidx.compose.ui:ui-graphics")
    implementation("androidx.compose.ui:ui-tooling-preview")
    implementation("androidx.compose.material3:material3")
    implementation("androidx.compose.material:material")
    implementation("androidx.compose.material:material-icons-core")
    implementation("androidx.compose.material:material-icons-extended")
    implementation("androidx.navigation:navigation-compose:2.9.0")
    
    // Coil для загрузки изображений
    implementation("io.coil-kt:coil-compose:2.7.0")
    
    // Material Components для ресурсов
    implementation("com.google.android.material:material:1.12.0")
    
    // Hilt с kapt
    implementation("com.google.dagger:hilt-android:2.56.2")
    kapt("com.google.dagger:hilt-compiler:2.56.2")
    implementation("androidx.hilt:hilt-navigation-compose:1.2.0")
    // Зависимости для Hilt в тестах
    androidTestImplementation("com.google.dagger:hilt-android-testing:2.56.2")
    kaptAndroidTest("com.google.dagger:hilt-compiler:2.56.2")
    
    // Room с kapt
    implementation("androidx.room:room-runtime:2.7.2")
    implementation("androidx.room:room-ktx:2.7.2")
    kapt("androidx.room:room-compiler:2.7.2")
    
    // Feature modules - пока только shared
    implementation(project(":shared"))
    implementation(project(":core:ui"))
    // implementation(project(":feature-library"))
    // implementation(project(":feature-settings"))
      implementation(project(":feature-reader"))
    implementation(project(":feature-themes")))
    
    testImplementation("junit:junit:4.13.2")
    androidTestImplementation("androidx.test.ext:junit:1.2.1")
    androidTestImplementation("androidx.test.espresso:espresso-core:3.6.1")
    androidTestImplementation(platform("androidx.compose:compose-bom:2025.06.01"))
    androidTestImplementation("androidx.compose.ui:ui-test-junit4")
    debugImplementation("androidx.compose.ui:ui-tooling")
    debugImplementation("androidx.compose.ui:ui-test-manifest:1.8.3")

    implementation("androidx.compose.ui:ui-viewbinding:1.8.3")

    // Junrar для CBR (RAR)
    implementation("com.github.junrar:junrar:7.5.5")

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

    // For rememberLauncherForActivityResult
    implementation("androidx.activity:activity-compose:1.10.1")

    // Libarchive needs this
    implementation("androidx.exifinterface:exifinterface:1.4.1")
    
    // Comic Book formats
    // implementation "com.github.siegfriedstech:cbr-android:1.0.3" // We replaced this
    implementation("com.github.junrar:junrar:7.5.5")
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

    //FolioReader для EPUB
    implementation("com.folioreader:folioreader:0.5.4") //JitPack



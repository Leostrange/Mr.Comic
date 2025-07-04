plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
    id("com.google.dagger.hilt.android")
    kotlin("kapt")
}

android {
    namespace = "com.example.core.reader"
    compileSdk = libs.versions.compileSdk.get().toInt()

    defaultConfig {
        minSdk = libs.versions.minSdk.get().toInt()
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
}

dependencies {
    implementation(project(":core-model"))

    implementation(libs.google.hilt.android)
    kapt(libs.google.hilt.compiler)

    implementation("androidx.collection:collection-ktx:1.4.0")

    // Archive and document format support
    implementation(libs.zip4j)
    implementation(libs.junrar)
    implementation(libs.pdfium.android)
    implementation(libs.djvuAndroid)}
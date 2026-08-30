plugins {
    alias(libs.plugins.android.library)
    alias(libs.plugins.kotlin.android)
    alias(libs.plugins.hilt.android)
    alias(libs.plugins.ksp)
    alias(libs.plugins.detekt)
}
android {
    namespace = "io.leostrange.mrcomic.engine.formats"
    compileSdk = libs.versions.compileSdk.get().toInt()
    ndkVersion = "27.0.12077973"
    defaultConfig {
        minSdk = libs.versions.minSdk.get().toInt()
        externalNativeBuild {
            cmake {
                cppFlags += listOf("-std=c++17")
            }
        }
    }
    externalNativeBuild {
        cmake {
            path = file("src/main/cpp/CMakeLists.txt")
        }
    }
    compileOptions { sourceCompatibility = JavaVersion.VERSION_17; targetCompatibility = JavaVersion.VERSION_17 }
    kotlinOptions { jvmTarget = libs.versions.jvmTarget.get() }
    testOptions { unitTests.isReturnDefaultValues = true }
}
dependencies {
    implementation(project(":engine-api"))
    implementation(project(":core-model"))
    implementation(libs.androidx.core.ktx)
    implementation(libs.documentfile)
    implementation(libs.zip4j)
    implementation(libs.sevenzipjbinding.android)
    implementation(libs.commons.compress)
    implementation(libs.axet.libdjvu)
    implementation(libs.commonmark)
    implementation(libs.commonmark.ext.autolink)
    implementation(libs.commonmark.ext.gfm.strikethrough)
    implementation(libs.commonmark.ext.gfm.tables)
    implementation(libs.commonmark.ext.footnotes)
    implementation(libs.jsoup)
    implementation(libs.google.gson)
    // PDF: используем встроенный android.graphics.pdf.PdfRenderer — внешние lib не нужны
    implementation(libs.google.hilt.android)
    ksp(libs.google.hilt.compiler)
    implementation(libs.kotlinx.coroutines.android)
    testImplementation(libs.test.junit)
    testImplementation(libs.test.mockk)
    testImplementation(libs.robolectric)
    androidTestImplementation(libs.test.androidx.runner)
    androidTestImplementation(libs.test.androidx.junit)
}

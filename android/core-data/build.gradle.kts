plugins {
    alias(libs.plugins.android.library)
    alias(libs.plugins.kotlin.android)
    alias(libs.plugins.hilt.android)
    alias(libs.plugins.ksp)
    alias(libs.plugins.androidx.room)
    alias(libs.plugins.detekt)
}
android {
    namespace = "io.leostrange.mrcomic.core.data"
    compileSdk = libs.versions.compileSdk.get().toInt()
    defaultConfig { minSdk = libs.versions.minSdk.get().toInt() }
    compileOptions { sourceCompatibility = JavaVersion.VERSION_17; targetCompatibility = JavaVersion.VERSION_17 }
    kotlinOptions { jvmTarget = libs.versions.jvmTarget.get() }
}
dependencies {
    implementation(project(":core-model"))
    implementation(project(":core-interfaces"))
    implementation(project(":engine-api"))
    implementation(libs.androidx.core.ktx)
    implementation(libs.androidx.room.runtime)
    implementation(libs.androidx.room.ktx)
    ksp(libs.androidx.room.compiler)
    implementation(libs.androidx.datastore.preferences)
    implementation(libs.documentfile)
    implementation(libs.google.hilt.android)
    ksp(libs.google.hilt.compiler)
    implementation(libs.kotlinx.coroutines.android)
    implementation(libs.zip4j)
    implementation(libs.junrar)
    implementation(libs.sevenzipjbinding.android)
    implementation(libs.commons.compress)
    implementation(libs.google.gson)
    implementation(libs.okhttp)
    // PDF: android.graphics.pdf.PdfRenderer (встроен, внешние lib не нужны)
    implementation(libs.coil.compose)
    testImplementation(libs.test.junit)
    testImplementation(libs.test.kotlinx.coroutines)
    testImplementation(libs.robolectric)
    testImplementation(libs.okhttp.mockwebserver)
    // Only needed to write .7z fixtures for archive-content detection tests (SevenZOutputFile).
    testImplementation(libs.xz)
    androidTestImplementation(libs.test.androidx.junit)
    androidTestImplementation(libs.test.androidx.runner)
    androidTestImplementation(libs.test.room)
}

room {
    schemaDirectory("$projectDir/schemas")
}

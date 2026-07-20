plugins {
    alias(libs.plugins.android.library)
    alias(libs.plugins.kotlin.android)
    alias(libs.plugins.kotlin.compose)
    alias(libs.plugins.hilt.android)
    alias(libs.plugins.ksp)
}
android {
    namespace = "io.leostrange.mrcomic.feature.reader"
    compileSdk = libs.versions.compileSdk.get().toInt()
    defaultConfig { minSdk = libs.versions.minSdk.get().toInt() }
    compileOptions { sourceCompatibility = JavaVersion.VERSION_17; targetCompatibility = JavaVersion.VERSION_17 }
    kotlinOptions { jvmTarget = libs.versions.jvmTarget.get() }
    buildFeatures { compose = true }
}
dependencies {
    implementation(project(":core-model"))
    implementation(project(":core-data"))
    implementation(project(":core-domain"))
    implementation(project(":core-ui"))
    implementation(project(":engine-formats"))
    implementation(project(":engine-llm"))
    implementation(project(":engine-rendering"))
    implementation(project(":engine-api"))
    implementation(project(":engine-registry"))
    api(platform(libs.androidx.compose.bom))
    implementation(libs.androidx.compose.ui)
    implementation(libs.androidx.compose.material3)
    implementation(libs.androidx.compose.material.icons.extended)
    implementation(libs.androidx.webkit)
    implementation(libs.androidx.lifecycle.viewmodel.compose)
    implementation(libs.androidx.lifecycle.runtime.compose)
    implementation(libs.androidx.hilt.navigation.compose)
    implementation(libs.androidx.datastore.preferences)
    implementation(libs.androidx.room.runtime)
    implementation(libs.androidx.room.ktx)
    ksp(libs.androidx.room.compiler)
    testImplementation("org.json:json:20240303")
    implementation(libs.google.hilt.android)
    ksp(libs.google.hilt.compiler)
    implementation(libs.coil.compose)
    implementation(libs.kotlinx.coroutines.android)
    testImplementation(libs.test.junit)
}

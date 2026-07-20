plugins {
    alias(libs.plugins.android.library)
    alias(libs.plugins.kotlin.android)
    alias(libs.plugins.hilt.android)
    alias(libs.plugins.ksp)
}

android {
    namespace = "io.leostrange.mrcomic.engine.registry"
    compileSdk = libs.versions.compileSdk.get().toInt()
    defaultConfig { minSdk = libs.versions.minSdk.get().toInt() }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    kotlinOptions { jvmTarget = libs.versions.jvmTarget.get() }
}

dependencies {
    implementation(project(":engine-api"))
    implementation(project(":core-model"))
    implementation(libs.google.hilt.android)
    ksp(libs.google.hilt.compiler)
    testImplementation(libs.test.junit)
}

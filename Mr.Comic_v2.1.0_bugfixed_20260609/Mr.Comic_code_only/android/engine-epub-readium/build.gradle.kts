plugins {
    alias(libs.plugins.android.library)
    alias(libs.plugins.kotlin.android)
    alias(libs.plugins.hilt.android)
    alias(libs.plugins.ksp)
}

android {
    namespace = "com.example.engine.epub.readium"
    compileSdk = libs.versions.compileSdk.get().toInt()

    defaultConfig {
        minSdk = libs.versions.minSdk.get().toInt()
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = libs.versions.jvmTarget.get()
    }
}

dependencies {
    implementation(project(":core-model"))
    implementation(project(":engine-api"))
    implementation(project(":engine-formats"))

    implementation(libs.androidx.core.ktx)
    implementation(libs.google.hilt.android)
    implementation(libs.kotlinx.coroutines.android)
    implementation(libs.readium.shared)
    implementation(libs.readium.streamer)
    implementation(libs.readium.navigator)

    ksp(libs.google.hilt.compiler)

    testImplementation(libs.test.junit)
}

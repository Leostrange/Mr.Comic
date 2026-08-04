plugins {
    alias(libs.plugins.android.library)
    alias(libs.plugins.kotlin.android)
    alias(libs.plugins.hilt.android)
    alias(libs.plugins.ksp)
    alias(libs.plugins.detekt)
}

detekt {
    buildUponDefaultConfig = false
    config.setFrom(rootProject.files("config/detekt/detekt.yml"))
}

android {
    namespace = "io.leostrange.mrcomic.engine.llm"
    compileSdk = libs.versions.compileSdk.get().toInt()

    defaultConfig {
        minSdk = libs.versions.minSdk.get().toInt()
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = "17"
    }

    buildFeatures {
        buildConfig = true
    }
}

dependencies {
    implementation(libs.google.hilt.android)
    ksp(libs.google.hilt.compiler)
    implementation(libs.kotlinx.coroutines.android)
    implementation(libs.okhttp)
    implementation(project(":core-domain"))
    implementation(project(":core-model"))
    // ONNX Runtime for NLLB inference
    implementation("com.microsoft.onnxruntime:onnxruntime-android:1.17.0")
}

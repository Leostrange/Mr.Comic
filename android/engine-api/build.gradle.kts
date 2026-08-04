plugins {
    alias(libs.plugins.android.library)
    alias(libs.plugins.kotlin.android)
    alias(libs.plugins.detekt)
}

detekt {
    buildUponDefaultConfig = false
    config.setFrom(rootProject.files("config/detekt/detekt.yml"))
}

android {
    namespace = "io.leostrange.mrcomic.engine.api"
    compileSdk = libs.versions.compileSdk.get().toInt()
    defaultConfig { minSdk = libs.versions.minSdk.get().toInt() }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    kotlinOptions { jvmTarget = libs.versions.jvmTarget.get() }
}

dependencies {
    implementation(project(":core-model"))
    implementation(libs.androidx.core.ktx)
    testImplementation(libs.test.junit)
}

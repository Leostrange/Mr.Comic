plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
    id("com.google.dagger.hilt.android")
    kotlin("kapt")
}

android {
    namespace = "com.example.feature.library"
    compileSdk = libs.versions.compileSdk.get().toInt()
    defaultConfig {
        minSdk = libs.versions.minSdk.get().toInt()
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    buildFeatures {
        compose = true
    }
    composeOptions {
        kotlinCompilerExtensionVersion = libs.versions.kotlinCompilerExtension.get()
    }
    kotlinOptions {
<<<<<<< HEAD
        jvmTarget = "17"
=======
        jvmTarget = libs.versions.jvmTarget.get()
>>>>>>> bcc513e42b28e6e535fb2251e79fc3420a26a624
    }
}

dependencies {
    implementation(platform(libs.androidx.compose.bom))
<<<<<<< HEAD
    implementation(project(":core:ui"))
=======
    implementation(project(":core-ui"))
>>>>>>> bcc513e42b28e6e535fb2251e79fc3420a26a624
    implementation(project(":core-data"))
    implementation(project(":core-model"))
    implementation(libs.bundles.compose)
    implementation(libs.androidx.lifecycle.viewmodel.compose)
    implementation(libs.google.hilt.android)
    kapt(libs.google.hilt.compiler)
    testImplementation(libs.bundles.test.unit)
    implementation("com.google.accompanist:accompanist-permissions:0.32.0")
<<<<<<< HEAD
}
=======
}

>>>>>>> bcc513e42b28e6e535fb2251e79fc3420a26a624

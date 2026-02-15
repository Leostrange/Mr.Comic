plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
    id("com.google.dagger.hilt.android")
    id("com.google.devtools.ksp")
}

android {
    lint {
        disable += "NullSafeMutableLiveData"
    }
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
        jvmTarget = libs.versions.jvmTarget.get()
    }
}

dependencies {
    implementation(platform(libs.androidx.compose.bom))
    implementation(project(":core-ui"))
    implementation(project(":core-data"))
    implementation(project(":core-domain"))
    implementation(project(":core-model"))
    implementation(project(":core-reader"))
    implementation(libs.bundles.compose)
    implementation(libs.androidx.compose.material.icons.extended)
    implementation(libs.androidx.lifecycle.viewmodel.compose)
    implementation(libs.androidx.hilt.navigation.compose)
    implementation(libs.google.hilt.android)
    ksp(libs.google.hilt.compiler)
    implementation(libs.bundles.room)
    ksp(libs.androidx.room.compiler)
    implementation(libs.coil.compose)
    implementation(libs.documentfile)
    testImplementation(libs.bundles.test.unit)
    implementation(libs.accompanist.permissions)
}



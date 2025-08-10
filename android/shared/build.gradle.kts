plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
}

android {
    lint {
        disable += "NullSafeMutableLiveData"
    }
    namespace = "com.mrcomic.shared"
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
}

dependencies {
    // Здесь можно будет добавлять общие зависимости, например, для сериализации (kotlinx.serialization)
} 
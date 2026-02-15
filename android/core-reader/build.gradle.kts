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
    namespace = "com.example.core.reader"
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

    implementation(libs.google.hilt.android)
    ksp(libs.google.hilt.compiler)

    implementation(libs.androidx.collection.ktx)

    // Archive and document format support
    implementation(libs.zip4j)
    implementation(libs.junrar)
    implementation(libs.pdfium.android) // PDF library - barteksc version
    implementation(libs.apache.pdfbox) { // Fallback PDF library
        exclude(group = "org.slf4j", module = "slf4j-simple")
    }
    implementation(libs.apache.fontbox)
    implementation(libs.commons.logging)
    implementation(libs.commons.compress)
    
    // EPUB support - REMOVED (no available libraries on Maven Central)
    // TODO: Add EPUB support later when library becomes available
    // implementation(libs.epublib.core) {
    //     exclude(group = "xmlpull", module = "xmlpull")
    //     exclude(group = "org.slf4j", module = "slf4j-simple")
    // }
    
    // Test dependencies
    testImplementation(libs.test.junit)
    testImplementation(libs.test.mockk)
    testImplementation(libs.test.kotlinx.coroutines)
}

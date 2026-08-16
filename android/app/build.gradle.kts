import java.util.Properties

plugins {
    alias(libs.plugins.android.application)
    alias(libs.plugins.kotlin.android)
    alias(libs.plugins.kotlin.compose)
    alias(libs.plugins.hilt.android)
    alias(libs.plugins.ksp)
    alias(libs.plugins.detekt)
    alias(libs.plugins.kover)
}

val localProps = Properties().apply {
    rootProject.file("local.properties").takeIf { it.exists() }?.inputStream()?.use { load(it) }
}

val signingStorePassword = localProps.getProperty("SIGNING_STORE_PASSWORD")
    ?: System.getenv("SIGNING_STORE_PASSWORD")
val signingKeyAlias = localProps.getProperty("SIGNING_KEY_ALIAS")
    ?: System.getenv("SIGNING_KEY_ALIAS")
val signingKeyPassword = localProps.getProperty("SIGNING_KEY_PASSWORD")
    ?: System.getenv("SIGNING_KEY_PASSWORD")
val customKeystoreFile = rootProject.file("keystore/mrcomic.keystore")
val hasCustomSigning = customKeystoreFile.exists() &&
    !signingStorePassword.isNullOrBlank() &&
    !signingKeyAlias.isNullOrBlank() &&
    !signingKeyPassword.isNullOrBlank()

val gitSha = providers.exec {
    commandLine("git", "rev-parse", "--short=8", "HEAD")
}.standardOutput.asText.map { it.trim() }.orElse("unknown").get()

android {
    namespace = "io.leostrange.mrcomic"
    compileSdk = libs.versions.compileSdk.get().toInt()

    // APK/AAB output name
    base.archivesName = "Mr.Comic"

    defaultConfig {
        applicationId = "io.leostrange.mrcomic"
        minSdk = libs.versions.minSdk.get().toInt()
        targetSdk = libs.versions.targetSdk.get().toInt()
        versionCode = 3
        versionName = "2.2.0"
        buildConfigField("String", "GIT_SHA", "\"$gitSha\"")
        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
        vectorDrawables { useSupportLibrary = true }
    }

    signingConfigs {
        if (hasCustomSigning) {
            create("mrcomic") {
                storeFile = customKeystoreFile
                storePassword = signingStorePassword
                keyAlias = signingKeyAlias
                keyPassword = signingKeyPassword
            }
        }
    }

    buildTypes {
        release {
            isMinifyEnabled = true
            isShrinkResources = true
            proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro")
            if (hasCustomSigning) {
                signingConfig = signingConfigs.getByName("mrcomic")
            }
        }
        debug {
            isDebuggable = true
            applicationIdSuffix = ".debug"
            versionNameSuffix = "-debug"
            if (hasCustomSigning) {
                signingConfig = signingConfigs.getByName("mrcomic")
            }
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
        isCoreLibraryDesugaringEnabled = true
    }
    kotlinOptions { jvmTarget = libs.versions.jvmTarget.get() }
    buildFeatures { compose = true; buildConfig = true }
    androidResources {
        // The packaged Room dictionary has grown beyond what AAPT compression handles reliably.
        // The shipped dictionaries are precompressed under a custom extension; keep them as-is.
        noCompress += listOf("db", "sqlite", "sqlite3", "dbpack")
    }
    packaging {
        jniLibs {
            // Extract .so files at install time to avoid 16KB page alignment issues
            // on Android 15+ devices. Third-party native libraries (libdjvu, 7z, ONNX)
            // are not yet 16KB-aligned; this restores pre-AGP-9 behavior.
            useLegacyPackaging = true
        }
        resources {
            excludes += "/META-INF/{AL2.0,LGPL2.1}"
            excludes += "META-INF/DEPENDENCIES"
        }
    }
}

detekt {
    buildUponDefaultConfig = false
    config.setFrom(rootProject.files("config/detekt/detekt.yml"))
}

dependencies {
    implementation(libs.androidx.core.ktx)
    implementation(libs.androidx.lifecycle.runtime.ktx)
    implementation(libs.androidx.activity.compose)
    implementation(libs.androidx.splashscreen)
    implementation(libs.androidx.lifecycle.viewmodel.compose)
    implementation(libs.androidx.lifecycle.runtime.compose)

    implementation(platform(libs.androidx.compose.bom))
    implementation(libs.androidx.compose.ui)
    implementation(libs.androidx.compose.ui.tooling.preview)
    implementation(libs.androidx.compose.material3)
    implementation(libs.androidx.compose.material.icons.extended)

    implementation(libs.androidx.navigation.compose)
    implementation(libs.androidx.hilt.navigation.compose)

    implementation(libs.google.hilt.android)
    ksp(libs.google.hilt.compiler)

    implementation(libs.androidx.room.runtime)
    implementation(libs.androidx.room.ktx)
    ksp(libs.androidx.room.compiler)

    implementation(libs.androidx.datastore.preferences)

    implementation(libs.media3.exoplayer)
    implementation(libs.media3.ui)
    implementation(libs.media3.session)

    implementation(libs.coil.compose)
    implementation(libs.material)
    implementation(libs.google.gson)
    implementation(libs.zip4j)
    implementation(libs.junrar)
    implementation(libs.commons.compress)
    // PDF рендеринг — android.graphics.pdf.PdfRenderer (встроен, API 21+)

    implementation(libs.retrofit.core)
    implementation(libs.retrofit.converter.gson)
    implementation(libs.okhttp.logging.interceptor)
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.5")

    implementation(project(":core-model"))
    implementation(project(":core-interfaces"))
    implementation(project(":core-data"))
    implementation(project(":core-domain"))
    implementation(project(":core-ui"))
    implementation(project(":engine-formats"))
    implementation(project(":engine-llm"))
    implementation(project(":engine-rendering"))
    implementation(project(":engine-api"))
    implementation(project(":engine-registry"))
    implementation(project(":engine-epub-readium"))
    implementation(project(":feature-library"))
    implementation(project(":feature-reader"))
    implementation(project(":feature-settings"))
    implementation(project(":feature-ocr"))
    implementation(project(":feature-onboarding"))

    testImplementation(libs.test.junit)
    androidTestImplementation(libs.androidx.junit)
    androidTestImplementation(libs.androidx.espresso.core)
    androidTestImplementation(platform(libs.androidx.compose.bom))
    androidTestImplementation("androidx.compose.ui:ui-test-junit4")
    debugImplementation("androidx.compose.ui:ui-tooling")
    debugImplementation("androidx.compose.ui:ui-test-manifest")
}

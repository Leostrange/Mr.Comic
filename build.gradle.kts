// Top-level build file where you can add configuration options common to all sub-projects/modules.
buildscript {
    extra.apply {
        set("room_version", "2.6.1")
    }
}

plugins {
    id("com.android.application") version "8.7.2" apply false
    id("com.android.library") version "8.7.2" apply false
    id("org.jetbrains.kotlin.android") version "1.9.25" apply false
    id("com.google.dagger.hilt.android") version "2.51.1" apply false
    id("org.jetbrains.kotlin.plugin.serialization") version "1.9.25" apply false
    id("com.google.devtools.ksp") version "1.9.25-1.0.20" apply false
    id("io.gitlab.arturbosch.detekt") version "1.23.4"
    id("org.owasp.dependencycheck") version "10.0.3"
}

// Clean task for removing build directories
tasks.register("clean", Delete::class) {
    delete(rootProject.layout.buildDirectory)
}

// Task to check Android module structure
tasks.register("checkStructure") {
    doLast {
        println("🏗️ Android Project Structure:")
        println("├── android/")
        println("│   ├── app/                 (Main Android application)")
        println("│   ├── core-*/             (Core modules)")
        println("│   ├── feature-*/          (Feature modules)")
        println("│   └── shared/              (Shared utilities)")
        println("├── scripts/                 (Development scripts)")
        println("├── reports/                 (Build reports)")
        println("└── archive/                 (Legacy files)")
        println("")
        println("🎯 To build: ./gradlew :android:app:build")
        println("🚀 To run: Open project in Android Studio and run :android:app")
    }
}

// Task to show available modules
tasks.register("modules") {
    doLast {
        println("📦 Available modules:")
        subprojects.forEach { project ->
            println("  - ${project.path}")
        }
    }
}

// Detekt configuration for all subprojects
subprojects {
    plugins.whenPluginAdded {
        when (this) {
            is io.gitlab.arturbosch.detekt.DetektPlugin -> {
                extensions.configure<io.gitlab.arturbosch.detekt.extensions.DetektExtension> {
                    config.setFrom(rootProject.files("detekt.yml"))
                    buildUponDefaultConfig = true
                    autoCorrect = false
                }
                
                // Configure reports on individual Detekt tasks (modern approach)
                tasks.withType<io.gitlab.arturbosch.detekt.Detekt>().configureEach {
                    jvmTarget = "17"
                    reports {
                        html.required.set(true)
                        xml.required.set(true)
                        txt.required.set(false) // Disable TXT to avoid deprecation warnings
                        sarif.required.set(true)
                        md.required.set(false)
                    }
                }
            }
        }
    }
    // Force Kotlin stdlib 1.9.25 across all modules
    configurations.configureEach {
        resolutionStrategy.eachDependency {
            if (requested.group == "org.jetbrains.kotlin" && requested.name.startsWith("kotlin-stdlib")) {
                useVersion("1.9.25")
                because("Align Kotlin stdlib with Kotlin Gradle plugin 1.9.25 to avoid metadata version mismatch")
            }
        }
    }
}
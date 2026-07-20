plugins {
    alias(libs.plugins.android.application) apply false
    alias(libs.plugins.android.library) apply false
    alias(libs.plugins.kotlin.android) apply false
    alias(libs.plugins.kotlin.compose) apply false
    alias(libs.plugins.hilt.android) apply false
    alias(libs.plugins.ksp) apply false
    alias(libs.plugins.detekt)
}

detekt {
    buildUponDefaultConfig = true
    config.setFrom(files("$rootDir/config/detekt/detekt.yml"))
    baseline = file("$rootDir/config/detekt/baseline.xml")
}

subprojects {
    configurations.all {
        resolutionStrategy {
            force("org.jetbrains.kotlin:kotlin-stdlib:${libs.versions.kotlin.get()}")
            force("org.jetbrains.kotlin:kotlin-stdlib-jdk7:${libs.versions.kotlin.get()}")
            force("org.jetbrains.kotlin:kotlin-stdlib-jdk8:${libs.versions.kotlin.get()}")
        }
        // Запрещаем pdfium-android (использует android.support.v4, несовместим с AndroidX без Jetifier)
        exclude(group = "com.shockwave.pdfium", module = "pdfium-android")
        // Запрещаем pdfbox-android (не нужен — используем встроенный android.graphics.pdf.PdfRenderer)
        exclude(group = "com.tom-roush", module = "pdfbox-android")
    }
}

tasks.register("clean", Delete::class) {
    delete(rootProject.layout.buildDirectory)
}

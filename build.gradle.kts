plugins {
    alias(libs.plugins.android.application) apply false
    alias(libs.plugins.android.library) apply false
    alias(libs.plugins.kotlin.android) apply false
    alias(libs.plugins.kotlin.compose) apply false
    alias(libs.plugins.hilt.android) apply false
    alias(libs.plugins.ksp) apply false
}

subprojects {
    configurations.all {
        resolutionStrategy {
            force("org.jetbrains.kotlin:kotlin-stdlib:2.0.21")
            force("org.jetbrains.kotlin:kotlin-stdlib-jdk7:2.0.21")
            force("org.jetbrains.kotlin:kotlin-stdlib-jdk8:2.0.21")
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

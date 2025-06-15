package com.example.mrcomic.cli

import com.example.mrcomic.utils.EpubReader
import java.io.File
import java.io.FileInputStream

/**
 * CLI утилита для отображения мультимедиа контента в EPUB файлах
 * Показывает заглушки для видео/аудио элементов
 */
class EpubMultimediaCLI {

    companion object {
        private const val TAG = "EpubMultimediaCLI"
    }

    private val epubReader = EpubReader(null) // Context не нужен для CLI

    /**
     * Анализ мультимедиа контента в EPUB файле
     */
    fun analyzeEpubMultimedia(epubPath: String): Boolean {
        val epubFile = File(epubPath)
        
        if (!epubFile.exists()) {
            println("❌ Error: EPUB file not found: $epubPath")
            return false
        }

        if (!epubFile.extension.lowercase().equals("epub")) {
            println("❌ Error: File is not an EPUB: $epubPath")
            return false
        }

        println("📚 EPUB Multimedia Analysis")
        println("=" * 50)
        println("📁 File: ${epubFile.name}")
        println("📍 Path: ${epubFile.absolutePath}")
        println("💾 Size: ${String.format("%.2f", epubFile.length() / (1024f * 1024f))} MB")
        println()

        try {
            FileInputStream(epubFile).use { inputStream ->
                val book = epubReader.openEpub(inputStream)
                
                if (book == null) {
                    println("❌ Error: Could not open EPUB file")
                    return false
                }

                // Основная информация о книге
                println("📖 Book Information:")
                println("   Title: ${book.title ?: "Unknown"}")
                println("   Authors: ${book.metadata.authors.joinToString(", ") { it.toString() }}")
                println("   Language: ${book.metadata.language ?: "Unknown"}")
                println("   Publisher: ${book.metadata.publishers.joinToString(", ") { it.toString() }}")
                println("   Chapters: ${book.spine.spineReferences.size}")
                println()

                // Анализ мультимедиа
                val hasMultimedia = epubReader.hasMultimediaContent()
                
                if (!hasMultimedia) {
                    println("ℹ️  No multimedia content found in this EPUB")
                    println("   This is a standard text-based EPUB file")
                    return true
                }

                println("🎬 Multimedia Content Found!")
                println()

                // Статистика мультимедиа
                val stats = epubReader.getMultimediaStatistics()
                showMultimediaStatistics(stats)

                // Детальный анализ видео
                val videoResources = epubReader.getVideoResources()
                if (videoResources.isNotEmpty()) {
                    showVideoResources(videoResources)
                }

                // Детальный анализ аудио
                val audioResources = epubReader.getAudioResources()
                if (audioResources.isNotEmpty()) {
                    showAudioResources(audioResources)
                }

                // Детальный анализ интерактивных элементов
                val interactiveResources = epubReader.getInteractiveResources()
                if (interactiveResources.isNotEmpty()) {
                    showInteractiveResources(interactiveResources)
                }

                epubReader.close()
                return true
            }
        } catch (e: Exception) {
            println("❌ Error analyzing EPUB: ${e.message}")
            return false
        }
    }

    /**
     * Отображение статистики мультимедиа
     */
    private fun showMultimediaStatistics(stats: EpubReader.MultimediaStatistics) {
        println("📊 Multimedia Statistics:")
        println("   Total multimedia files: ${stats.totalMultimediaCount}")
        println("   Total multimedia size: ${stats.totalMultimediaSizeMB} MB")
        println()
        
        if (stats.videoCount > 0) {
            println("   🎥 Video files: ${stats.videoCount} (${stats.totalVideoSizeMB} MB)")
        }
        
        if (stats.audioCount > 0) {
            println("   🔊 Audio files: ${stats.audioCount} (${stats.totalAudioSizeMB} MB)")
        }
        
        if (stats.interactiveCount > 0) {
            println("   ⚡ Interactive files: ${stats.interactiveCount} (${stats.totalInteractiveSizeMB} MB)")
        }
        
        println()
    }

    /**
     * Отображение видео ресурсов
     */
    private fun showVideoResources(videoResources: List<EpubReader.MultimediaResource>) {
        println("🎥 Video Resources:")
        println("-" * 30)
        
        videoResources.forEachIndexed { index, video ->
            println("   ${index + 1}. ${video.title}")
            println("      📁 File: ${video.href}")
            println("      🎬 Type: ${video.mediaType}")
            println("      💾 Size: ${String.format("%.2f", video.sizeMB)} MB")
            println("      🎭 CLI Stub: [VIDEO_PLACEHOLDER]")
            println("         ┌─────────────────────────────┐")
            println("         │  ▶️  ${video.title.take(20).padEnd(20)} │")
            println("         │     Video content here      │")
            println("         │     (${video.mediaType.uppercase()})${" ".repeat(maxOf(0, 18 - video.mediaType.length))} │")
            println("         └─────────────────────────────┘")
            println()
        }
    }

    /**
     * Отображение аудио ресурсов
     */
    private fun showAudioResources(audioResources: List<EpubReader.MultimediaResource>) {
        println("🔊 Audio Resources:")
        println("-" * 30)
        
        audioResources.forEachIndexed { index, audio ->
            println("   ${index + 1}. ${audio.title}")
            println("      📁 File: ${audio.href}")
            println("      🎵 Type: ${audio.mediaType}")
            println("      💾 Size: ${String.format("%.2f", audio.sizeMB)} MB")
            println("      🎭 CLI Stub: [AUDIO_PLACEHOLDER]")
            println("         ♪ ♫ ♪ ♫ ♪ ♫ ♪ ♫ ♪ ♫ ♪ ♫")
            println("         🎵 ${audio.title.take(25)}")
            println("         🔊 Audio content (${audio.mediaType.uppercase()})")
            println("         ⏯️  [Play] [Pause] [Stop]")
            println("         ♪ ♫ ♪ ♫ ♪ ♫ ♪ ♫ ♪ ♫ ♪ ♫")
            println()
        }
    }

    /**
     * Отображение интерактивных ресурсов
     */
    private fun showInteractiveResources(interactiveResources: List<EpubReader.MultimediaResource>) {
        println("⚡ Interactive Resources:")
        println("-" * 30)
        
        interactiveResources.forEachIndexed { index, interactive ->
            println("   ${index + 1}. ${interactive.title}")
            println("      📁 File: ${interactive.href}")
            println("      ⚡ Type: ${interactive.mediaType}")
            println("      💾 Size: ${interactive.sizeKB} KB")
            println("      🎭 CLI Stub: [INTERACTIVE_PLACEHOLDER]")
            
            when (interactive.mediaType.lowercase()) {
                "js", "javascript" -> {
                    println("         ╔═══════════════════════════╗")
                    println("         ║  🔧 JavaScript Module    ║")
                    println("         ║  ${interactive.title.take(20).padEnd(20)} ║")
                    println("         ║  Interactive content      ║")
                    println("         ╚═══════════════════════════╝")
                }
                "css" -> {
                    println("         ╔═══════════════════════════╗")
                    println("         ║  🎨 CSS Stylesheet        ║")
                    println("         ║  ${interactive.title.take(20).padEnd(20)} ║")
                    println("         ║  Style definitions        ║")
                    println("         ╚═══════════════════════════╝")
                }
                "svg" -> {
                    println("         ╔═══════════════════════════╗")
                    println("         ║  🖼️  SVG Graphics          ║")
                    println("         ║  ${interactive.title.take(20).padEnd(20)} ║")
                    println("         ║  Vector graphics          ║")
                    println("         ╚═══════════════════════════╝")
                }
                else -> {
                    println("         ╔═══════════════════════════╗")
                    println("         ║  ⚡ Interactive Element   ║")
                    println("         ║  ${interactive.title.take(20).padEnd(20)} ║")
                    println("         ║  ${interactive.mediaType.uppercase().take(20).padEnd(20)} ║")
                    println("         ╚═══════════════════════════╝")
                }
            }
            println()
        }
    }

    /**
     * Создание демонстрационного EPUB с мультимедиа
     */
    fun createMultimediaDemo() {
        println("🎬 EPUB Multimedia Demo")
        println("=" * 30)
        println()
        
        println("This is how multimedia content would appear in an enhanced EPUB:")
        println()
        
        // Демо видео
        println("🎥 Video Example:")
        println("   ┌─────────────────────────────────────┐")
        println("   │  ▶️  Chapter 1 Introduction Video   │")
        println("   │                                     │")
        println("   │     [Video Player Interface]       │")
        println("   │     ⏯️  ⏹️  🔊  ⏮️  ⏭️               │")
        println("   │     00:00 ████████░░░░ 05:30       │")
        println("   │                                     │")
        println("   └─────────────────────────────────────┘")
        println()
        
        // Демо аудио
        println("🔊 Audio Example:")
        println("   ♪ ♫ ♪ ♫ ♪ ♫ ♪ ♫ ♪ ♫ ♪ ♫ ♪ ♫ ♪ ♫")
        println("   🎵 Background Music - Chapter Theme")
        println("   🔊 Narration by Professional Voice Actor")
        println("   ⏯️  [Play] [Pause] [Stop] 🔊 [Volume]")
        println("   📊 ████████████░░░░░░░░ 02:15 / 03:45")
        println("   ♪ ♫ ♪ ♫ ♪ ♫ ♪ ♫ ♪ ♫ ♪ ♫ ♪ ♫ ♪ ♫")
        println()
        
        // Демо интерактивных элементов
        println("⚡ Interactive Example:")
        println("   ╔═══════════════════════════════════╗")
        println("   ║  🎮 Interactive Quiz              ║")
        println("   ║                                   ║")
        println("   ║  Question: What is the capital    ║")
        println("   ║  of France?                       ║")
        println("   ║                                   ║")
        println("   ║  ○ London    ○ Berlin             ║")
        println("   ║  ● Paris     ○ Madrid             ║")
        println("   ║                                   ║")
        println("   ║  [Submit Answer] [Next Question]  ║")
        println("   ╚═══════════════════════════════════╝")
        println()
        
        println("ℹ️  Note: In a real implementation, these would be")
        println("   fully functional multimedia elements with")
        println("   proper playback controls and interactivity.")
    }

    /**
     * Показать поддерживаемые мультимедиа форматы
     */
    fun showSupportedFormats() {
        println("🎯 Supported Multimedia Formats")
        println("=" * 35)
        println()
        
        println("🎥 Video Formats:")
        println("   • MP4 (H.264/H.265)")
        println("   • WebM (VP8/VP9)")
        println("   • OGG (Theora)")
        println("   • AVI (Various codecs)")
        println("   • MOV (QuickTime)")
        println()
        
        println("🔊 Audio Formats:")
        println("   • MP3 (MPEG Audio)")
        println("   • OGG (Vorbis)")
        println("   • WAV (Uncompressed)")
        println("   • M4A (AAC)")
        println("   • AAC (Advanced Audio)")
        println("   • FLAC (Lossless)")
        println()
        
        println("⚡ Interactive Formats:")
        println("   • JavaScript (ES5/ES6)")
        println("   • CSS3 (Stylesheets)")
        println("   • SVG (Vector Graphics)")
        println("   • HTML5 (Enhanced content)")
        println()
        
        println("ℹ️  Note: Actual playback support depends on")
        println("   the device's multimedia capabilities and")
        println("   installed codecs.")
    }
}

/**
 * Функция-расширение для повторения строки
 */
private operator fun String.times(count: Int): String {
    return this.repeat(count)
}


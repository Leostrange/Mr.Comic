package com.example.mrcomic.cli

import com.example.mrcomic.utils.ModernImageDecoder
import java.io.File

/**
 * CLI утилита для отображения метаданных изображений
 */
class ImageMetadataCLI {

    companion object {
        private const val TAG = "ImageMetadataCLI"
    }

    private val imageDecoder = ModernImageDecoder(null) // Context не нужен для метаданных

    /**
     * Показать метаданные изображения
     */
    fun showImageMetadata(imagePath: String): Boolean {
        val imageFile = File(imagePath)
        
        if (!imageFile.exists()) {
            println("❌ Error: Image file not found: $imagePath")
            return false
        }

        if (!imageDecoder.isFormatSupported(imageFile.extension)) {
            println("❌ Error: Unsupported image format: ${imageFile.extension}")
            return false
        }

        println("📸 Image Metadata Analysis")
        println("=" * 50)
        println("📁 File: ${imageFile.name}")
        println("📍 Path: ${imageFile.absolutePath}")
        println()

        val metadata = imageDecoder.getImageMetadata(imageFile)
        
        if (metadata != null) {
            println("🖼️  Format Information:")
            println("   Format: ${metadata.format}")
            println("   Dimensions: ${metadata.width} x ${metadata.height} pixels")
            println("   Aspect Ratio: ${String.format("%.2f", metadata.aspectRatio)}")
            println("   Megapixels: ${String.format("%.2f", metadata.megapixels)} MP")
            println()
            
            println("🎨 Color Information:")
            println("   Color Space: ${metadata.colorSpace}")
            println("   Has Alpha Channel: ${if (metadata.hasAlpha) "Yes" else "No"}")
            println("   Animated: ${if (metadata.isAnimated) "Yes" else "No"}")
            println()
            
            println("💾 File Information:")
            println("   File Size: ${String.format("%.2f", metadata.fileSizeMB)} MB")
            println("   Bytes per Pixel: ${String.format("%.2f", metadata.fileSize.toFloat() / (metadata.width * metadata.height))}")
            println()
            
            // Дополнительная информация о формате
            showFormatSpecificInfo(metadata)
            
            return true
        } else {
            println("❌ Error: Could not read image metadata")
            return false
        }
    }

    /**
     * Показать информацию, специфичную для формата
     */
    private fun showFormatSpecificInfo(metadata: ModernImageDecoder.ImageMetadata) {
        println("ℹ️  Format-Specific Information:")
        
        when (metadata.format.uppercase()) {
            "WEBP" -> {
                println("   • WebP format developed by Google")
                println("   • Supports both lossy and lossless compression")
                println("   • Good balance between quality and file size")
                if (metadata.isAnimated) {
                    println("   • Animated WebP detected")
                }
            }
            
            "AVIF" -> {
                println("   • AVIF (AV1 Image File Format)")
                println("   • Next-generation image format")
                println("   • Superior compression compared to JPEG/WebP")
                println("   • Supports HDR and wide color gamut")
            }
            
            "HEIC", "HEIF" -> {
                println("   • HEIC/HEIF format by Apple")
                println("   • Based on HEVC video codec")
                println("   • Excellent compression efficiency")
                println("   • Supports multiple images in one file")
            }
            
            "PNG" -> {
                println("   • PNG (Portable Network Graphics)")
                println("   • Lossless compression")
                println("   • Supports transparency")
                println("   • Best for graphics with few colors")
            }
            
            "JPEG", "JPG" -> {
                println("   • JPEG (Joint Photographic Experts Group)")
                println("   • Lossy compression")
                println("   • Best for photographs")
                println("   • Widely supported format")
            }
            
            else -> {
                println("   • Standard image format")
            }
        }
        println()
    }

    /**
     * Показать поддерживаемые форматы
     */
    fun showSupportedFormats() {
        println("🎯 Supported Image Formats")
        println("=" * 30)
        
        val formats = imageDecoder.getSupportedFormats()
        
        println("📱 Traditional Formats:")
        formats.filter { it in setOf("jpg", "jpeg", "png", "gif", "bmp") }
            .forEach { println("   • ${it.uppercase()}") }
        
        println()
        println("🚀 Modern Formats (Android 9+):")
        formats.filter { it in setOf("webp", "avif", "heic", "heif") }
            .forEach { println("   • ${it.uppercase()}") }
        
        println()
        println("Total supported formats: ${formats.size}")
    }

    /**
     * Анализ папки с изображениями
     */
    fun analyzeImageFolder(folderPath: String): Boolean {
        val folder = File(folderPath)
        
        if (!folder.exists() || !folder.isDirectory) {
            println("❌ Error: Folder not found or not a directory: $folderPath")
            return false
        }

        val imageFiles = folder.listFiles { file ->
            imageDecoder.isFormatSupported(file.extension)
        } ?: emptyArray()

        if (imageFiles.isEmpty()) {
            println("📁 No supported image files found in: $folderPath")
            return false
        }

        println("📁 Image Folder Analysis")
        println("=" * 50)
        println("📍 Folder: ${folder.absolutePath}")
        println("🖼️  Found ${imageFiles.size} image files")
        println()

        val formatCounts = mutableMapOf<String, Int>()
        var totalSize = 0L
        var totalPixels = 0L

        imageFiles.forEach { file ->
            val metadata = imageDecoder.getImageMetadata(file)
            if (metadata != null) {
                formatCounts[metadata.format] = formatCounts.getOrDefault(metadata.format, 0) + 1
                totalSize += metadata.fileSize
                totalPixels += (metadata.width * metadata.height)
                
                println("   ${file.name} - ${metadata.width}x${metadata.height} (${metadata.format})")
            }
        }

        println()
        println("📊 Summary:")
        println("   Total files: ${imageFiles.size}")
        println("   Total size: ${String.format("%.2f", totalSize / (1024f * 1024f))} MB")
        println("   Average size: ${String.format("%.2f", totalSize / imageFiles.size / (1024f * 1024f))} MB")
        println()
        
        println("📈 Format distribution:")
        formatCounts.forEach { (format, count) ->
            val percentage = (count * 100f / imageFiles.size)
            println("   $format: $count files (${String.format("%.1f", percentage)}%)")
        }

        return true
    }
}

/**
 * Функция-расширение для повторения строки
 */
private operator fun String.times(count: Int): String {
    return this.repeat(count)
}


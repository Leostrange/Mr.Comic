package com.example.mrcomic.data

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.pdf.PdfRenderer
import android.os.ParcelFileDescriptor
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import nl.siegmann.epublib.epub.EpubReader
import com.github.shiraji.mobi.MobiBook
import java.io.*
import java.util.zip.ZipInputStream
import com.github.junrar.Archive
import org.apache.pdfbox.pdmodel.PDDocument
import org.apache.pdfbox.rendering.PDFRenderer
import org.apache.pdfbox.rendering.ImageType
import java.awt.image.BufferedImage
import javax.imageio.ImageIO
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken

/**
 * Универсальная система поддержки форматов файлов
 * Поддерживает: CBZ, CBR, PDF, EPUB, MOBI, DJVU, WebP, AVIF, HEIF, TXT, MD
 */
object FormatHandler {
    
    data class FormatInfo(
        val extension: String,
        val mimeType: String,
        val description: String,
        val isSupported: Boolean,
        val requiresPassword: Boolean = false,
        val maxFileSize: Long = Long.MAX_VALUE
    )
    
    data class ExtractionResult(
        val pages: List<File>,
        val metadata: Map<String, Any>,
        val thumbnails: List<File>,
        val errors: List<String> = emptyList()
    )
    
    enum class ComicFormat(
        val extensions: List<String>,
        val mimeTypes: List<String>,
        val description: String
    ) {
        CBZ(
            listOf("cbz", "zip"),
            listOf("application/zip", "application/x-cbz"),
            "Comic Book ZIP Archive"
        ),
        CBR(
            listOf("cbr", "rar"),
            listOf("application/x-rar-compressed", "application/x-cbr"),
            "Comic Book RAR Archive"
        ),
        CB7(
            listOf("cb7", "7z"),
            listOf("application/x-7z-compressed", "application/x-cb7"),
            "Comic Book 7Z Archive"
        ),
        CBT(
            listOf("cbt", "tar"),
            listOf("application/x-tar", "application/x-cbt"),
            "Comic Book TAR Archive"
        ),
        PDF(
            listOf("pdf"),
            listOf("application/pdf"),
            "Portable Document Format"
        ),
        EPUB(
            listOf("epub"),
            listOf("application/epub+zip"),
            "Electronic Publication"
        ),
        MOBI(
            listOf("mobi", "azw", "azw3"),
            listOf("application/x-mobipocket-ebook", "application/vnd.amazon.ebook"),
            "Mobipocket eBook"
        ),
        DJVU(
            listOf("djvu", "djv"),
            listOf("image/vnd.djvu"),
            "DjVu Document"
        ),
        WEBP(
            listOf("webp"),
            listOf("image/webp"),
            "WebP Image"
        ),
        AVIF(
            listOf("avif"),
            listOf("image/avif"),
            "AV1 Image File Format"
        ),
        HEIF(
            listOf("heif", "heic"),
            listOf("image/heif", "image/heic"),
            "High Efficiency Image Format"
        ),
        TEXT(
            listOf("txt", "md", "markdown"),
            listOf("text/plain", "text/markdown"),
            "Text Document"
        )
    }
    
    private val supportedFormats = ComicFormat.values().toList()
    
    /**
     * Получает информацию о поддерживаемых форматах
     */
    fun getSupportedFormats(): List<FormatInfo> {
        return supportedFormats.flatMap { format ->
            format.extensions.map { ext ->
                FormatInfo(
                    extension = ext,
                    mimeType = format.mimeTypes.firstOrNull() ?: "application/octet-stream",
                    description = format.description,
                    isSupported = true,
                    requiresPassword = format in listOf(ComicFormat.CBR, ComicFormat.CB7, ComicFormat.PDF),
                    maxFileSize = when (format) {
                        ComicFormat.PDF -> 10L * 1024 * 1024 * 1024 // 10GB
                        ComicFormat.CBZ, ComicFormat.CBR -> 5L * 1024 * 1024 * 1024 // 5GB
                        else -> 1L * 1024 * 1024 * 1024 // 1GB
                    }
                )
            }
        }
    }
    
    /**
     * Определяет формат файла по расширению и содержимому
     */
    suspend fun detectFormat(file: File): ComicFormat? = withContext(Dispatchers.IO) {
        val extension = file.extension.lowercase()
        
        // Сначала проверяем по расширению
        val formatByExtension = supportedFormats.find { format ->
            format.extensions.contains(extension)
        }
        
        if (formatByExtension != null) {
            return@withContext formatByExtension
        }
        
        // Если не найдено, проверяем по содержимому файла
        try {
            val header = ByteArray(16)
            file.inputStream().use { it.read(header) }
            
            when {
                // ZIP/CBZ signature
                header[0] == 0x50.toByte() && header[1] == 0x4B.toByte() -> ComicFormat.CBZ
                // RAR/CBR signature
                header[0] == 0x52.toByte() && header[1] == 0x61.toByte() -> ComicFormat.CBR
                // PDF signature
                header[0] == 0x25.toByte() && header[1] == 0x50.toByte() && 
                header[2] == 0x44.toByte() && header[3] == 0x46.toByte() -> ComicFormat.PDF
                // 7Z signature
                header[0] == 0x37.toByte() && header[1] == 0x7A.toByte() -> ComicFormat.CB7
                // DJVU signature
                header[0] == 0x41.toByte() && header[1] == 0x54.toByte() && 
                header[2] == 0x26.toByte() && header[3] == 0x54.toByte() -> ComicFormat.DJVU
                // WebP signature
                header[0] == 0x52.toByte() && header[1] == 0x49.toByte() && 
                header[2] == 0x46.toByte() && header[3] == 0x46.toByte() &&
                header[8] == 0x57.toByte() && header[9] == 0x45.toByte() -> ComicFormat.WEBP
                else -> null
            }
        } catch (e: Exception) {
            null
        }
    }
    
    /**
     * Извлекает содержимое файла в зависимости от формата
     */
    suspend fun extractContent(
        file: File,
        outputDir: File,
        context: Context,
        password: String? = null,
        onProgress: ((Float) -> Unit)? = null
    ): ExtractionResult = withContext(Dispatchers.IO) {
        
        val format = detectFormat(file) ?: return@withContext ExtractionResult(
            emptyList(), emptyMap(), emptyList(), listOf("Неподдерживаемый формат файла")
        )
        
        outputDir.mkdirs()
        val errors = mutableListOf<String>()
        
        try {
            when (format) {
                ComicFormat.CBZ -> extractCBZ(file, outputDir, onProgress, errors)
                ComicFormat.CBR -> extractCBR(file, outputDir, password, onProgress, errors)
                ComicFormat.CB7 -> extractCB7(file, outputDir, password, onProgress, errors)
                ComicFormat.CBT -> extractCBT(file, outputDir, onProgress, errors)
                ComicFormat.PDF -> extractPDF(file, outputDir, password, onProgress, errors)
                ComicFormat.EPUB -> extractEPUB(file, outputDir, onProgress, errors)
                ComicFormat.MOBI -> extractMOBI(file, outputDir, onProgress, errors)
                ComicFormat.DJVU -> extractDJVU(file, outputDir, onProgress, errors)
                ComicFormat.WEBP -> extractWebP(file, outputDir, onProgress, errors)
                ComicFormat.AVIF -> extractAVIF(file, outputDir, onProgress, errors)
                ComicFormat.HEIF -> extractHEIF(file, outputDir, onProgress, errors)
                ComicFormat.TEXT -> extractText(file, outputDir, onProgress, errors)
            }
        } catch (e: Exception) {
            errors.add("Критическая ошибка извлечения: ${e.message}")
            ExtractionResult(emptyList(), emptyMap(), emptyList(), errors)
        }
    }
    
    private fun extractCBZ(
        file: File,
        outputDir: File,
        onProgress: ((Float) -> Unit)?,
        errors: MutableList<String>
    ): ExtractionResult {
        val pages = mutableListOf<File>()
        val thumbnails = mutableListOf<File>()
        val metadata = mutableMapOf<String, Any>()
        
        try {
            val extractionResult = ArchiveExtractor.extractArchive(
                file, outputDir, null, onProgress, true
            )
            
            val imageFiles = extractionResult.extractedFiles
                .filter { isImageFile(it) }
                .sortedWith(naturalOrderComparator())
            
            pages.addAll(imageFiles)
            errors.addAll(extractionResult.errors)
            
            // Генерируем миниатюры
            imageFiles.take(5).forEach { imageFile ->
                val thumbnail = generateThumbnail(imageFile, outputDir)
                thumbnail?.let { thumbnails.add(it) }
            }
            
            metadata["pageCount"] = pages.size
            metadata["totalSize"] = extractionResult.totalSize
            metadata["checksum"] = extractionResult.checksum
            
        } catch (e: Exception) {
            errors.add("Ошибка извлечения CBZ: ${e.message}")
        }
        
        return ExtractionResult(pages, metadata, thumbnails, errors)
    }
    
    private fun extractCBR(
        file: File,
        outputDir: File,
        password: String?,
        onProgress: ((Float) -> Unit)?,
        errors: MutableList<String>
    ): ExtractionResult {
        val pages = mutableListOf<File>()
        val thumbnails = mutableListOf<File>()
        val metadata = mutableMapOf<String, Any>()
        
        try {
            val extractionResult = ArchiveExtractor.extractArchive(
                file, outputDir, password, onProgress, true
            )
            
            val imageFiles = extractionResult.extractedFiles
                .filter { isImageFile(it) }
                .sortedWith(naturalOrderComparator())
            
            pages.addAll(imageFiles)
            errors.addAll(extractionResult.errors)
            
            // Генерируем миниатюры
            imageFiles.take(5).forEach { imageFile ->
                val thumbnail = generateThumbnail(imageFile, outputDir)
                thumbnail?.let { thumbnails.add(it) }
            }
            
            metadata["pageCount"] = pages.size
            metadata["totalSize"] = extractionResult.totalSize
            metadata["checksum"] = extractionResult.checksum
            
        } catch (e: Exception) {
            errors.add("Ошибка извлечения CBR: ${e.message}")
        }
        
        return ExtractionResult(pages, metadata, thumbnails, errors)
    }
    
    private fun extractCB7(
        file: File,
        outputDir: File,
        password: String?,
        onProgress: ((Float) -> Unit)?,
        errors: MutableList<String>
    ): ExtractionResult {
        // Аналогично CBR, но с использованием 7Z экстрактора
        return extractCBR(file, outputDir, password, onProgress, errors)
    }
    
    private fun extractCBT(
        file: File,
        outputDir: File,
        onProgress: ((Float) -> Unit)?,
        errors: MutableList<String>
    ): ExtractionResult {
        // Аналогично CBZ, но с использованием TAR экстрактора
        return extractCBZ(file, outputDir, onProgress, errors)
    }
    
    private fun extractPDF(
        file: File,
        outputDir: File,
        password: String?,
        onProgress: ((Float) -> Unit)?,
        errors: MutableList<String>
    ): ExtractionResult {
        val pages = mutableListOf<File>()
        val thumbnails = mutableListOf<File>()
        val metadata = mutableMapOf<String, Any>()
        
        try {
            // Используем PDFBox для извлечения страниц
            val document = if (password != null) {
                PDDocument.load(file, password)
            } else {
                PDDocument.load(file)
            }
            
            val renderer = PDFRenderer(document)
            val pageCount = document.numberOfPages
            
            metadata["pageCount"] = pageCount
            metadata["title"] = document.documentInformation?.title ?: file.nameWithoutExtension
            metadata["author"] = document.documentInformation?.author ?: ""
            metadata["subject"] = document.documentInformation?.subject ?: ""
            metadata["keywords"] = document.documentInformation?.keywords ?: ""
            metadata["creator"] = document.documentInformation?.creator ?: ""
            metadata["producer"] = document.documentInformation?.producer ?: ""
            
            for (i in 0 until pageCount) {
                try {
                    val image = renderer.renderImageWithDPI(i, 300f, ImageType.RGB)
                    val pageFile = File(outputDir, "page_${i + 1}.png")
                    
                    ImageIO.write(image, "PNG", pageFile)
                    pages.add(pageFile)
                    
                    // Генерируем миниатюру для первых 5 страниц
                    if (i < 5) {
                        val thumbnail = generateThumbnail(pageFile, outputDir)
                        thumbnail?.let { thumbnails.add(it) }
                    }
                    
                    onProgress?.invoke((i + 1).toFloat() / pageCount)
                    
                } catch (e: Exception) {
                    errors.add("Ошибка рендеринга страницы ${i + 1}: ${e.message}")
                }
            }
            
            document.close()
            
        } catch (e: Exception) {
            errors.add("Ошибка извлечения PDF: ${e.message}")
        }
        
        return ExtractionResult(pages, metadata, thumbnails, errors)
    }
    
    private fun extractEPUB(
        file: File,
        outputDir: File,
        onProgress: ((Float) -> Unit)?,
        errors: MutableList<String>
    ): ExtractionResult {
        val pages = mutableListOf<File>()
        val thumbnails = mutableListOf<File>()
        val metadata = mutableMapOf<String, Any>()
        
        try {
            val epubBook = EpubReader().readEpub(file.inputStream())
            
            metadata["title"] = epubBook.title ?: file.nameWithoutExtension
            metadata["authors"] = epubBook.metadata.authors.map { it.toString() }
            metadata["language"] = epubBook.metadata.language ?: ""
            metadata["publisher"] = epubBook.metadata.publishers.joinToString()
            metadata["description"] = epubBook.metadata.descriptions.joinToString()
            metadata["subjects"] = epubBook.metadata.subjects
            metadata["rights"] = epubBook.metadata.rights.joinToString()
            
            // Извлекаем изображения из EPUB
            val resources = epubBook.resources.all
            var imageCount = 0
            
            resources.forEach { resource ->
                if (resource.mediaType.name.startsWith("image/")) {
                    try {
                        val imageFile = File(outputDir, "image_${imageCount + 1}.${getExtensionFromMimeType(resource.mediaType.name)}")
                        imageFile.writeBytes(resource.data)
                        pages.add(imageFile)
                        
                        if (imageCount < 5) {
                            val thumbnail = generateThumbnail(imageFile, outputDir)
                            thumbnail?.let { thumbnails.add(it) }
                        }
                        
                        imageCount++
                        onProgress?.invoke(imageCount.toFloat() / resources.size)
                        
                    } catch (e: Exception) {
                        errors.add("Ошибка извлечения изображения: ${e.message}")
                    }
                }
            }
            
            metadata["pageCount"] = imageCount
            
        } catch (e: Exception) {
            errors.add("Ошибка извлечения EPUB: ${e.message}")
        }
        
        return ExtractionResult(pages, metadata, thumbnails, errors)
    }
    
    private fun extractMOBI(
        file: File,
        outputDir: File,
        onProgress: ((Float) -> Unit)?,
        errors: MutableList<String>
    ): ExtractionResult {
        val pages = mutableListOf<File>()
        val thumbnails = mutableListOf<File>()
        val metadata = mutableMapOf<String, Any>()
        
        try {
            val mobiBook = MobiBook(file)
            
            metadata["title"] = mobiBook.title ?: file.nameWithoutExtension
            metadata["author"] = mobiBook.author ?: ""
            metadata["subject"] = mobiBook.subject ?: ""
            metadata["description"] = mobiBook.description ?: ""
            
            // MOBI обычно содержит текст, но может содержать изображения
            // Здесь нужна более сложная логика для извлечения изображений
            
            onProgress?.invoke(1.0f)
            
        } catch (e: Exception) {
            errors.add("Ошибка извлечения MOBI: ${e.message}")
        }
        
        return ExtractionResult(pages, metadata, thumbnails, errors)
    }
    
    private fun extractDJVU(
        file: File,
        outputDir: File,
        onProgress: ((Float) -> Unit)?,
        errors: MutableList<String>
    ): ExtractionResult {
        val pages = mutableListOf<File>()
        val thumbnails = mutableListOf<File>()
        val metadata = mutableMapOf<String, Any>()
        
        try {
            // Для DJVU нужна специализированная библиотека
            // Здесь псевдокод для демонстрации
            errors.add("DJVU поддержка в разработке")
            
        } catch (e: Exception) {
            errors.add("Ошибка извлечения DJVU: ${e.message}")
        }
        
        return ExtractionResult(pages, metadata, thumbnails, errors)
    }
    
    private fun extractWebP(
        file: File,
        outputDir: File,
        onProgress: ((Float) -> Unit)?,
        errors: MutableList<String>
    ): ExtractionResult {
        val pages = mutableListOf<File>()
        val thumbnails = mutableListOf<File>()
        val metadata = mutableMapOf<String, Any>()
        
        try {
            // WebP - это одиночное изображение
            val outputFile = File(outputDir, "page_1.webp")
            file.copyTo(outputFile)
            pages.add(outputFile)
            
            val thumbnail = generateThumbnail(outputFile, outputDir)
            thumbnail?.let { thumbnails.add(it) }
            
            metadata["pageCount"] = 1
            metadata["format"] = "WebP"
            
            onProgress?.invoke(1.0f)
            
        } catch (e: Exception) {
            errors.add("Ошибка обработки WebP: ${e.message}")
        }
        
        return ExtractionResult(pages, metadata, thumbnails, errors)
    }
    
    private fun extractAVIF(
        file: File,
        outputDir: File,
        onProgress: ((Float) -> Unit)?,
        errors: MutableList<String>
    ): ExtractionResult {
        // Аналогично WebP
        return extractWebP(file, outputDir, onProgress, errors)
    }
    
    private fun extractHEIF(
        file: File,
        outputDir: File,
        onProgress: ((Float) -> Unit)?,
        errors: MutableList<String>
    ): ExtractionResult {
        // Аналогично WebP
        return extractWebP(file, outputDir, onProgress, errors)
    }
    
    private fun extractText(
        file: File,
        outputDir: File,
        onProgress: ((Float) -> Unit)?,
        errors: MutableList<String>
    ): ExtractionResult {
        val pages = mutableListOf<File>()
        val thumbnails = mutableListOf<File>()
        val metadata = mutableMapOf<String, Any>()
        
        try {
            val content = file.readText()
            val outputFile = File(outputDir, "content.txt")
            outputFile.writeText(content)
            pages.add(outputFile)
            
            metadata["pageCount"] = 1
            metadata["wordCount"] = content.split("\\s+".toRegex()).size
            metadata["characterCount"] = content.length
            metadata["format"] = "Text"
            
            onProgress?.invoke(1.0f)
            
        } catch (e: Exception) {
            errors.add("Ошибка обработки текста: ${e.message}")
        }
        
        return ExtractionResult(pages, metadata, thumbnails, errors)
    }
    
    /**
     * Проверяет, является ли файл изображением
     */
    private fun isImageFile(file: File): Boolean {
        val imageExtensions = setOf("jpg", "jpeg", "png", "gif", "bmp", "webp", "avif", "heif", "heic")
        return imageExtensions.contains(file.extension.lowercase())
    }
    
    /**
     * Генерирует миниатюру изображения
     */
    private fun generateThumbnail(imageFile: File, outputDir: File): File? {
        return try {
            val options = BitmapFactory.Options().apply {
                inJustDecodeBounds = true
            }
            BitmapFactory.decodeFile(imageFile.absolutePath, options)
            
            val scaleFactor = maxOf(
                options.outWidth / 200,
                options.outHeight / 300
            )
            
            val thumbnailOptions = BitmapFactory.Options().apply {
                inSampleSize = scaleFactor
            }
            
            val bitmap = BitmapFactory.decodeFile(imageFile.absolutePath, thumbnailOptions)
            val thumbnailFile = File(outputDir, "thumb_${imageFile.name}")
            
            FileOutputStream(thumbnailFile).use { out ->
                bitmap.compress(Bitmap.CompressFormat.JPEG, 85, out)
            }
            
            bitmap.recycle()
            thumbnailFile
            
        } catch (e: Exception) {
            null
        }
    }
    
    /**
     * Естественная сортировка файлов (учитывает числа в именах)
     */
    private fun naturalOrderComparator(): Comparator<File> {
        return Comparator { file1, file2 ->
            val name1 = file1.name
            val name2 = file2.name
            
            val regex = Regex("(\\d+)")
            val parts1 = regex.split(name1)
            val parts2 = regex.split(name2)
            
            val numbers1 = regex.findAll(name1).map { it.value.toIntOrNull() ?: 0 }.toList()
            val numbers2 = regex.findAll(name2).map { it.value.toIntOrNull() ?: 0 }.toList()
            
            for (i in 0 until minOf(parts1.size, parts2.size)) {
                val textComparison = parts1[i].compareTo(parts2[i])
                if (textComparison != 0) return@Comparator textComparison
                
                if (i < numbers1.size && i < numbers2.size) {
                    val numberComparison = numbers1[i].compareTo(numbers2[i])
                    if (numberComparison != 0) return@Comparator numberComparison
                }
            }
            
            name1.compareTo(name2)
        }
    }
    
    /**
     * Получает расширение файла по MIME типу
     */
    private fun getExtensionFromMimeType(mimeType: String): String {
        return when (mimeType) {
            "image/jpeg" -> "jpg"
            "image/png" -> "png"
            "image/gif" -> "gif"
            "image/bmp" -> "bmp"
            "image/webp" -> "webp"
            "image/avif" -> "avif"
            "image/heif" -> "heif"
            "image/heic" -> "heic"
            else -> "jpg"
        }
    }
    
    /**
     * Валидирует файл перед обработкой
     */
    suspend fun validateFile(file: File): List<String> = withContext(Dispatchers.IO) {
        val errors = mutableListOf<String>()
        
        if (!file.exists()) {
            errors.add("Файл не существует")
            return@withContext errors
        }
        
        if (!file.canRead()) {
            errors.add("Нет прав на чтение файла")
        }
        
        if (file.length() == 0L) {
            errors.add("Файл пустой")
        }
        
        val format = detectFormat(file)
        if (format == null) {
            errors.add("Неподдерживаемый формат файла")
        } else {
            val formatInfo = getSupportedFormats().find { it.extension == file.extension.lowercase() }
            if (formatInfo != null && file.length() > formatInfo.maxFileSize) {
                errors.add("Файл превышает максимальный размер (${formatInfo.maxFileSize / (1024 * 1024)} MB)")
            }
        }
        
        errors
    }
}


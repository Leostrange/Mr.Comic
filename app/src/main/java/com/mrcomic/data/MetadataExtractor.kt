package com.example.mrcomic.data

import android.content.Context
import android.graphics.BitmapFactory
import android.media.ExifInterface
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import nl.siegmann.epublib.epub.EpubReader
import com.github.shiraji.mobi.MobiBook
import org.apache.pdfbox.pdmodel.PDDocument
import org.apache.pdfbox.pdmodel.PDDocumentInformation
import com.drew.imaging.ImageMetadataReader
import com.drew.metadata.Directory
import com.drew.metadata.Tag
import java.io.File
import java.io.FileInputStream
import java.util.*
import java.util.zip.ZipInputStream
import com.github.junrar.Archive
import com.google.gson.Gson
import com.google.gson.JsonParser
import java.text.SimpleDateFormat
import java.security.MessageDigest
import kotlin.collections.HashMap

/**
 * Расширенная система извлечения метаданных
 * Поддерживает 50+ типов метаданных из различных источников
 */
object AdvancedMetadataExtractor {
    
    data class ComicMetadata(
        // Основная информация
        val title: String,
        val originalTitle: String? = null,
        val subtitle: String? = null,
        val series: String? = null,
        val volume: Int? = null,
        val issue: Int? = null,
        val chapter: Int? = null,
        
        // Авторы и создатели
        val authors: List<String> = emptyList(),
        val writers: List<String> = emptyList(),
        val artists: List<String> = emptyList(),
        val colorists: List<String> = emptyList(),
        val letterers: List<String> = emptyList(),
        val editors: List<String> = emptyList(),
        val translators: List<String> = emptyList(),
        
        // Публикация
        val publisher: String? = null,
        val imprint: String? = null,
        val publicationDate: Date? = null,
        val originalPublicationDate: Date? = null,
        val isbn: String? = null,
        val issn: String? = null,
        
        // Классификация
        val genres: List<String> = emptyList(),
        val tags: List<String> = emptyList(),
        val categories: List<String> = emptyList(),
        val ageRating: String? = null,
        val contentWarnings: List<String> = emptyList(),
        
        // Описание
        val description: String? = null,
        val summary: String? = null,
        val notes: String? = null,
        val review: String? = null,
        
        // Технические данные
        val language: String? = null,
        val originalLanguage: String? = null,
        val pageCount: Int? = null,
        val fileSize: Long? = null,
        val format: String? = null,
        val resolution: String? = null,
        val colorMode: String? = null,
        val compression: String? = null,
        
        // Идентификаторы
        val comicVineId: String? = null,
        val myAnimeListId: String? = null,
        val aniListId: String? = null,
        val mangaUpdatesId: String? = null,
        val goodreadsId: String? = null,
        val amazonId: String? = null,
        
        // Рейтинги
        val userRating: Float? = null,
        val communityRating: Float? = null,
        val criticRating: Float? = null,
        val popularity: Int? = null,
        
        // Статус
        val status: String? = null, // ongoing, completed, hiatus, cancelled
        val readingStatus: String? = null, // unread, reading, completed, dropped
        val readingProgress: Float? = null,
        val lastReadDate: Date? = null,
        
        // Коллекция
        val collections: List<String> = emptyList(),
        val favorites: Boolean = false,
        val bookmarks: List<Int> = emptyList(),
        
        // Файловые метаданные
        val filePath: String? = null,
        val fileName: String? = null,
        val fileHash: String? = null,
        val creationDate: Date? = null,
        val modificationDate: Date? = null,
        val importDate: Date? = null,
        
        // Дополнительные данные
        val customFields: Map<String, Any> = emptyMap(),
        val extractionErrors: List<String> = emptyList()
    )
    
    /**
     * Извлекает полные метаданные из файла
     */
    suspend fun extractFullMetadata(
        file: File,
        context: Context? = null,
        includeImageAnalysis: Boolean = true
    ): ComicMetadata = withContext(Dispatchers.IO) {
        
        val errors = mutableListOf<String>()
        val customFields = mutableMapOf<String, Any>()
        
        try {
            val format = FormatHandler.detectFormat(file)
            val basicMetadata = extractBasicMetadata(file, format, errors)
            val fileMetadata = extractFileMetadata(file, errors)
            val embeddedMetadata = extractEmbeddedMetadata(file, format, errors)
            val externalMetadata = extractExternalMetadata(file, errors)
            
            var imageMetadata: Map<String, Any> = emptyMap()
            if (includeImageAnalysis && context != null) {
                imageMetadata = extractImageMetadata(file, format, context, errors)
            }
            
            // Объединяем все источники метаданных
            val combinedMetadata = combineMetadataSources(
                basicMetadata,
                fileMetadata,
                embeddedMetadata,
                externalMetadata,
                imageMetadata,
                customFields
            )
            
            combinedMetadata.copy(extractionErrors = errors)
            
        } catch (e: Exception) {
            errors.add("Критическая ошибка извлечения метаданных: ${e.message}")
            ComicMetadata(
                title = file.nameWithoutExtension,
                fileName = file.name,
                filePath = file.absolutePath,
                extractionErrors = errors
            )
        }
    }
    
    /**
     * Извлекает базовые метаданные в зависимости от формата
     */
    private fun extractBasicMetadata(
        file: File,
        format: FormatHandler.ComicFormat?,
        errors: MutableList<String>
    ): Map<String, Any> {
        
        return when (format) {
            FormatHandler.ComicFormat.CBZ -> extractCBZMetadata(file, errors)
            FormatHandler.ComicFormat.CBR -> extractCBRMetadata(file, errors)
            FormatHandler.ComicFormat.PDF -> extractPDFMetadata(file, errors)
            FormatHandler.ComicFormat.EPUB -> extractEPUBMetadata(file, errors)
            FormatHandler.ComicFormat.MOBI -> extractMOBIMetadata(file, errors)
            else -> {
                errors.add("Неподдерживаемый формат для извлечения метаданных")
                mapOf("title" to file.nameWithoutExtension)
            }
        }
    }
    
    /**
     * Извлекает метаданные из CBZ архива
     */
    private fun extractCBZMetadata(file: File, errors: MutableList<String>): Map<String, Any> {
        val metadata = mutableMapOf<String, Any>()
        
        try {
            ZipInputStream(file.inputStream()).use { zis ->
                var entry = zis.nextEntry
                
                while (entry != null) {
                    when (entry.name.lowercase()) {
                        "comicinfo.xml" -> {
                            val xmlContent = zis.readBytes().toString(Charsets.UTF_8)
                            metadata.putAll(parseComicInfoXML(xmlContent, errors))
                        }
                        "metadata.json" -> {
                            val jsonContent = zis.readBytes().toString(Charsets.UTF_8)
                            metadata.putAll(parseMetadataJSON(jsonContent, errors))
                        }
                        "series.json" -> {
                            val seriesContent = zis.readBytes().toString(Charsets.UTF_8)
                            metadata.putAll(parseSeriesJSON(seriesContent, errors))
                        }
                    }
                    
                    zis.closeEntry()
                    entry = zis.nextEntry
                }
            }
            
            // Если метаданные не найдены, пытаемся извлечь из имени файла
            if (metadata.isEmpty()) {
                metadata.putAll(parseFileNameMetadata(file.nameWithoutExtension))
            }
            
        } catch (e: Exception) {
            errors.add("Ошибка извлечения CBZ метаданных: ${e.message}")
        }
        
        return metadata
    }
    
    /**
     * Извлекает метаданные из CBR архива
     */
    private fun extractCBRMetadata(file: File, errors: MutableList<String>): Map<String, Any> {
        val metadata = mutableMapOf<String, Any>()
        
        try {
            val archive = Archive(file)
            val headers = archive.fileHeaders
            
            headers.forEach { header ->
                when (header.fileName.lowercase()) {
                    "comicinfo.xml" -> {
                        val xmlContent = archive.extractFile(header).toString(Charsets.UTF_8)
                        metadata.putAll(parseComicInfoXML(xmlContent, errors))
                    }
                    "metadata.json" -> {
                        val jsonContent = archive.extractFile(header).toString(Charsets.UTF_8)
                        metadata.putAll(parseMetadataJSON(jsonContent, errors))
                    }
                }
            }
            
            archive.close()
            
            if (metadata.isEmpty()) {
                metadata.putAll(parseFileNameMetadata(file.nameWithoutExtension))
            }
            
        } catch (e: Exception) {
            errors.add("Ошибка извлечения CBR метаданных: ${e.message}")
        }
        
        return metadata
    }
    
    /**
     * Извлекает метаданные из PDF файла
     */
    private fun extractPDFMetadata(file: File, errors: MutableList<String>): Map<String, Any> {
        val metadata = mutableMapOf<String, Any>()
        
        try {
            val document = PDDocument.load(file)
            val info = document.documentInformation
            
            info?.let { docInfo ->
                docInfo.title?.let { metadata["title"] = it }
                docInfo.author?.let { metadata["authors"] = listOf(it) }
                docInfo.subject?.let { metadata["description"] = it }
                docInfo.keywords?.let { metadata["tags"] = it.split(",").map { tag -> tag.trim() } }
                docInfo.creator?.let { metadata["creator"] = it }
                docInfo.producer?.let { metadata["producer"] = it }
                docInfo.creationDate?.let { metadata["creationDate"] = it.time }
                docInfo.modificationDate?.let { metadata["modificationDate"] = it.time }
            }
            
            metadata["pageCount"] = document.numberOfPages
            
            // Извлекаем XMP метаданные если доступны
            document.documentCatalog.metadata?.let { xmpMetadata ->
                try {
                    val xmpContent = String(xmpMetadata.toByteArray())
                    metadata.putAll(parseXMPMetadata(xmpContent, errors))
                } catch (e: Exception) {
                    errors.add("Ошибка парсинга XMP метаданных: ${e.message}")
                }
            }
            
            document.close()
            
        } catch (e: Exception) {
            errors.add("Ошибка извлечения PDF метаданных: ${e.message}")
        }
        
        return metadata
    }
    
    /**
     * Извлекает метаданные из EPUB файла
     */
    private fun extractEPUBMetadata(file: File, errors: MutableList<String>): Map<String, Any> {
        val metadata = mutableMapOf<String, Any>()
        
        try {
            val epubBook = EpubReader().readEpub(file.inputStream())
            
            epubBook.title?.let { metadata["title"] = it }
            
            val authors = epubBook.metadata.authors.map { it.toString() }
            if (authors.isNotEmpty()) {
                metadata["authors"] = authors
            }
            
            epubBook.metadata.language?.let { metadata["language"] = it }
            
            val publishers = epubBook.metadata.publishers.map { it.toString() }
            if (publishers.isNotEmpty()) {
                metadata["publisher"] = publishers.first()
            }
            
            val descriptions = epubBook.metadata.descriptions.map { it.toString() }
            if (descriptions.isNotEmpty()) {
                metadata["description"] = descriptions.joinToString("\n")
            }
            
            val subjects = epubBook.metadata.subjects.map { it.toString() }
            if (subjects.isNotEmpty()) {
                metadata["tags"] = subjects
            }
            
            val rights = epubBook.metadata.rights.map { it.toString() }
            if (rights.isNotEmpty()) {
                metadata["rights"] = rights.joinToString(", ")
            }
            
            // Извлекаем дополнительные метаданные из OPF
            epubBook.metadata.otherProperties.forEach { property ->
                metadata["epub_${property.name}"] = property.value
            }
            
        } catch (e: Exception) {
            errors.add("Ошибка извлечения EPUB метаданных: ${e.message}")
        }
        
        return metadata
    }
    
    /**
     * Извлекает метаданные из MOBI файла
     */
    private fun extractMOBIMetadata(file: File, errors: MutableList<String>): Map<String, Any> {
        val metadata = mutableMapOf<String, Any>()
        
        try {
            val mobiBook = MobiBook(file)
            
            mobiBook.title?.let { metadata["title"] = it }
            mobiBook.author?.let { metadata["authors"] = listOf(it) }
            mobiBook.subject?.let { metadata["tags"] = listOf(it) }
            mobiBook.description?.let { metadata["description"] = it }
            
            // Дополнительные MOBI метаданные
            metadata["format"] = "MOBI"
            
        } catch (e: Exception) {
            errors.add("Ошибка извлечения MOBI метаданных: ${e.message}")
        }
        
        return metadata
    }
    
    /**
     * Извлекает файловые метаданные
     */
    private fun extractFileMetadata(file: File, errors: MutableList<String>): Map<String, Any> {
        val metadata = mutableMapOf<String, Any>()
        
        try {
            metadata["fileName"] = file.name
            metadata["filePath"] = file.absolutePath
            metadata["fileSize"] = file.length()
            metadata["fileExtension"] = file.extension
            metadata["lastModified"] = Date(file.lastModified())
            
            // Вычисляем хеш файла
            val hash = calculateFileHash(file)
            metadata["fileHash"] = hash
            
            // Определяем MIME тип
            val mimeType = determineMimeType(file)
            metadata["mimeType"] = mimeType
            
        } catch (e: Exception) {
            errors.add("Ошибка извлечения файловых метаданных: ${e.message}")
        }
        
        return metadata
    }
    
    /**
     * Извлекает встроенные метаданные изображений
     */
    private fun extractEmbeddedMetadata(
        file: File,
        format: FormatHandler.ComicFormat?,
        errors: MutableList<String>
    ): Map<String, Any> {
        val metadata = mutableMapOf<String, Any>()
        
        try {
            // Для архивов извлекаем первое изображение и анализируем его EXIF
            when (format) {
                FormatHandler.ComicFormat.CBZ, FormatHandler.ComicFormat.CBR -> {
                    val firstImage = extractFirstImageFromArchive(file, format)
                    firstImage?.let { imageFile ->
                        metadata.putAll(extractImageEXIF(imageFile, errors))
                        imageFile.delete() // Удаляем временный файл
                    }
                }
                else -> {
                    // Для других форматов пытаемся извлечь EXIF напрямую
                    if (isImageFile(file)) {
                        metadata.putAll(extractImageEXIF(file, errors))
                    }
                }
            }
            
        } catch (e: Exception) {
            errors.add("Ошибка извлечения встроенных метаданных: ${e.message}")
        }
        
        return metadata
    }
    
    /**
     * Извлекает внешние метаданные (из сопутствующих файлов)
     */
    private fun extractExternalMetadata(file: File, errors: MutableList<String>): Map<String, Any> {
        val metadata = mutableMapOf<String, Any>()
        
        try {
            val parentDir = file.parentFile ?: return metadata
            val baseName = file.nameWithoutExtension
            
            // Ищем файлы метаданных
            val metadataFiles = listOf(
                File(parentDir, "$baseName.xml"),
                File(parentDir, "$baseName.json"),
                File(parentDir, "$baseName.nfo"),
                File(parentDir, "$baseName.txt"),
                File(parentDir, "metadata.xml"),
                File(parentDir, "metadata.json"),
                File(parentDir, "series.json"),
                File(parentDir, "collection.json")
            )
            
            metadataFiles.forEach { metadataFile ->
                if (metadataFile.exists()) {
                    when (metadataFile.extension.lowercase()) {
                        "xml", "nfo" -> {
                            val xmlContent = metadataFile.readText()
                            metadata.putAll(parseComicInfoXML(xmlContent, errors))
                        }
                        "json" -> {
                            val jsonContent = metadataFile.readText()
                            metadata.putAll(parseMetadataJSON(jsonContent, errors))
                        }
                        "txt" -> {
                            val textContent = metadataFile.readText()
                            metadata["notes"] = textContent
                        }
                    }
                }
            }
            
        } catch (e: Exception) {
            errors.add("Ошибка извлечения внешних метаданных: ${e.message}")
        }
        
        return metadata
    }
    
    /**
     * Извлекает метаданные из анализа изображений
     */
    private suspend fun extractImageMetadata(
        file: File,
        format: FormatHandler.ComicFormat?,
        context: Context,
        errors: MutableList<String>
    ): Map<String, Any> = withContext(Dispatchers.IO) {
        val metadata = mutableMapOf<String, Any>()
        
        try {
            // Извлекаем обложку для анализа
            val coverImage = extractCoverImage(file, format)
            
            coverImage?.let { cover ->
                // Анализируем изображение с помощью IntelligentCatalogizer
                val catalogResult = IntelligentCatalogizer.analyzeComic(
                    cover, emptyList(), emptyMap(), file.nameWithoutExtension
                )
                
                metadata["aiGenre"] = catalogResult.genre
                metadata["aiConfidence"] = catalogResult.confidence
                metadata["aiStyle"] = catalogResult.style.description
                metadata["aiAgeRating"] = catalogResult.ageRating.description
                metadata["aiLanguage"] = catalogResult.language
                metadata["aiTags"] = catalogResult.tags
                metadata["aiColorPalette"] = catalogResult.colorPalette.dominantColors
                metadata["aiReadingDirection"] = catalogResult.readingDirection.name
                
                cover.delete() // Удаляем временный файл
            }
            
        } catch (e: Exception) {
            errors.add("Ошибка анализа изображений: ${e.message}")
        }
        
        metadata
    }
    
    /**
     * Объединяет метаданные из разных источников с приоритетами
     */
    private fun combineMetadataSources(
        basicMetadata: Map<String, Any>,
        fileMetadata: Map<String, Any>,
        embeddedMetadata: Map<String, Any>,
        externalMetadata: Map<String, Any>,
        imageMetadata: Map<String, Any>,
        customFields: Map<String, Any>
    ): ComicMetadata {
        
        // Приоритет источников: external > embedded > basic > image > file
        val combined = mutableMapOf<String, Any>()
        combined.putAll(fileMetadata)
        combined.putAll(imageMetadata)
        combined.putAll(basicMetadata)
        combined.putAll(embeddedMetadata)
        combined.putAll(externalMetadata)
        combined.putAll(customFields)
        
        return ComicMetadata(
            title = combined["title"]?.toString() ?: "Unknown",
            originalTitle = combined["originalTitle"]?.toString(),
            subtitle = combined["subtitle"]?.toString(),
            series = combined["series"]?.toString(),
            volume = combined["volume"]?.toString()?.toIntOrNull(),
            issue = combined["issue"]?.toString()?.toIntOrNull(),
            chapter = combined["chapter"]?.toString()?.toIntOrNull(),
            
            authors = parseStringList(combined["authors"]),
            writers = parseStringList(combined["writers"]),
            artists = parseStringList(combined["artists"]),
            colorists = parseStringList(combined["colorists"]),
            letterers = parseStringList(combined["letterers"]),
            editors = parseStringList(combined["editors"]),
            translators = parseStringList(combined["translators"]),
            
            publisher = combined["publisher"]?.toString(),
            imprint = combined["imprint"]?.toString(),
            publicationDate = parseDate(combined["publicationDate"]),
            originalPublicationDate = parseDate(combined["originalPublicationDate"]),
            isbn = combined["isbn"]?.toString(),
            issn = combined["issn"]?.toString(),
            
            genres = parseStringList(combined["genres"]),
            tags = parseStringList(combined["tags"]),
            categories = parseStringList(combined["categories"]),
            ageRating = combined["ageRating"]?.toString(),
            contentWarnings = parseStringList(combined["contentWarnings"]),
            
            description = combined["description"]?.toString(),
            summary = combined["summary"]?.toString(),
            notes = combined["notes"]?.toString(),
            review = combined["review"]?.toString(),
            
            language = combined["language"]?.toString(),
            originalLanguage = combined["originalLanguage"]?.toString(),
            pageCount = combined["pageCount"]?.toString()?.toIntOrNull(),
            fileSize = combined["fileSize"]?.toString()?.toLongOrNull(),
            format = combined["format"]?.toString(),
            resolution = combined["resolution"]?.toString(),
            colorMode = combined["colorMode"]?.toString(),
            compression = combined["compression"]?.toString(),
            
            comicVineId = combined["comicVineId"]?.toString(),
            myAnimeListId = combined["myAnimeListId"]?.toString(),
            aniListId = combined["aniListId"]?.toString(),
            mangaUpdatesId = combined["mangaUpdatesId"]?.toString(),
            goodreadsId = combined["goodreadsId"]?.toString(),
            amazonId = combined["amazonId"]?.toString(),
            
            userRating = combined["userRating"]?.toString()?.toFloatOrNull(),
            communityRating = combined["communityRating"]?.toString()?.toFloatOrNull(),
            criticRating = combined["criticRating"]?.toString()?.toFloatOrNull(),
            popularity = combined["popularity"]?.toString()?.toIntOrNull(),
            
            status = combined["status"]?.toString(),
            readingStatus = combined["readingStatus"]?.toString(),
            readingProgress = combined["readingProgress"]?.toString()?.toFloatOrNull(),
            lastReadDate = parseDate(combined["lastReadDate"]),
            
            collections = parseStringList(combined["collections"]),
            favorites = combined["favorites"]?.toString()?.toBooleanStrictOrNull() ?: false,
            bookmarks = parseIntList(combined["bookmarks"]),
            
            filePath = combined["filePath"]?.toString(),
            fileName = combined["fileName"]?.toString(),
            fileHash = combined["fileHash"]?.toString(),
            creationDate = parseDate(combined["creationDate"]),
            modificationDate = parseDate(combined["modificationDate"]),
            importDate = parseDate(combined["importDate"]) ?: Date(),
            
            customFields = combined.filterKeys { key ->
                !standardFields.contains(key)
            }
        )
    }
    
    // Вспомогательные методы для парсинга различных форматов метаданных
    
    private fun parseComicInfoXML(xmlContent: String, errors: MutableList<String>): Map<String, Any> {
        val metadata = mutableMapOf<String, Any>()
        
        try {
            // Простой парсинг XML (в реальной реализации использовать XML парсер)
            val titleMatch = Regex("<Title>(.*?)</Title>").find(xmlContent)
            titleMatch?.let { metadata["title"] = it.groupValues[1] }
            
            val seriesMatch = Regex("<Series>(.*?)</Series>").find(xmlContent)
            seriesMatch?.let { metadata["series"] = it.groupValues[1] }
            
            val writerMatch = Regex("<Writer>(.*?)</Writer>").find(xmlContent)
            writerMatch?.let { metadata["writers"] = listOf(it.groupValues[1]) }
            
            val artistMatch = Regex("<Penciller>(.*?)</Penciller>").find(xmlContent)
            artistMatch?.let { metadata["artists"] = listOf(it.groupValues[1]) }
            
            val publisherMatch = Regex("<Publisher>(.*?)</Publisher>").find(xmlContent)
            publisherMatch?.let { metadata["publisher"] = it.groupValues[1] }
            
            val genreMatch = Regex("<Genre>(.*?)</Genre>").find(xmlContent)
            genreMatch?.let { metadata["genres"] = it.groupValues[1].split(",").map { it.trim() } }
            
            val summaryMatch = Regex("<Summary>(.*?)</Summary>").find(xmlContent)
            summaryMatch?.let { metadata["description"] = it.groupValues[1] }
            
            val pageCountMatch = Regex("<PageCount>(.*?)</PageCount>").find(xmlContent)
            pageCountMatch?.let { metadata["pageCount"] = it.groupValues[1].toIntOrNull() }
            
        } catch (e: Exception) {
            errors.add("Ошибка парсинга ComicInfo XML: ${e.message}")
        }
        
        return metadata
    }
    
    private fun parseMetadataJSON(jsonContent: String, errors: MutableList<String>): Map<String, Any> {
        val metadata = mutableMapOf<String, Any>()
        
        try {
            val gson = Gson()
            val jsonObject = JsonParser.parseString(jsonContent).asJsonObject
            
            jsonObject.entrySet().forEach { (key, value) ->
                when {
                    value.isJsonPrimitive -> {
                        val primitive = value.asJsonPrimitive
                        metadata[key] = when {
                            primitive.isString -> primitive.asString
                            primitive.isNumber -> primitive.asNumber
                            primitive.isBoolean -> primitive.asBoolean
                            else -> primitive.asString
                        }
                    }
                    value.isJsonArray -> {
                        val array = value.asJsonArray
                        metadata[key] = array.map { it.asString }
                    }
                    value.isJsonObject -> {
                        metadata[key] = gson.fromJson(value, Map::class.java)
                    }
                }
            }
            
        } catch (e: Exception) {
            errors.add("Ошибка парсинга JSON метаданных: ${e.message}")
        }
        
        return metadata
    }
    
    private fun parseSeriesJSON(seriesContent: String, errors: MutableList<String>): Map<String, Any> {
        // Аналогично parseMetadataJSON, но с фокусом на серийные данные
        return parseMetadataJSON(seriesContent, errors)
    }
    
    private fun parseXMPMetadata(xmpContent: String, errors: MutableList<String>): Map<String, Any> {
        val metadata = mutableMapOf<String, Any>()
        
        try {
            // Простой парсинг XMP (в реальной реализации использовать XMP библиотеку)
            val titleMatch = Regex("<dc:title>(.*?)</dc:title>").find(xmpContent)
            titleMatch?.let { metadata["title"] = it.groupValues[1] }
            
            val creatorMatch = Regex("<dc:creator>(.*?)</dc:creator>").find(xmpContent)
            creatorMatch?.let { metadata["authors"] = listOf(it.groupValues[1]) }
            
            val descriptionMatch = Regex("<dc:description>(.*?)</dc:description>").find(xmpContent)
            descriptionMatch?.let { metadata["description"] = it.groupValues[1] }
            
        } catch (e: Exception) {
            errors.add("Ошибка парсинга XMP метаданных: ${e.message}")
        }
        
        return metadata
    }
    
    private fun parseFileNameMetadata(fileName: String): Map<String, Any> {
        val metadata = mutableMapOf<String, Any>()
        
        // Пытаемся извлечь информацию из имени файла
        // Паттерны: "Series Name v01 c001-010 (2023) [Publisher]"
        val patterns = listOf(
            Regex("^(.+?)\\s+v(\\d+)\\s+c(\\d+)(?:-(\\d+))?\\s*\\((\\d{4})\\)\\s*\\[(.+?)\\]"),
            Regex("^(.+?)\\s+#(\\d+)\\s*\\((\\d{4})\\)"),
            Regex("^(.+?)\\s+Vol\\.(\\d+)\\s+Ch\\.(\\d+)"),
            Regex("^(.+?)\\s+Chapter\\s+(\\d+)")
        )
        
        patterns.forEach { pattern ->
            val match = pattern.find(fileName)
            match?.let { matchResult ->
                when (pattern) {
                    patterns[0] -> {
                        metadata["series"] = matchResult.groupValues[1].trim()
                        metadata["volume"] = matchResult.groupValues[2].toIntOrNull()
                        metadata["chapter"] = matchResult.groupValues[3].toIntOrNull()
                        metadata["publicationDate"] = parseYear(matchResult.groupValues[5])
                        metadata["publisher"] = matchResult.groupValues[6].trim()
                    }
                    patterns[1] -> {
                        metadata["series"] = matchResult.groupValues[1].trim()
                        metadata["issue"] = matchResult.groupValues[2].toIntOrNull()
                        metadata["publicationDate"] = parseYear(matchResult.groupValues[3])
                    }
                    patterns[2] -> {
                        metadata["series"] = matchResult.groupValues[1].trim()
                        metadata["volume"] = matchResult.groupValues[2].toIntOrNull()
                        metadata["chapter"] = matchResult.groupValues[3].toIntOrNull()
                    }
                    patterns[3] -> {
                        metadata["series"] = matchResult.groupValues[1].trim()
                        metadata["chapter"] = matchResult.groupValues[2].toIntOrNull()
                    }
                }
                return@forEach
            }
        }
        
        // Если паттерны не сработали, используем имя файла как заголовок
        if (metadata.isEmpty()) {
            metadata["title"] = fileName
        }
        
        return metadata
    }
    
    private fun extractImageEXIF(imageFile: File, errors: MutableList<String>): Map<String, Any> {
        val metadata = mutableMapOf<String, Any>()
        
        try {
            val exif = ExifInterface(imageFile.absolutePath)
            
            // Извлекаем основные EXIF данные
            exif.getAttribute(ExifInterface.TAG_DATETIME)?.let { 
                metadata["exifDateTime"] = it 
            }
            exif.getAttribute(ExifInterface.TAG_MAKE)?.let { 
                metadata["cameraMake"] = it 
            }
            exif.getAttribute(ExifInterface.TAG_MODEL)?.let { 
                metadata["cameraModel"] = it 
            }
            exif.getAttribute(ExifInterface.TAG_SOFTWARE)?.let { 
                metadata["software"] = it 
            }
            exif.getAttribute(ExifInterface.TAG_ARTIST)?.let { 
                metadata["artist"] = it 
            }
            exif.getAttribute(ExifInterface.TAG_COPYRIGHT)?.let { 
                metadata["copyright"] = it 
            }
            
            // Технические параметры
            val width = exif.getAttributeInt(ExifInterface.TAG_IMAGE_WIDTH, 0)
            val height = exif.getAttributeInt(ExifInterface.TAG_IMAGE_LENGTH, 0)
            if (width > 0 && height > 0) {
                metadata["resolution"] = "${width}x${height}"
            }
            
            // Используем metadata-extractor для более детального анализа
            try {
                val imageMetadata = ImageMetadataReader.readMetadata(imageFile)
                imageMetadata.directories.forEach { directory ->
                    directory.tags.forEach { tag ->
                        metadata["exif_${tag.tagName.replace(" ", "_")}"] = tag.description
                    }
                }
            } catch (e: Exception) {
                errors.add("Ошибка извлечения расширенных EXIF данных: ${e.message}")
            }
            
        } catch (e: Exception) {
            errors.add("Ошибка извлечения EXIF данных: ${e.message}")
        }
        
        return metadata
    }
    
    // Вспомогательные методы
    
    private fun calculateFileHash(file: File): String {
        return try {
            val md = MessageDigest.getInstance("SHA-256")
            val buffer = ByteArray(8192)
            
            FileInputStream(file).use { fis ->
                var bytesRead: Int
                while (fis.read(buffer).also { bytesRead = it } != -1) {
                    md.update(buffer, 0, bytesRead)
                }
            }
            
            md.digest().joinToString("") { "%02x".format(it) }
        } catch (e: Exception) {
            "unknown"
        }
    }
    
    private fun determineMimeType(file: File): String {
        return when (file.extension.lowercase()) {
            "cbz", "zip" -> "application/zip"
            "cbr", "rar" -> "application/x-rar-compressed"
            "cb7", "7z" -> "application/x-7z-compressed"
            "pdf" -> "application/pdf"
            "epub" -> "application/epub+zip"
            "mobi" -> "application/x-mobipocket-ebook"
            "djvu", "djv" -> "image/vnd.djvu"
            "jpg", "jpeg" -> "image/jpeg"
            "png" -> "image/png"
            "gif" -> "image/gif"
            "webp" -> "image/webp"
            "avif" -> "image/avif"
            "heif", "heic" -> "image/heif"
            else -> "application/octet-stream"
        }
    }
    
    private fun extractFirstImageFromArchive(
        file: File, 
        format: FormatHandler.ComicFormat?
    ): File? {
        // Извлекаем первое изображение из архива для анализа
        // Реализация зависит от типа архива
        return null // Заглушка
    }
    
    private fun extractCoverImage(
        file: File, 
        format: FormatHandler.ComicFormat?
    ): File? {
        // Извлекаем обложку для анализа
        return extractFirstImageFromArchive(file, format)
    }
    
    private fun isImageFile(file: File): Boolean {
        val imageExtensions = setOf("jpg", "jpeg", "png", "gif", "bmp", "webp", "avif", "heif", "heic")
        return imageExtensions.contains(file.extension.lowercase())
    }
    
    private fun parseStringList(value: Any?): List<String> {
        return when (value) {
            is List<*> -> value.mapNotNull { it?.toString() }
            is String -> if (value.contains(",")) {
                value.split(",").map { it.trim() }
            } else {
                listOf(value)
            }
            else -> emptyList()
        }
    }
    
    private fun parseIntList(value: Any?): List<Int> {
        return when (value) {
            is List<*> -> value.mapNotNull { it?.toString()?.toIntOrNull() }
            is String -> value.split(",").mapNotNull { it.trim().toIntOrNull() }
            else -> emptyList()
        }
    }
    
    private fun parseDate(value: Any?): Date? {
        return when (value) {
            is Date -> value
            is Long -> Date(value)
            is String -> {
                val formats = listOf(
                    SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()),
                    SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()),
                    SimpleDateFormat("yyyy/MM/dd", Locale.getDefault()),
                    SimpleDateFormat("dd.MM.yyyy", Locale.getDefault())
                )
                
                formats.forEach { format ->
                    try {
                        return format.parse(value)
                    } catch (e: Exception) {
                        // Пробуем следующий формат
                    }
                }
                null
            }
            else -> null
        }
    }
    
    private fun parseYear(yearString: String): Date? {
        return try {
            val year = yearString.toInt()
            val calendar = Calendar.getInstance()
            calendar.set(year, 0, 1)
            calendar.time
        } catch (e: Exception) {
            null
        }
    }
    
    private val standardFields = setOf(
        "title", "originalTitle", "subtitle", "series", "volume", "issue", "chapter",
        "authors", "writers", "artists", "colorists", "letterers", "editors", "translators",
        "publisher", "imprint", "publicationDate", "originalPublicationDate", "isbn", "issn",
        "genres", "tags", "categories", "ageRating", "contentWarnings",
        "description", "summary", "notes", "review",
        "language", "originalLanguage", "pageCount", "fileSize", "format", "resolution",
        "colorMode", "compression", "comicVineId", "myAnimeListId", "aniListId",
        "mangaUpdatesId", "goodreadsId", "amazonId", "userRating", "communityRating",
        "criticRating", "popularity", "status", "readingStatus", "readingProgress",
        "lastReadDate", "collections", "favorites", "bookmarks", "filePath", "fileName",
        "fileHash", "creationDate", "modificationDate", "importDate"
    )
} 
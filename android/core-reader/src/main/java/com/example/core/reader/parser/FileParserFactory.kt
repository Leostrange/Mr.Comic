package com.example.core.reader.parser

import com.example.core.model.ComicFormat
import java.io.File
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Фабрика для создания парсеров файлов
 * Выбирает подходящий парсер на основе формата файла
 */
@Singleton
class FileParserFactory @Inject constructor(
    private val cbzParser: CbzParser,
    private val cbrParser: CbrParser,
    private val pdfParser: PdfParser,
    private val folderParser: FolderParser,
    private val formatDetector: FormatDetector
) {
    
    /**
     * Получить парсер для файла
     * @param file файл для парсинга
     * @return подходящий парсер или null, если формат не поддерживается
     */
    suspend fun getParser(file: File): FileParser? {
        // Для папок используем FolderParser
        if (file.isDirectory) {
            return if (folderParser.isSupported(file)) folderParser else null
        }
        
        // Определяем формат файла
        val format = formatDetector.detectFormat(file)
        
        return getParserForFormat(format)
    }
    
    /**
     * Получить парсер для формата
     * @param format формат файла
     * @return подходящий парсер или null, если формат не поддерживается
     */
    fun getParserForFormat(format: ComicFormat): FileParser? {
        return when (format) {
            ComicFormat.CBZ, ComicFormat.ZIP -> cbzParser
            ComicFormat.CBR, ComicFormat.RAR -> cbrParser
            ComicFormat.PDF -> pdfParser
            ComicFormat.FOLDER -> folderParser
            else -> null
        }
    }
    
    /**
     * Получить список всех доступных парсеров
     */
    fun getAllParsers(): List<FileParser> {
        return listOf(cbzParser, cbrParser, pdfParser, folderParser)
    }
    
    /**
     * Получить список всех поддерживаемых форматов
     */
    fun getSupportedFormats(): List<String> {
        return getAllParsers().flatMap { it.getSupportedFormats() }.distinct()
    }
    
    /**
     * Проверить, поддерживается ли файл
     */
    suspend fun isSupported(file: File): Boolean {
        return getParser(file) != null
    }
    
    /**
     * Парсинг файла с автоматическим выбором парсера
     */
    suspend fun parse(file: File): ComicFile {
        val parser = getParser(file)
            ?: throw ParsingException("Unsupported file format: ${file.name}")
        
        return parser.parse(file)
    }
}

package com.mrcomic.plugins.types;

import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import com.mrcomic.plugins.PluginInput;
import com.mrcomic.plugins.PluginResult;

/**
 * Интерфейс для плагинов поддержки форматов файлов
 * Определяет методы для работы с различными форматами комиксов
 */
public interface FileFormatPlugin {
    
    /**
     * Проверить, поддерживается ли указанный формат файла
     * 
     * @param file Файл для проверки
     * @return true, если формат поддерживается, иначе false
     */
    boolean isFormatSupported(File file);
    
    /**
     * Получить список поддерживаемых расширений файлов
     * 
     * @return Массив поддерживаемых расширений файлов (без точки)
     */
    String[] getSupportedExtensions();
    
    /**
     * Получить MIME-типы поддерживаемых форматов
     * 
     * @return Массив MIME-типов поддерживаемых форматов
     */
    String[] getSupportedMimeTypes();
    
    /**
     * Открыть файл комикса
     * 
     * @param file Файл комикса
     * @return Результат открытия файла с метаданными
     */
    PluginResult openComicFile(File file);
    
    /**
     * Извлечь страницу из файла комикса
     * 
     * @param file Файл комикса
     * @param pageIndex Индекс страницы (начиная с 0)
     * @return Результат с данными страницы
     */
    PluginResult extractPage(File file, int pageIndex);
    
    /**
     * Получить количество страниц в файле комикса
     * 
     * @param file Файл комикса
     * @return Количество страниц
     */
    int getPageCount(File file);
    
    /**
     * Получить метаданные файла комикса
     * 
     * @param file Файл комикса
     * @return Результат с метаданными в формате JSON
     */
    PluginResult getMetadata(File file);
    
    /**
     * Сохранить файл комикса в указанном формате
     * 
     * @param sourceFile Исходный файл
     * @param targetFile Целевой файл
     * @param options Опции сохранения в формате JSON
     * @return Результат сохранения
     */
    PluginResult saveComicFile(File sourceFile, File targetFile, String options);
}

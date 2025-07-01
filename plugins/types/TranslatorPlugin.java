package com.mrcomic.plugins.types;

import com.mrcomic.plugins.PluginInput;
import com.mrcomic.plugins.PluginResult;

/**
 * Интерфейс для плагинов перевода текста
 * Определяет методы для перевода текста между различными языками
 */
public interface TranslatorPlugin {
    
    /**
     * Перевести текст с одного языка на другой
     * 
     * @param text Исходный текст для перевода
     * @param sourceLanguage Код исходного языка (ISO 639-1)
     * @param targetLanguage Код целевого языка (ISO 639-1)
     * @return Результат перевода текста
     */
    PluginResult translateText(String text, String sourceLanguage, String targetLanguage);
    
    /**
     * Получить список поддерживаемых исходных языков
     * 
     * @return Массив кодов поддерживаемых исходных языков (ISO 639-1)
     */
    String[] getSupportedSourceLanguages();
    
    /**
     * Получить список поддерживаемых целевых языков
     * 
     * @return Массив кодов поддерживаемых целевых языков (ISO 639-1)
     */
    String[] getSupportedTargetLanguages();
    
    /**
     * Проверить, поддерживается ли указанная языковая пара
     * 
     * @param sourceLanguage Код исходного языка (ISO 639-1)
     * @param targetLanguage Код целевого языка (ISO 639-1)
     * @return true, если языковая пара поддерживается, иначе false
     */
    boolean isLanguagePairSupported(String sourceLanguage, String targetLanguage);
    
    /**
     * Определить язык текста
     * 
     * @param text Текст для определения языка
     * @return Код определенного языка (ISO 639-1) или null, если язык не определен
     */
    String detectLanguage(String text);
    
    /**
     * Проверить, поддерживает ли плагин автоматическое определение языка
     * 
     * @return true, если плагин поддерживает автоматическое определение языка, иначе false
     */
    boolean supportsLanguageDetection();
    
    /**
     * Получить качество перевода
     * 
     * @return Качество перевода в процентах (0-100)
     */
    int getTranslationQuality();
    
    /**
     * Установить качество перевода
     * Более высокое качество может требовать больше ресурсов
     * 
     * @param quality Качество перевода в процентах (0-100)
     */
    void setTranslationQuality(int quality);
}

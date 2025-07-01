package com.mrcomic.plugins.types;

import android.graphics.Bitmap;
import com.mrcomic.plugins.PluginInput;
import com.mrcomic.plugins.PluginResult;

/**
 * Интерфейс для OCR плагинов
 * Определяет методы для оптического распознавания текста на изображениях
 */
public interface OcrPlugin {
    
    /**
     * Распознать текст на изображении
     * 
     * @param image Изображение для распознавания
     * @param language Код языка для распознавания (ISO 639-1)
     * @return Результат распознавания текста
     */
    PluginResult recognizeText(Bitmap image, String language);
    
    /**
     * Получить список поддерживаемых языков
     * 
     * @return Массив кодов поддерживаемых языков (ISO 639-1)
     */
    String[] getSupportedLanguages();
    
    /**
     * Проверить, поддерживается ли указанный язык
     * 
     * @param language Код языка (ISO 639-1)
     * @return true, если язык поддерживается, иначе false
     */
    boolean isLanguageSupported(String language);
    
    /**
     * Получить точность распознавания
     * 
     * @return Точность распознавания в процентах (0-100)
     */
    int getAccuracy();
    
    /**
     * Установить точность распознавания
     * Более высокая точность может требовать больше ресурсов
     * 
     * @param accuracy Точность распознавания в процентах (0-100)
     */
    void setAccuracy(int accuracy);
}

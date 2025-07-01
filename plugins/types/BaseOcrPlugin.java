package com.mrcomic.plugins.types;

import android.content.Context;
import com.mrcomic.plugins.PluginInput;
import com.mrcomic.plugins.PluginResult;

/**
 * Базовый абстрактный класс для OCR плагинов
 * Реализует общую функциональность OCR плагинов
 */
public abstract class BaseOcrPlugin extends BasePlugin implements OcrPlugin {
    
    protected int accuracy = 80; // Значение по умолчанию
    
    @Override
    public PluginType getPluginType() {
        return PluginType.OCR;
    }
    
    @Override
    public PluginResult execute(PluginInput input) {
        try {
            // Проверяем, что входные данные содержат изображение
            if (input.getBitmap("image") == null) {
                return PluginResult.error("Входные данные не содержат изображение");
            }
            
            // Получаем язык из входных данных или используем значение по умолчанию
            String language = input.getString("language", "en");
            
            // Проверяем поддержку языка
            if (!isLanguageSupported(language)) {
                return PluginResult.error("Язык не поддерживается: " + language);
            }
            
            // Выполняем распознавание текста
            return recognizeText(input.getBitmap("image"), language);
        } catch (Exception e) {
            return PluginResult.error("Ошибка выполнения OCR плагина: " + e.getMessage());
        }
    }
    
    @Override
    public int getAccuracy() {
        return accuracy;
    }
    
    @Override
    public void setAccuracy(int accuracy) {
        if (accuracy < 0) {
            this.accuracy = 0;
        } else if (accuracy > 100) {
            this.accuracy = 100;
        } else {
            this.accuracy = accuracy;
        }
    }
    
    @Override
    public boolean isLanguageSupported(String language) {
        String[] supportedLanguages = getSupportedLanguages();
        for (String supported : supportedLanguages) {
            if (supported.equalsIgnoreCase(language)) {
                return true;
            }
        }
        return false;
    }
}

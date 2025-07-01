package com.mrcomic.plugins.types;

import android.content.Context;
import com.mrcomic.plugins.PluginInput;
import com.mrcomic.plugins.PluginResult;

/**
 * Базовый абстрактный класс для плагинов перевода
 * Реализует общую функциональность переводчиков
 */
public abstract class BaseTranslatorPlugin extends BasePlugin implements TranslatorPlugin {
    
    protected int translationQuality = 80; // Значение по умолчанию
    
    @Override
    public PluginType getPluginType() {
        return PluginType.TRANSLATOR;
    }
    
    @Override
    public PluginResult execute(PluginInput input) {
        try {
            // Проверяем, что входные данные содержат текст
            if (input.getString("text") == null) {
                return PluginResult.error("Входные данные не содержат текст для перевода");
            }
            
            String text = input.getString("text");
            
            // Получаем исходный язык из входных данных или определяем автоматически
            String sourceLanguage = input.getString("sourceLanguage");
            if (sourceLanguage == null && supportsLanguageDetection()) {
                sourceLanguage = detectLanguage(text);
                if (sourceLanguage == null) {
                    return PluginResult.error("Не удалось определить исходный язык");
                }
            } else if (sourceLanguage == null) {
                return PluginResult.error("Не указан исходный язык");
            }
            
            // Получаем целевой язык из входных данных
            String targetLanguage = input.getString("targetLanguage");
            if (targetLanguage == null) {
                return PluginResult.error("Не указан целевой язык");
            }
            
            // Проверяем поддержку языковой пары
            if (!isLanguagePairSupported(sourceLanguage, targetLanguage)) {
                return PluginResult.error("Языковая пара не поддерживается: " + sourceLanguage + " -> " + targetLanguage);
            }
            
            // Выполняем перевод текста
            return translateText(text, sourceLanguage, targetLanguage);
        } catch (Exception e) {
            return PluginResult.error("Ошибка выполнения плагина перевода: " + e.getMessage());
        }
    }
    
    @Override
    public int getTranslationQuality() {
        return translationQuality;
    }
    
    @Override
    public void setTranslationQuality(int quality) {
        if (quality < 0) {
            this.translationQuality = 0;
        } else if (quality > 100) {
            this.translationQuality = 100;
        } else {
            this.translationQuality = quality;
        }
    }
    
    @Override
    public boolean isLanguagePairSupported(String sourceLanguage, String targetLanguage) {
        String[] supportedSourceLanguages = getSupportedSourceLanguages();
        String[] supportedTargetLanguages = getSupportedTargetLanguages();
        
        boolean sourceSupported = false;
        boolean targetSupported = false;
        
        for (String supported : supportedSourceLanguages) {
            if (supported.equalsIgnoreCase(sourceLanguage)) {
                sourceSupported = true;
                break;
            }
        }
        
        for (String supported : supportedTargetLanguages) {
            if (supported.equalsIgnoreCase(targetLanguage)) {
                targetSupported = true;
                break;
            }
        }
        
        return sourceSupported && targetSupported;
    }
}

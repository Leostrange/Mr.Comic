package com.mrcomic.plugins.types;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.mrcomic.plugins.PluginInput;
import com.mrcomic.plugins.PluginResult;

/**
 * Интерфейс для плагинов тем и визуальных эффектов
 * Определяет методы для настройки внешнего вида приложения
 */
public interface ThemePlugin {
    
    /**
     * Применить тему к контексту
     * 
     * @param context Контекст приложения
     * @return Результат применения темы
     */
    PluginResult applyTheme(Context context);
    
    /**
     * Получить название темы
     * 
     * @return Название темы
     */
    String getThemeName();
    
    /**
     * Получить описание темы
     * 
     * @return Описание темы
     */
    String getThemeDescription();
    
    /**
     * Получить превью темы
     * 
     * @param context Контекст приложения
     * @return Drawable с превью темы
     */
    Drawable getThemePreview(Context context);
    
    /**
     * Получить цветовую схему темы
     * 
     * @return Массив цветов в формате ARGB
     */
    int[] getThemeColors();
    
    /**
     * Применить визуальный эффект к View
     * 
     * @param view View для применения эффекта
     * @param effectName Название эффекта
     * @param parameters Параметры эффекта в формате JSON
     * @return Результат применения эффекта
     */
    PluginResult applyVisualEffect(View view, String effectName, String parameters);
    
    /**
     * Получить список поддерживаемых визуальных эффектов
     * 
     * @return Массив названий поддерживаемых эффектов
     */
    String[] getSupportedVisualEffects();
    
    /**
     * Проверить, поддерживается ли указанный визуальный эффект
     * 
     * @param effectName Название эффекта
     * @return true, если эффект поддерживается, иначе false
     */
    boolean isVisualEffectSupported(String effectName);
    
    /**
     * Получить тип темы (светлая, темная, системная)
     * 
     * @return Тип темы
     */
    ThemeType getThemeType();
    
    /**
     * Перечисление типов тем
     */
    enum ThemeType {
        LIGHT,
        DARK,
        SYSTEM,
        CUSTOM
    }
}

package com.mrcomic.plugins;

import android.content.Context;

/**
 * Базовый интерфейс для всех плагинов Mr.Comic
 * Все плагины должны реализовывать этот интерфейс
 */
public interface MrComicPlugin {
    
    /**
     * Инициализация плагина
     * Вызывается при загрузке плагина
     * 
     * @param context Контекст приложения
     */
    void initialize(Context context);
    
    /**
     * Получить название плагина
     * 
     * @return Название плагина
     */
    String getName();
    
    /**
     * Получить версию плагина
     * 
     * @return Версия плагина
     */
    String getVersion();
    
    /**
     * Получить автора плагина
     * 
     * @return Автор плагина
     */
    String getAuthor();
    
    /**
     * Получить описание плагина
     * 
     * @return Описание плагина
     */
    String getDescription();
    
    /**
     * Проверить, поддерживает ли плагин настройку
     * 
     * @return true, если плагин поддерживает настройку, иначе false
     */
    boolean isConfigurable();
    
    /**
     * Получить минимальную версию приложения, необходимую для работы плагина
     * 
     * @return Минимальная версия приложения
     */
    int getMinAppVersion();
    
    /**
     * Получить целевую версию приложения для плагина
     * 
     * @return Целевая версия приложения
     */
    int getTargetAppVersion();
    
    /**
     * Выполнить основную функцию плагина
     * 
     * @param input Входные данные для плагина
     * @return Результат выполнения плагина
     */
    PluginResult execute(PluginInput input);
    
    /**
     * Получить настройки плагина
     * 
     * @return Настройки плагина в формате JSON
     */
    String getSettings();
    
    /**
     * Установить настройки плагина
     * 
     * @param settings Настройки плагина в формате JSON
     */
    void setSettings(String settings);
    
    /**
     * Завершение работы плагина
     * Вызывается при выгрузке плагина
     */
    void shutdown();
}

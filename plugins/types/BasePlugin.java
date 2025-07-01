package com.mrcomic.plugins.types;

import android.content.Context;
import com.mrcomic.plugins.MrComicPlugin;
import com.mrcomic.plugins.PluginInput;
import com.mrcomic.plugins.PluginResult;

/**
 * Базовый абстрактный класс для всех плагинов Mr.Comic
 * Реализует общую функциональность для всех типов плагинов
 */
public abstract class BasePlugin implements MrComicPlugin {
    
    protected Context context;
    protected String name;
    protected String version;
    protected String author;
    protected String description;
    protected boolean configurable;
    protected int minAppVersion;
    protected int targetAppVersion;
    protected String settings;
    
    /**
     * Получить тип плагина
     * 
     * @return Тип плагина
     */
    public abstract PluginType getPluginType();
    
    @Override
    public void initialize(Context context) {
        this.context = context;
    }
    
    @Override
    public String getName() {
        return name;
    }
    
    /**
     * Установить название плагина
     * 
     * @param name Название плагина
     */
    public void setName(String name) {
        this.name = name;
    }
    
    @Override
    public String getVersion() {
        return version;
    }
    
    /**
     * Установить версию плагина
     * 
     * @param version Версия плагина
     */
    public void setVersion(String version) {
        this.version = version;
    }
    
    @Override
    public String getAuthor() {
        return author;
    }
    
    /**
     * Установить автора плагина
     * 
     * @param author Автор плагина
     */
    public void setAuthor(String author) {
        this.author = author;
    }
    
    @Override
    public String getDescription() {
        return description;
    }
    
    /**
     * Установить описание плагина
     * 
     * @param description Описание плагина
     */
    public void setDescription(String description) {
        this.description = description;
    }
    
    @Override
    public boolean isConfigurable() {
        return configurable;
    }
    
    /**
     * Установить флаг настраиваемости плагина
     * 
     * @param configurable Флаг настраиваемости плагина
     */
    public void setConfigurable(boolean configurable) {
        this.configurable = configurable;
    }
    
    @Override
    public int getMinAppVersion() {
        return minAppVersion;
    }
    
    /**
     * Установить минимальную версию приложения
     * 
     * @param minAppVersion Минимальная версия приложения
     */
    public void setMinAppVersion(int minAppVersion) {
        this.minAppVersion = minAppVersion;
    }
    
    @Override
    public int getTargetAppVersion() {
        return targetAppVersion;
    }
    
    /**
     * Установить целевую версию приложения
     * 
     * @param targetAppVersion Целевая версия приложения
     */
    public void setTargetAppVersion(int targetAppVersion) {
        this.targetAppVersion = targetAppVersion;
    }
    
    @Override
    public String getSettings() {
        return settings;
    }
    
    @Override
    public void setSettings(String settings) {
        this.settings = settings;
    }
    
    @Override
    public void shutdown() {
        // Базовая реализация не делает ничего
    }
    
    @Override
    public PluginResult execute(PluginInput input) {
        // Базовая реализация должна быть переопределена в подклассах
        return PluginResult.error("Метод execute не реализован в " + getClass().getSimpleName());
    }
}

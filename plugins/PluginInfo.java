package com.mrcomic.plugins;

/**
 * Класс, содержащий информацию о плагине
 */
public class PluginInfo {
    
    private String name;
    private String version;
    private String author;
    private String description;
    private String mainClass;
    private boolean configurable;
    private int minAppVersion;
    private int targetAppVersion;
    private MrComicPlugin instance;
    
    /**
     * Конструктор по умолчанию
     */
    public PluginInfo() {
    }
    
    /**
     * Получить название плагина
     * 
     * @return Название плагина
     */
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
    
    /**
     * Получить версию плагина
     * 
     * @return Версия плагина
     */
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
    
    /**
     * Получить автора плагина
     * 
     * @return Автор плагина
     */
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
    
    /**
     * Получить описание плагина
     * 
     * @return Описание плагина
     */
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
    
    /**
     * Получить имя основного класса плагина
     * 
     * @return Имя основного класса плагина
     */
    public String getMainClass() {
        return mainClass;
    }
    
    /**
     * Установить имя основного класса плагина
     * 
     * @param mainClass Имя основного класса плагина
     */
    public void setMainClass(String mainClass) {
        this.mainClass = mainClass;
    }
    
    /**
     * Проверить, поддерживает ли плагин настройку
     * 
     * @return true, если плагин поддерживает настройку, иначе false
     */
    public boolean isConfigurable() {
        return configurable;
    }
    
    /**
     * Установить поддержку настройки
     * 
     * @param configurable true, если плагин поддерживает настройку, иначе false
     */
    public void setConfigurable(boolean configurable) {
        this.configurable = configurable;
    }
    
    /**
     * Получить минимальную версию приложения, необходимую для работы плагина
     * 
     * @return Минимальная версия приложения
     */
    public int getMinAppVersion() {
        return minAppVersion;
    }
    
    /**
     * Установить минимальную версию приложения, необходимую для работы плагина
     * 
     * @param minAppVersion Минимальная версия приложения
     */
    public void setMinAppVersion(int minAppVersion) {
        this.minAppVersion = minAppVersion;
    }
    
    /**
     * Получить целевую версию приложения для плагина
     * 
     * @return Целевая версия приложения
     */
    public int getTargetAppVersion() {
        return targetAppVersion;
    }
    
    /**
     * Установить целевую версию приложения для плагина
     * 
     * @param targetAppVersion Целевая версия приложения
     */
    public void setTargetAppVersion(int targetAppVersion) {
        this.targetAppVersion = targetAppVersion;
    }
    
    /**
     * Получить экземпляр плагина
     * 
     * @return Экземпляр плагина
     */
    public MrComicPlugin getInstance() {
        return instance;
    }
    
    /**
     * Установить экземпляр плагина
     * 
     * @param instance Экземпляр плагина
     */
    public void setInstance(MrComicPlugin instance) {
        this.instance = instance;
    }
}

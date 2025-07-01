package com.mrcomic.plugins.gui;

/**
 * Класс, представляющий плагин в системе Mr.Comic
 */
public class Plugin {
    
    private String id;
    private String name;
    private String version;
    private String author;
    private String description;
    private boolean enabled;
    private boolean configurable;
    private String iconPath;
    private String packageName;
    private int minAppVersion;
    private int targetAppVersion;
    
    /**
     * Конструктор класса Plugin
     * 
     * @param id Уникальный идентификатор плагина
     * @param name Название плагина
     * @param version Версия плагина
     * @param author Автор плагина
     * @param description Описание плагина
     */
    public Plugin(String id, String name, String version, String author, String description) {
        this.id = id;
        this.name = name;
        this.version = version;
        this.author = author;
        this.description = description;
        this.enabled = false;
        this.configurable = false;
    }
    
    /**
     * Получить идентификатор плагина
     * 
     * @return Идентификатор плагина
     */
    public String getId() {
        return id;
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
     * Получить версию плагина
     * 
     * @return Версия плагина
     */
    public String getVersion() {
        return version;
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
     * Получить описание плагина
     * 
     * @return Описание плагина
     */
    public String getDescription() {
        return description;
    }
    
    /**
     * Проверить, включен ли плагин
     * 
     * @return true, если плагин включен, иначе false
     */
    public boolean isEnabled() {
        return enabled;
    }
    
    /**
     * Установить состояние плагина
     * 
     * @param enabled true для включения плагина, false для отключения
     */
    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
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
     * Получить путь к иконке плагина
     * 
     * @return Путь к иконке плагина
     */
    public String getIconPath() {
        return iconPath;
    }
    
    /**
     * Установить путь к иконке плагина
     * 
     * @param iconPath Путь к иконке плагина
     */
    public void setIconPath(String iconPath) {
        this.iconPath = iconPath;
    }
    
    /**
     * Получить имя пакета плагина
     * 
     * @return Имя пакета плагина
     */
    public String getPackageName() {
        return packageName;
    }
    
    /**
     * Установить имя пакета плагина
     * 
     * @param packageName Имя пакета плагина
     */
    public void setPackageName(String packageName) {
        this.packageName = packageName;
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
}

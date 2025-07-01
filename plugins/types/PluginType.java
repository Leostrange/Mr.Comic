package com.mrcomic.plugins.types;

/**
 * Перечисление типов плагинов для Mr.Comic
 * Определяет все поддерживаемые типы плагинов в системе
 */
public enum PluginType {
    /**
     * Базовый тип плагина без специализации
     */
    GENERIC("generic", "Базовый плагин"),
    
    /**
     * Плагин для оптического распознавания текста (OCR)
     */
    OCR("ocr", "OCR плагин"),
    
    /**
     * Плагин для перевода текста
     */
    TRANSLATOR("translator", "Переводчик"),
    
    /**
     * Плагин для расширения пользовательского интерфейса
     */
    UI_EXTENSION("ui_extension", "UI расширение"),
    
    /**
     * Плагин для поддержки новых форматов файлов
     */
    FILE_FORMAT("file_format", "Формат файлов"),
    
    /**
     * Плагин для тем и визуальных эффектов
     */
    THEME("theme", "Тема и визуальные эффекты");
    
    private final String code;
    private final String displayName;
    
    /**
     * Конструктор перечисления PluginType
     * 
     * @param code Код типа плагина
     * @param displayName Отображаемое название типа плагина
     */
    PluginType(String code, String displayName) {
        this.code = code;
        this.displayName = displayName;
    }
    
    /**
     * Получить код типа плагина
     * 
     * @return Код типа плагина
     */
    public String getCode() {
        return code;
    }
    
    /**
     * Получить отображаемое название типа плагина
     * 
     * @return Отображаемое название типа плагина
     */
    public String getDisplayName() {
        return displayName;
    }
    
    /**
     * Получить тип плагина по коду
     * 
     * @param code Код типа плагина
     * @return Тип плагина или GENERIC, если тип не найден
     */
    public static PluginType fromCode(String code) {
        for (PluginType type : values()) {
            if (type.getCode().equals(code)) {
                return type;
            }
        }
        return GENERIC;
    }
}

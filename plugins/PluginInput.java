package com.mrcomic.plugins;

import java.util.HashMap;
import java.util.Map;

/**
 * Класс, представляющий входные данные для плагина
 */
public class PluginInput {
    
    private String action;
    private Map<String, Object> parameters;
    
    /**
     * Конструктор класса PluginInput
     * 
     * @param action Действие, которое должен выполнить плагин
     */
    public PluginInput(String action) {
        this.action = action;
        this.parameters = new HashMap<>();
    }
    
    /**
     * Получить действие
     * 
     * @return Действие
     */
    public String getAction() {
        return action;
    }
    
    /**
     * Установить действие
     * 
     * @param action Действие
     */
    public void setAction(String action) {
        this.action = action;
    }
    
    /**
     * Добавить параметр
     * 
     * @param key Ключ параметра
     * @param value Значение параметра
     */
    public void addParameter(String key, Object value) {
        parameters.put(key, value);
    }
    
    /**
     * Получить параметр
     * 
     * @param key Ключ параметра
     * @return Значение параметра или null, если параметр не найден
     */
    public Object getParameter(String key) {
        return parameters.get(key);
    }
    
    /**
     * Получить строковый параметр
     * 
     * @param key Ключ параметра
     * @return Строковое значение параметра или null, если параметр не найден или не является строкой
     */
    public String getStringParameter(String key) {
        Object value = parameters.get(key);
        return value instanceof String ? (String) value : null;
    }
    
    /**
     * Получить целочисленный параметр
     * 
     * @param key Ключ параметра
     * @return Целочисленное значение параметра или null, если параметр не найден или не является числом
     */
    public Integer getIntParameter(String key) {
        Object value = parameters.get(key);
        if (value instanceof Integer) {
            return (Integer) value;
        } else if (value instanceof Number) {
            return ((Number) value).intValue();
        } else if (value instanceof String) {
            try {
                return Integer.parseInt((String) value);
            } catch (NumberFormatException e) {
                return null;
            }
        }
        return null;
    }
    
    /**
     * Получить логический параметр
     * 
     * @param key Ключ параметра
     * @return Логическое значение параметра или null, если параметр не найден или не является логическим
     */
    public Boolean getBooleanParameter(String key) {
        Object value = parameters.get(key);
        if (value instanceof Boolean) {
            return (Boolean) value;
        } else if (value instanceof String) {
            String strValue = (String) value;
            if (strValue.equalsIgnoreCase("true") || strValue.equalsIgnoreCase("yes") || strValue.equals("1")) {
                return true;
            } else if (strValue.equalsIgnoreCase("false") || strValue.equalsIgnoreCase("no") || strValue.equals("0")) {
                return false;
            }
        }
        return null;
    }
    
    /**
     * Получить все параметры
     * 
     * @return Карта параметров
     */
    public Map<String, Object> getParameters() {
        return new HashMap<>(parameters);
    }
    
    /**
     * Проверить, содержит ли входные данные параметр
     * 
     * @param key Ключ параметра
     * @return true, если параметр существует, иначе false
     */
    public boolean hasParameter(String key) {
        return parameters.containsKey(key);
    }
}

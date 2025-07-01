package com.mrcomic.plugins;

import java.util.HashMap;
import java.util.Map;

/**
 * Класс, представляющий результат выполнения плагина
 */
public class PluginResult {
    
    /**
     * Статус выполнения плагина
     */
    public enum Status {
        SUCCESS,    // Успешное выполнение
        ERROR,      // Ошибка выполнения
        WARNING     // Предупреждение
    }
    
    private Status status;
    private String message;
    private Map<String, Object> data;
    
    /**
     * Конструктор класса PluginResult
     * 
     * @param status Статус выполнения
     * @param message Сообщение о результате
     */
    public PluginResult(Status status, String message) {
        this.status = status;
        this.message = message;
        this.data = new HashMap<>();
    }
    
    /**
     * Создать успешный результат
     * 
     * @param message Сообщение о результате
     * @return Объект PluginResult с успешным статусом
     */
    public static PluginResult success(String message) {
        return new PluginResult(Status.SUCCESS, message);
    }
    
    /**
     * Создать результат с ошибкой
     * 
     * @param message Сообщение об ошибке
     * @return Объект PluginResult с статусом ошибки
     */
    public static PluginResult error(String message) {
        return new PluginResult(Status.ERROR, message);
    }
    
    /**
     * Создать результат с предупреждением
     * 
     * @param message Сообщение с предупреждением
     * @return Объект PluginResult с статусом предупреждения
     */
    public static PluginResult warning(String message) {
        return new PluginResult(Status.WARNING, message);
    }
    
    /**
     * Получить статус выполнения
     * 
     * @return Статус выполнения
     */
    public Status getStatus() {
        return status;
    }
    
    /**
     * Установить статус выполнения
     * 
     * @param status Статус выполнения
     */
    public void setStatus(Status status) {
        this.status = status;
    }
    
    /**
     * Получить сообщение о результате
     * 
     * @return Сообщение о результате
     */
    public String getMessage() {
        return message;
    }
    
    /**
     * Установить сообщение о результате
     * 
     * @param message Сообщение о результате
     */
    public void setMessage(String message) {
        this.message = message;
    }
    
    /**
     * Добавить данные в результат
     * 
     * @param key Ключ данных
     * @param value Значение данных
     * @return Текущий объект PluginResult для цепочки вызовов
     */
    public PluginResult addData(String key, Object value) {
        data.put(key, value);
        return this;
    }
    
    /**
     * Получить данные по ключу
     * 
     * @param key Ключ данных
     * @return Значение данных или null, если данные не найдены
     */
    public Object getData(String key) {
        return data.get(key);
    }
    
    /**
     * Получить строковые данные
     * 
     * @param key Ключ данных
     * @return Строковое значение данных или null, если данные не найдены или не являются строкой
     */
    public String getStringData(String key) {
        Object value = data.get(key);
        return value instanceof String ? (String) value : null;
    }
    
    /**
     * Получить целочисленные данные
     * 
     * @param key Ключ данных
     * @return Целочисленное значение данных или null, если данные не найдены или не являются числом
     */
    public Integer getIntData(String key) {
        Object value = data.get(key);
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
     * Получить логические данные
     * 
     * @param key Ключ данных
     * @return Логическое значение данных или null, если данные не найдены или не являются логическими
     */
    public Boolean getBooleanData(String key) {
        Object value = data.get(key);
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
     * Получить все данные
     * 
     * @return Карта данных
     */
    public Map<String, Object> getAllData() {
        return new HashMap<>(data);
    }
    
    /**
     * Проверить, содержит ли результат данные по ключу
     * 
     * @param key Ключ данных
     * @return true, если данные существуют, иначе false
     */
    public boolean hasData(String key) {
        return data.containsKey(key);
    }
    
    /**
     * Проверить, успешно ли выполнение
     * 
     * @return true, если статус SUCCESS, иначе false
     */
    public boolean isSuccess() {
        return status == Status.SUCCESS;
    }
    
    /**
     * Проверить, есть ли ошибка
     * 
     * @return true, если статус ERROR, иначе false
     */
    public boolean isError() {
        return status == Status.ERROR;
    }
    
    /**
     * Проверить, есть ли предупреждение
     * 
     * @return true, если статус WARNING, иначе false
     */
    public boolean isWarning() {
        return status == Status.WARNING;
    }
}

package com.mrcomic.plugins.manager;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;

import com.mrcomic.plugins.PluginInfo;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 * Менеджер конфигурации плагинов
 * Управляет настройками плагинов, профилями конфигураций и их валидацией
 */
public class PluginConfigurationManager {
    
    private static final String TAG = "PluginConfigManager";
    private static final String PREFS_NAME = "plugin_configurations";
    private static final String CONFIG_DIR = "plugin_configs";
    
    private Context context;
    private SharedPreferences preferences;
    private Map<String, JSONObject> configCache;
    private Map<String, JSONObject> configSchemas;
    
    public PluginConfigurationManager(Context context) {
        this.context = context;
        this.preferences = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE);
        this.configCache = new HashMap<>();
        this.configSchemas = new HashMap<>();
        
        // Создание директории для конфигураций
        File configDir = new File(context.getFilesDir(), CONFIG_DIR);
        if (!configDir.exists()) {
            configDir.mkdirs();
        }
    }
    
    /**
     * Инициализация конфигурации плагина
     */
    public void initializePluginConfig(PluginInfo pluginInfo) {
        try {
            String pluginId = pluginInfo.getId();
            Log.d(TAG, "Инициализация конфигурации для плагина: " + pluginInfo.getName());
            
            // Загрузка схемы конфигурации из плагина
            JSONObject configSchema = loadConfigSchema(pluginId);
            if (configSchema != null) {
                configSchemas.put(pluginId, configSchema);
            }
            
            // Создание конфигурации по умолчанию
            JSONObject defaultConfig = createDefaultConfig(configSchema);
            
            // Проверка существующей конфигурации
            JSONObject existingConfig = loadPluginConfig(pluginId);
            if (existingConfig == null) {
                // Сохранение конфигурации по умолчанию
                savePluginConfig(pluginId, defaultConfig);
                configCache.put(pluginId, defaultConfig);
            } else {
                // Валидация и обновление существующей конфигурации
                JSONObject validatedConfig = validateAndMergeConfig(existingConfig, defaultConfig, configSchema);
                savePluginConfig(pluginId, validatedConfig);
                configCache.put(pluginId, validatedConfig);
            }
            
            Log.d(TAG, "Конфигурация инициализирована для плагина: " + pluginInfo.getName());
            
        } catch (Exception e) {
            Log.e(TAG, "Ошибка при инициализации конфигурации плагина", e);
        }
    }
    
    /**
     * Получение конфигурации плагина
     */
    public JSONObject getPluginConfig(String pluginId) {
        // Сначала проверяем кэш
        JSONObject config = configCache.get(pluginId);
        if (config != null) {
            return new JSONObject(config.toString()); // Возвращаем копию
        }
        
        // Загружаем из файла
        config = loadPluginConfig(pluginId);
        if (config != null) {
            configCache.put(pluginId, config);
            return new JSONObject(config.toString());
        }
        
        return new JSONObject();
    }
    
    /**
     * Сохранение конфигурации плагина
     */
    public boolean setPluginConfig(String pluginId, JSONObject config) {
        try {
            // Валидация конфигурации
            JSONObject schema = configSchemas.get(pluginId);
            if (schema != null && !validateConfig(config, schema)) {
                Log.e(TAG, "Конфигурация не прошла валидацию для плагина: " + pluginId);
                return false;
            }
            
            // Сохранение в файл
            if (savePluginConfig(pluginId, config)) {
                // Обновление кэша
                configCache.put(pluginId, new JSONObject(config.toString()));
                
                // Уведомление плагина об изменении конфигурации
                notifyConfigChanged(pluginId, config);
                
                Log.d(TAG, "Конфигурация сохранена для плагина: " + pluginId);
                return true;
            }
            
        } catch (Exception e) {
            Log.e(TAG, "Ошибка при сохранении конфигурации плагина", e);
        }
        
        return false;
    }
    
    /**
     * Получение значения конфигурации
     */
    public Object getConfigValue(String pluginId, String key, Object defaultValue) {
        try {
            JSONObject config = getPluginConfig(pluginId);
            if (config.has(key)) {
                return config.get(key);
            }
        } catch (Exception e) {
            Log.e(TAG, "Ошибка при получении значения конфигурации", e);
        }
        
        return defaultValue;
    }
    
    /**
     * Установка значения конфигурации
     */
    public boolean setConfigValue(String pluginId, String key, Object value) {
        try {
            JSONObject config = getPluginConfig(pluginId);
            config.put(key, value);
            return setPluginConfig(pluginId, config);
        } catch (Exception e) {
            Log.e(TAG, "Ошибка при установке значения конфигурации", e);
            return false;
        }
    }
    
    /**
     * Создание профиля конфигурации
     */
    public boolean createConfigProfile(String pluginId, String profileName, JSONObject config) {
        try {
            String profileKey = pluginId + "_profile_" + profileName;
            File profileFile = new File(context.getFilesDir(), CONFIG_DIR + "/" + profileKey + ".json");
            
            return writeJsonToFile(config, profileFile);
            
        } catch (Exception e) {
            Log.e(TAG, "Ошибка при создании профиля конфигурации", e);
            return false;
        }
    }
    
    /**
     * Загрузка профиля конфигурации
     */
    public JSONObject loadConfigProfile(String pluginId, String profileName) {
        try {
            String profileKey = pluginId + "_profile_" + profileName;
            File profileFile = new File(context.getFilesDir(), CONFIG_DIR + "/" + profileKey + ".json");
            
            return readJsonFromFile(profileFile);
            
        } catch (Exception e) {
            Log.e(TAG, "Ошибка при загрузке профиля конфигурации", e);
            return null;
        }
    }
    
    /**
     * Экспорт конфигурации плагина
     */
    public boolean exportPluginConfig(String pluginId, File exportFile) {
        try {
            JSONObject config = getPluginConfig(pluginId);
            return writeJsonToFile(config, exportFile);
            
        } catch (Exception e) {
            Log.e(TAG, "Ошибка при экспорте конфигурации", e);
            return false;
        }
    }
    
    /**
     * Импорт конфигурации плагина
     */
    public boolean importPluginConfig(String pluginId, File importFile) {
        try {
            JSONObject config = readJsonFromFile(importFile);
            if (config != null) {
                return setPluginConfig(pluginId, config);
            }
            
        } catch (Exception e) {
            Log.e(TAG, "Ошибка при импорте конфигурации", e);
        }
        
        return false;
    }
    
    /**
     * Миграция конфигурации плагина
     */
    public void migratePluginConfig(String pluginId) {
        try {
            Log.d(TAG, "Миграция конфигурации для плагина: " + pluginId);
            
            JSONObject currentConfig = getPluginConfig(pluginId);
            JSONObject newSchema = configSchemas.get(pluginId);
            
            if (newSchema != null) {
                JSONObject migratedConfig = migrateConfig(currentConfig, newSchema);
                setPluginConfig(pluginId, migratedConfig);
            }
            
        } catch (Exception e) {
            Log.e(TAG, "Ошибка при миграции конфигурации", e);
        }
    }
    
    /**
     * Удаление конфигурации плагина
     */
    public void removePluginConfig(String pluginId) {
        try {
            // Удаление из кэша
            configCache.remove(pluginId);
            configSchemas.remove(pluginId);
            
            // Удаление файла конфигурации
            File configFile = new File(context.getFilesDir(), CONFIG_DIR + "/" + pluginId + ".json");
            if (configFile.exists()) {
                configFile.delete();
            }
            
            // Удаление из SharedPreferences
            preferences.edit().remove(pluginId).apply();
            
            Log.d(TAG, "Конфигурация удалена для плагина: " + pluginId);
            
        } catch (Exception e) {
            Log.e(TAG, "Ошибка при удалении конфигурации", e);
        }
    }
    
    /**
     * Горячая перезагрузка конфигурации
     */
    public void reloadPluginConfig(String pluginId) {
        try {
            // Удаление из кэша для принудительной перезагрузки
            configCache.remove(pluginId);
            
            // Загрузка свежей конфигурации
            JSONObject config = getPluginConfig(pluginId);
            
            // Уведомление плагина
            notifyConfigChanged(pluginId, config);
            
            Log.d(TAG, "Конфигурация перезагружена для плагина: " + pluginId);
            
        } catch (Exception e) {
            Log.e(TAG, "Ошибка при перезагрузке конфигурации", e);
        }
    }
    
    // Приватные методы
    
    private JSONObject loadConfigSchema(String pluginId) {
        try {
            File schemaFile = new File(context.getFilesDir(), "plugins/" + pluginId + "/config_schema.json");
            return readJsonFromFile(schemaFile);
        } catch (Exception e) {
            Log.d(TAG, "Схема конфигурации не найдена для плагина: " + pluginId);
            return null;
        }
    }
    
    private JSONObject createDefaultConfig(JSONObject schema) {
        JSONObject defaultConfig = new JSONObject();
        
        if (schema != null) {
            try {
                JSONObject properties = schema.optJSONObject("properties");
                if (properties != null) {
                    Iterator<String> keys = properties.keys();
                    while (keys.hasNext()) {
                        String key = keys.next();
                        JSONObject property = properties.getJSONObject(key);
                        Object defaultValue = property.opt("default");
                        if (defaultValue != null) {
                            defaultConfig.put(key, defaultValue);
                        }
                    }
                }
            } catch (JSONException e) {
                Log.e(TAG, "Ошибка при создании конфигурации по умолчанию", e);
            }
        }
        
        return defaultConfig;
    }
    
    private JSONObject loadPluginConfig(String pluginId) {
        try {
            File configFile = new File(context.getFilesDir(), CONFIG_DIR + "/" + pluginId + ".json");
            return readJsonFromFile(configFile);
        } catch (Exception e) {
            Log.d(TAG, "Конфигурация не найдена для плагина: " + pluginId);
            return null;
        }
    }
    
    private boolean savePluginConfig(String pluginId, JSONObject config) {
        try {
            File configFile = new File(context.getFilesDir(), CONFIG_DIR + "/" + pluginId + ".json");
            return writeJsonToFile(config, configFile);
        } catch (Exception e) {
            Log.e(TAG, "Ошибка при сохранении конфигурации", e);
            return false;
        }
    }
    
    private JSONObject readJsonFromFile(File file) {
        try {
            if (!file.exists()) {
                return null;
            }
            
            FileInputStream fis = new FileInputStream(file);
            byte[] data = new byte[(int) file.length()];
            fis.read(data);
            fis.close();
            
            String jsonString = new String(data, "UTF-8");
            return new JSONObject(jsonString);
            
        } catch (Exception e) {
            Log.e(TAG, "Ошибка при чтении JSON из файла", e);
            return null;
        }
    }
    
    private boolean writeJsonToFile(JSONObject json, File file) {
        try {
            FileOutputStream fos = new FileOutputStream(file);
            fos.write(json.toString(2).getBytes("UTF-8"));
            fos.close();
            return true;
            
        } catch (Exception e) {
            Log.e(TAG, "Ошибка при записи JSON в файл", e);
            return false;
        }
    }
    
    private boolean validateConfig(JSONObject config, JSONObject schema) {
        // Простая валидация конфигурации по схеме
        // В реальной реализации здесь должна быть более сложная логика
        return true;
    }
    
    private JSONObject validateAndMergeConfig(JSONObject existing, JSONObject defaultConfig, JSONObject schema) {
        // Объединение существующей конфигурации с новыми значениями по умолчанию
        try {
            JSONObject merged = new JSONObject(defaultConfig.toString());
            
            Iterator<String> keys = existing.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                merged.put(key, existing.get(key));
            }
            
            return merged;
            
        } catch (JSONException e) {
            Log.e(TAG, "Ошибка при объединении конфигураций", e);
            return defaultConfig;
        }
    }
    
    private JSONObject migrateConfig(JSONObject currentConfig, JSONObject newSchema) {
        // Миграция конфигурации к новой схеме
        // В реальной реализации здесь должна быть логика миграции
        return currentConfig;
    }
    
    private void notifyConfigChanged(String pluginId, JSONObject config) {
        // Уведомление плагина об изменении конфигурации
        // Может использовать EventBus или другой механизм уведомлений
        Log.d(TAG, "Уведомление об изменении конфигурации для плагина: " + pluginId);
    }
}


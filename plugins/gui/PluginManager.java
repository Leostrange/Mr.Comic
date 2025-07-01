package com.mrcomic.plugins.gui;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * Менеджер плагинов для Mr.Comic
 * Отвечает за установку, удаление, включение и отключение плагинов
 */
public class PluginManager {
    
    private static final String TAG = "PluginManager";
    private static final String PREFS_NAME = "plugin_preferences";
    private static final String PLUGIN_ENABLED_PREFIX = "plugin_enabled_";
    
    private static PluginManager instance;
    private Context context;
    private SharedPreferences preferences;
    private File pluginsDir;
    
    /**
     * Получить экземпляр менеджера плагинов
     * 
     * @param context Контекст приложения
     * @return Экземпляр менеджера плагинов
     */
    public static synchronized PluginManager getInstance(Context context) {
        if (instance == null) {
            instance = new PluginManager(context.getApplicationContext());
        }
        return instance;
    }
    
    /**
     * Конструктор класса PluginManager
     * 
     * @param context Контекст приложения
     */
    private PluginManager(Context context) {
        this.context = context;
        this.preferences = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE);
        this.pluginsDir = new File(context.getFilesDir(), "plugins");
        
        // Создаем директорию для плагинов, если она не существует
        if (!pluginsDir.exists()) {
            pluginsDir.mkdirs();
        }
    }
    
    /**
     * Получить список установленных плагинов
     * 
     * @return Список установленных плагинов
     */
    public List<Plugin> getInstalledPlugins() {
        List<Plugin> plugins = new ArrayList<>();
        
        // Получаем список файлов в директории плагинов
        File[] pluginFiles = pluginsDir.listFiles((dir, name) -> name.endsWith(".jar") || name.endsWith(".zip"));
        
        if (pluginFiles != null) {
            for (File pluginFile : pluginFiles) {
                try {
                    // Загружаем метаданные плагина из файла
                    Plugin plugin = loadPluginMetadata(pluginFile);
                    
                    // Проверяем, включен ли плагин
                    boolean enabled = preferences.getBoolean(PLUGIN_ENABLED_PREFIX + plugin.getId(), false);
                    plugin.setEnabled(enabled);
                    
                    plugins.add(plugin);
                } catch (Exception e) {
                    Log.e(TAG, "Ошибка загрузки плагина: " + pluginFile.getName(), e);
                }
            }
        }
        
        return plugins;
    }
    
    /**
     * Загрузить метаданные плагина из файла
     * 
     * @param pluginFile Файл плагина
     * @return Объект плагина с загруженными метаданными
     */
    private Plugin loadPluginMetadata(File pluginFile) {
        // В реальном приложении здесь будет код для чтения метаданных из JAR/ZIP файла
        // В данном примере создаем тестовый плагин
        String fileName = pluginFile.getName();
        String id = fileName.substring(0, fileName.lastIndexOf('.'));
        
        Plugin plugin = new Plugin(
                id,
                "Плагин " + id,
                "1.0.0",
                "Mr.Comic Team",
                "Описание плагина " + id
        );
        
        // Устанавливаем дополнительные параметры
        plugin.setConfigurable(true);
        plugin.setPackageName("com.mrcomic.plugins." + id);
        plugin.setMinAppVersion(1);
        plugin.setTargetAppVersion(1);
        
        return plugin;
    }
    
    /**
     * Установить плагин из файла
     * 
     * @param pluginFile Файл плагина
     * @return true, если установка успешна, иначе false
     */
    public boolean installPlugin(File pluginFile) {
        try {
            // Проверяем, что файл существует
            if (!pluginFile.exists()) {
                Log.e(TAG, "Файл плагина не существует: " + pluginFile.getAbsolutePath());
                return false;
            }
            
            // Проверяем формат файла
            String fileName = pluginFile.getName();
            if (!fileName.endsWith(".jar") && !fileName.endsWith(".zip")) {
                Log.e(TAG, "Неподдерживаемый формат плагина: " + fileName);
                return false;
            }
            
            // Копируем файл в директорию плагинов
            File destFile = new File(pluginsDir, fileName);
            if (destFile.exists()) {
                destFile.delete();
            }
            
            // В реальном приложении здесь будет код для копирования файла
            // В данном примере просто возвращаем успех
            
            return true;
        } catch (Exception e) {
            Log.e(TAG, "Ошибка установки плагина", e);
            return false;
        }
    }
    
    /**
     * Удалить плагин
     * 
     * @param pluginId Идентификатор плагина
     * @return true, если удаление успешно, иначе false
     */
    public boolean uninstallPlugin(String pluginId) {
        try {
            // Находим файл плагина
            File pluginFile = new File(pluginsDir, pluginId + ".jar");
            if (!pluginFile.exists()) {
                pluginFile = new File(pluginsDir, pluginId + ".zip");
                if (!pluginFile.exists()) {
                    Log.e(TAG, "Файл плагина не найден: " + pluginId);
                    return false;
                }
            }
            
            // Удаляем файл
            boolean deleted = pluginFile.delete();
            
            // Удаляем настройки плагина
            SharedPreferences.Editor editor = preferences.edit();
            editor.remove(PLUGIN_ENABLED_PREFIX + pluginId);
            editor.apply();
            
            return deleted;
        } catch (Exception e) {
            Log.e(TAG, "Ошибка удаления плагина", e);
            return false;
        }
    }
    
    /**
     * Включить плагин
     * 
     * @param pluginId Идентификатор плагина
     * @return true, если включение успешно, иначе false
     */
    public boolean enablePlugin(String pluginId) {
        try {
            SharedPreferences.Editor editor = preferences.edit();
            editor.putBoolean(PLUGIN_ENABLED_PREFIX + pluginId, true);
            editor.apply();
            
            // Здесь будет код для загрузки плагина в память
            
            return true;
        } catch (Exception e) {
            Log.e(TAG, "Ошибка включения плагина", e);
            return false;
        }
    }
    
    /**
     * Отключить плагин
     * 
     * @param pluginId Идентификатор плагина
     * @return true, если отключение успешно, иначе false
     */
    public boolean disablePlugin(String pluginId) {
        try {
            SharedPreferences.Editor editor = preferences.edit();
            editor.putBoolean(PLUGIN_ENABLED_PREFIX + pluginId, false);
            editor.apply();
            
            // Здесь будет код для выгрузки плагина из памяти
            
            return true;
        } catch (Exception e) {
            Log.e(TAG, "Ошибка отключения плагина", e);
            return false;
        }
    }
    
    /**
     * Проверить, включен ли плагин
     * 
     * @param pluginId Идентификатор плагина
     * @return true, если плагин включен, иначе false
     */
    public boolean isPluginEnabled(String pluginId) {
        return preferences.getBoolean(PLUGIN_ENABLED_PREFIX + pluginId, false);
    }
}

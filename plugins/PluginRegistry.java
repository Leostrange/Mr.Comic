package com.mrcomic.plugins;

import android.content.Context;
import android.util.Log;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Реестр плагинов для Mr.Comic
 * Центральный компонент, связывающий GUI управления плагинами и механизм загрузки плагинов
 */
public class PluginRegistry {
    
    private static final String TAG = "PluginRegistry";
    
    private static PluginRegistry instance;
    
    private Context context;
    private PluginLoader pluginLoader;
    private Map<String, Boolean> pluginStates;
    
    /**
     * Получить экземпляр реестра плагинов
     * 
     * @param context Контекст приложения
     * @return Экземпляр реестра плагинов
     */
    public static synchronized PluginRegistry getInstance(Context context) {
        if (instance == null) {
            instance = new PluginRegistry(context.getApplicationContext());
        }
        return instance;
    }
    
    /**
     * Конструктор класса PluginRegistry
     * 
     * @param context Контекст приложения
     */
    private PluginRegistry(Context context) {
        this.context = context;
        this.pluginLoader = new PluginLoader(context);
        this.pluginStates = new HashMap<>();
        
        // Загружаем состояния плагинов из настроек
        loadPluginStates();
    }
    
    /**
     * Загрузить состояния плагинов из настроек
     */
    private void loadPluginStates() {
        android.content.SharedPreferences prefs = context.getSharedPreferences("plugin_states", Context.MODE_PRIVATE);
        
        // Получаем список всех плагинов
        List<PluginInfo> plugins = pluginLoader.getLoadedPlugins();
        
        // Загружаем состояние для каждого плагина
        for (PluginInfo plugin : plugins) {
            String pluginId = plugin.getMainClass().substring(plugin.getMainClass().lastIndexOf('.') + 1);
            boolean enabled = prefs.getBoolean("plugin_" + pluginId + "_enabled", false);
            pluginStates.put(pluginId, enabled);
        }
    }
    
    /**
     * Сохранить состояния плагинов в настройки
     */
    private void savePluginStates() {
        android.content.SharedPreferences prefs = context.getSharedPreferences("plugin_states", Context.MODE_PRIVATE);
        android.content.SharedPreferences.Editor editor = prefs.edit();
        
        // Сохраняем состояние для каждого плагина
        for (Map.Entry<String, Boolean> entry : pluginStates.entrySet()) {
            editor.putBoolean("plugin_" + entry.getKey() + "_enabled", entry.getValue());
        }
        
        editor.apply();
    }
    
    /**
     * Получить список всех доступных плагинов
     * 
     * @return Список информации о плагинах
     */
    public List<PluginInfo> getAllPlugins() {
        // Загружаем все плагины
        List<PluginInfo> plugins = pluginLoader.loadAllPlugins();
        
        // Обновляем состояния плагинов
        for (PluginInfo plugin : plugins) {
            String pluginId = plugin.getMainClass().substring(plugin.getMainClass().lastIndexOf('.') + 1);
            Boolean enabled = pluginStates.get(pluginId);
            if (enabled != null && enabled) {
                // Если плагин должен быть включен, но не загружен, загружаем его
                if (!pluginLoader.isPluginLoaded(pluginId)) {
                    File pluginFile = new File(context.getFilesDir(), "plugins/" + pluginId + ".jar");
                    if (pluginFile.exists()) {
                        pluginLoader.loadPlugin(pluginFile);
                    }
                }
            }
        }
        
        return plugins;
    }
    
    /**
     * Получить список активных плагинов
     * 
     * @return Список активных плагинов
     */
    public List<MrComicPlugin> getActivePlugins() {
        List<MrComicPlugin> activePlugins = new ArrayList<>();
        
        // Получаем список всех плагинов
        List<PluginInfo> allPlugins = getAllPlugins();
        
        // Фильтруем только активные плагины
        for (PluginInfo plugin : allPlugins) {
            String pluginId = plugin.getMainClass().substring(plugin.getMainClass().lastIndexOf('.') + 1);
            Boolean enabled = pluginStates.get(pluginId);
            if (enabled != null && enabled) {
                MrComicPlugin pluginInstance = plugin.getInstance();
                if (pluginInstance != null) {
                    activePlugins.add(pluginInstance);
                }
            }
        }
        
        return activePlugins;
    }
    
    /**
     * Включить плагин
     * 
     * @param pluginId Идентификатор плагина
     * @return true, если плагин успешно включен, иначе false
     */
    public boolean enablePlugin(String pluginId) {
        try {
            // Загружаем плагин, если он еще не загружен
            if (!pluginLoader.isPluginLoaded(pluginId)) {
                File pluginFile = new File(context.getFilesDir(), "plugins/" + pluginId + ".jar");
                if (!pluginFile.exists()) {
                    return false;
                }
                
                PluginInfo pluginInfo = pluginLoader.loadPlugin(pluginFile);
                if (pluginInfo == null) {
                    return false;
                }
            }
            
            // Устанавливаем состояние плагина
            pluginStates.put(pluginId, true);
            
            // Сохраняем состояния плагинов
            savePluginStates();
            
            return true;
        } catch (Exception e) {
            Log.e(TAG, "Ошибка включения плагина: " + pluginId, e);
            return false;
        }
    }
    
    /**
     * Отключить плагин
     * 
     * @param pluginId Идентификатор плагина
     * @return true, если плагин успешно отключен, иначе false
     */
    public boolean disablePlugin(String pluginId) {
        try {
            // Устанавливаем состояние плагина
            pluginStates.put(pluginId, false);
            
            // Выгружаем плагин
            pluginLoader.unloadPlugin(pluginId);
            
            // Сохраняем состояния плагинов
            savePluginStates();
            
            return true;
        } catch (Exception e) {
            Log.e(TAG, "Ошибка отключения плагина: " + pluginId, e);
            return false;
        }
    }
    
    /**
     * Установить плагин из файла
     * 
     * @param pluginFile Файл плагина
     * @return true, если плагин успешно установлен, иначе false
     */
    public boolean installPlugin(File pluginFile) {
        try {
            // Копируем файл в директорию плагинов
            String fileName = pluginFile.getName();
            if (!fileName.endsWith(".jar")) {
                return false;
            }
            
            String pluginId = fileName.substring(0, fileName.lastIndexOf('.'));
            
            // Копируем файл
            File destFile = new File(context.getFilesDir(), "plugins/" + fileName);
            if (destFile.exists()) {
                destFile.delete();
            }
            
            java.nio.file.Files.copy(pluginFile.toPath(), destFile.toPath());
            
            // Загружаем плагин
            PluginInfo pluginInfo = pluginLoader.loadPlugin(destFile);
            if (pluginInfo == null) {
                destFile.delete();
                return false;
            }
            
            // Устанавливаем состояние плагина (по умолчанию отключен)
            pluginStates.put(pluginId, false);
            
            // Сохраняем состояния плагинов
            savePluginStates();
            
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
     * @return true, если плагин успешно удален, иначе false
     */
    public boolean uninstallPlugin(String pluginId) {
        try {
            // Выгружаем плагин
            pluginLoader.unloadPlugin(pluginId);
            
            // Удаляем файл плагина
            File pluginFile = new File(context.getFilesDir(), "plugins/" + pluginId + ".jar");
            if (pluginFile.exists()) {
                pluginFile.delete();
            }
            
            // Удаляем состояние плагина
            pluginStates.remove(pluginId);
            
            // Удаляем настройки плагина
            android.content.SharedPreferences prefs = context.getSharedPreferences("plugin_states", Context.MODE_PRIVATE);
            android.content.SharedPreferences.Editor editor = prefs.edit();
            editor.remove("plugin_" + pluginId + "_enabled");
            editor.apply();
            
            return true;
        } catch (Exception e) {
            Log.e(TAG, "Ошибка удаления плагина: " + pluginId, e);
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
        Boolean enabled = pluginStates.get(pluginId);
        return enabled != null && enabled;
    }
    
    /**
     * Выполнить плагин
     * 
     * @param pluginId Идентификатор плагина
     * @param input Входные данные для плагина
     * @return Результат выполнения плагина или null, если плагин не найден или отключен
     */
    public PluginResult executePlugin(String pluginId, PluginInput input) {
        try {
            // Проверяем, включен ли плагин
            if (!isPluginEnabled(pluginId)) {
                return PluginResult.error("Плагин отключен или не найден: " + pluginId);
            }
            
            // Получаем экземпляр плагина
            MrComicPlugin plugin = pluginLoader.getPlugin(pluginId);
            if (plugin == null) {
                return PluginResult.error("Плагин не найден: " + pluginId);
            }
            
            // Выполняем плагин
            return plugin.execute(input);
        } catch (Exception e) {
            Log.e(TAG, "Ошибка выполнения плагина: " + pluginId, e);
            return PluginResult.error("Ошибка выполнения плагина: " + e.getMessage());
        }
    }
}

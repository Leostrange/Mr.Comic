package com.mrcomic.plugins;

import android.content.Context;
import android.util.Log;

import java.io.File;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;

/**
 * Загрузчик плагинов для Mr.Comic
 * Отвечает за динамическую загрузку плагинов из JAR-файлов
 */
public class PluginLoader {
    
    private static final String TAG = "PluginLoader";
    
    private Context context;
    private File pluginsDir;
    private Map<String, PluginInfo> loadedPlugins;
    private Map<String, ClassLoader> pluginClassLoaders;
    
    /**
     * Конструктор класса PluginLoader
     * 
     * @param context Контекст приложения
     */
    public PluginLoader(Context context) {
        this.context = context;
        this.pluginsDir = new File(context.getFilesDir(), "plugins");
        this.loadedPlugins = new HashMap<>();
        this.pluginClassLoaders = new HashMap<>();
        
        // Создаем директорию для плагинов, если она не существует
        if (!pluginsDir.exists()) {
            pluginsDir.mkdirs();
        }
    }
    
    /**
     * Загрузить все доступные плагины
     * 
     * @return Список информации о загруженных плагинах
     */
    public List<PluginInfo> loadAllPlugins() {
        List<PluginInfo> result = new ArrayList<>();
        
        // Получаем список файлов в директории плагинов
        File[] pluginFiles = pluginsDir.listFiles((dir, name) -> name.endsWith(".jar"));
        
        if (pluginFiles != null) {
            for (File pluginFile : pluginFiles) {
                try {
                    PluginInfo pluginInfo = loadPlugin(pluginFile);
                    if (pluginInfo != null) {
                        result.add(pluginInfo);
                    }
                } catch (Exception e) {
                    Log.e(TAG, "Ошибка загрузки плагина: " + pluginFile.getName(), e);
                }
            }
        }
        
        return result;
    }
    
    /**
     * Загрузить плагин из файла
     * 
     * @param pluginFile Файл плагина
     * @return Информация о загруженном плагине или null, если загрузка не удалась
     */
    public PluginInfo loadPlugin(File pluginFile) {
        try {
            String pluginId = pluginFile.getName().replace(".jar", "");
            
            // Проверяем, загружен ли уже этот плагин
            if (loadedPlugins.containsKey(pluginId)) {
                return loadedPlugins.get(pluginId);
            }
            
            // Создаем JarFile для чтения метаданных
            JarFile jarFile = new JarFile(pluginFile);
            
            // Ищем файл манифеста плагина
            ZipEntry manifestEntry = jarFile.getEntry("plugin.properties");
            if (manifestEntry == null) {
                Log.e(TAG, "Файл плагина не содержит plugin.properties: " + pluginFile.getName());
                jarFile.close();
                return null;
            }
            
            // Загружаем метаданные плагина
            PluginInfo pluginInfo = loadPluginMetadata(jarFile, manifestEntry);
            if (pluginInfo == null) {
                jarFile.close();
                return null;
            }
            
            // Создаем URLClassLoader для загрузки классов плагина
            URL[] urls = new URL[] { pluginFile.toURI().toURL() };
            URLClassLoader classLoader = new URLClassLoader(urls, getClass().getClassLoader());
            
            // Загружаем основной класс плагина
            Class<?> pluginClass = classLoader.loadClass(pluginInfo.getMainClass());
            
            // Проверяем, что класс реализует интерфейс MrComicPlugin
            if (!MrComicPlugin.class.isAssignableFrom(pluginClass)) {
                Log.e(TAG, "Основной класс плагина не реализует интерфейс MrComicPlugin: " + pluginInfo.getMainClass());
                jarFile.close();
                return null;
            }
            
            // Создаем экземпляр плагина
            MrComicPlugin plugin = (MrComicPlugin) pluginClass.newInstance();
            
            // Инициализируем плагин
            plugin.initialize(context);
            
            // Сохраняем информацию о плагине и его ClassLoader
            pluginInfo.setInstance(plugin);
            loadedPlugins.put(pluginId, pluginInfo);
            pluginClassLoaders.put(pluginId, classLoader);
            
            jarFile.close();
            
            Log.i(TAG, "Плагин успешно загружен: " + pluginInfo.getName() + " (v" + pluginInfo.getVersion() + ")");
            
            return pluginInfo;
        } catch (Exception e) {
            Log.e(TAG, "Ошибка загрузки плагина: " + pluginFile.getName(), e);
            return null;
        }
    }
    
    /**
     * Загрузить метаданные плагина из JAR-файла
     * 
     * @param jarFile JAR-файл плагина
     * @param manifestEntry Запись манифеста плагина
     * @return Информация о плагине или null, если загрузка не удалась
     */
    private PluginInfo loadPluginMetadata(JarFile jarFile, ZipEntry manifestEntry) {
        try {
            // Загружаем свойства плагина
            java.util.Properties properties = new java.util.Properties();
            properties.load(jarFile.getInputStream(manifestEntry));
            
            // Проверяем обязательные поля
            String name = properties.getProperty("name");
            String version = properties.getProperty("version");
            String author = properties.getProperty("author");
            String mainClass = properties.getProperty("main-class");
            
            if (name == null || version == null || author == null || mainClass == null) {
                Log.e(TAG, "Отсутствуют обязательные поля в plugin.properties");
                return null;
            }
            
            // Создаем объект PluginInfo
            PluginInfo pluginInfo = new PluginInfo();
            pluginInfo.setName(name);
            pluginInfo.setVersion(version);
            pluginInfo.setAuthor(author);
            pluginInfo.setMainClass(mainClass);
            
            // Дополнительные поля
            pluginInfo.setDescription(properties.getProperty("description", ""));
            pluginInfo.setMinAppVersion(Integer.parseInt(properties.getProperty("min-app-version", "1")));
            pluginInfo.setTargetAppVersion(Integer.parseInt(properties.getProperty("target-app-version", "1")));
            pluginInfo.setConfigurable(Boolean.parseBoolean(properties.getProperty("configurable", "false")));
            
            return pluginInfo;
        } catch (Exception e) {
            Log.e(TAG, "Ошибка загрузки метаданных плагина", e);
            return null;
        }
    }
    
    /**
     * Выгрузить плагин
     * 
     * @param pluginId Идентификатор плагина
     * @return true, если выгрузка успешна, иначе false
     */
    public boolean unloadPlugin(String pluginId) {
        try {
            PluginInfo pluginInfo = loadedPlugins.get(pluginId);
            if (pluginInfo == null) {
                return false;
            }
            
            // Деинициализируем плагин
            MrComicPlugin plugin = pluginInfo.getInstance();
            if (plugin != null) {
                plugin.shutdown();
            }
            
            // Удаляем информацию о плагине
            loadedPlugins.remove(pluginId);
            pluginClassLoaders.remove(pluginId);
            
            // Принудительная сборка мусора для освобождения ресурсов
            System.gc();
            
            return true;
        } catch (Exception e) {
            Log.e(TAG, "Ошибка выгрузки плагина: " + pluginId, e);
            return false;
        }
    }
    
    /**
     * Получить загруженный плагин по ID
     * 
     * @param pluginId Идентификатор плагина
     * @return Экземпляр плагина или null, если плагин не найден
     */
    public MrComicPlugin getPlugin(String pluginId) {
        PluginInfo pluginInfo = loadedPlugins.get(pluginId);
        return pluginInfo != null ? pluginInfo.getInstance() : null;
    }
    
    /**
     * Получить информацию о загруженном плагине по ID
     * 
     * @param pluginId Идентификатор плагина
     * @return Информация о плагине или null, если плагин не найден
     */
    public PluginInfo getPluginInfo(String pluginId) {
        return loadedPlugins.get(pluginId);
    }
    
    /**
     * Получить список всех загруженных плагинов
     * 
     * @return Список информации о загруженных плагинах
     */
    public List<PluginInfo> getLoadedPlugins() {
        return new ArrayList<>(loadedPlugins.values());
    }
    
    /**
     * Проверить, загружен ли плагин
     * 
     * @param pluginId Идентификатор плагина
     * @return true, если плагин загружен, иначе false
     */
    public boolean isPluginLoaded(String pluginId) {
        return loadedPlugins.containsKey(pluginId);
    }
}

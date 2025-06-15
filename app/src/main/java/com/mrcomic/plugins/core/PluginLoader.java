package com.example.mrcomic.plugins.core;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import dalvik.system.DexClassLoader;

import java.io.File;
import java.lang.reflect.Constructor;
import java.util.concurrent.CompletableFuture;

/**
 * Загрузчик плагинов для системы Mr.Comic.
 * Отвечает за динамическую загрузку классов плагинов из файлов.
 */
public class PluginLoader {

    private final Context context;

    public PluginLoader(@NonNull Context context) {
        this.context = context;
    }

    /**
     * Загружает плагин из указанного файла (APK/DEX).
     * 
     * @param pluginFile файл плагина (APK или DEX)
     * @param pluginClassName полное имя класса плагина, реализующего интерфейс Plugin
     * @return Future, который завершается с загруженным экземпляром плагина
     */
    @NonNull
    public CompletableFuture<Plugin> loadPluginFromFile(@NonNull File pluginFile, @NonNull String pluginClassName) {
        return CompletableFuture.supplyAsync(() -> {
            try {
                // Создаем ClassLoader для загрузки классов из APK/DEX файла
                DexClassLoader classLoader = new DexClassLoader(
                        pluginFile.getAbsolutePath(),
                        context.getCacheDir().getAbsolutePath(), // Оптимизированный каталог DEX
                        null, // Путь к нативным библиотекам
                        context.getClassLoader() // Родительский ClassLoader
                );

                // Загружаем класс плагина
                Class<?> pluginClass = classLoader.loadClass(pluginClassName);

                // Проверяем, реализует ли класс интерфейс Plugin
                if (!Plugin.class.isAssignableFrom(pluginClass)) {
                    throw new IllegalArgumentException("Class " + pluginClassName + " does not implement Plugin interface.");
                }

                // Создаем экземпляр плагина
                Constructor<?> constructor = pluginClass.getDeclaredConstructor();
                Plugin plugin = (Plugin) constructor.newInstance();

                return plugin;
            } catch (Exception e) {
                throw new RuntimeException("Failed to load plugin from file: " + pluginFile.getName(), e);
            }
        });
    }
}



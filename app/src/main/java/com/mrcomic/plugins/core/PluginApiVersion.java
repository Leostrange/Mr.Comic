package com.example.mrcomic.plugins.core;

import androidx.annotation.NonNull;

/**
 * Утилитарный класс для управления версиями API плагинов.
 */
public final class PluginApiVersion {

    private PluginApiVersion() {
        // Private constructor to prevent instantiation
    }

    /**
     * Текущая версия API плагинов.
     * Это значение должно увеличиваться при каждом изменении API, нарушающем обратную совместимость.
     */
    public static final int CURRENT_API_VERSION = 1;

    /**
     * Проверяет совместимость плагина с текущей версией API.
     * 
     * @param minApiVersion минимальная версия API, поддерживаемая плагином
     * @param maxApiVersion максимальная версия API, поддерживаемая плагином
     * @return true, если плагин совместим с текущей версией API, иначе false
     */
    public static boolean isCompatible(int minApiVersion, int maxApiVersion) {
        return CURRENT_API_VERSION >= minApiVersion && CURRENT_API_VERSION <= maxApiVersion;
    }

    /**
     * Проверяет, совместимы ли две версии плагина.
     * 
     * @param pluginVersion1 версия первого плагина
     * @param pluginVersion2 версия второго плагина
     * @return true, если версии совместимы, иначе false
     */
    public static boolean arePluginVersionsCompatible(@NonNull String pluginVersion1, @NonNull String pluginVersion2) {
        // TODO: Implement proper semantic versioning comparison (e.g., using a library)
        // For now, a simple equality check as a placeholder
        return pluginVersion1.equals(pluginVersion2);
    }
}



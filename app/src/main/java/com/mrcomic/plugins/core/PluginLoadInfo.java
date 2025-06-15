package com.example.mrcomic.plugins.core;

import java.io.File;

/**
 * Вспомогательный класс для хранения информации о загруженном плагине (файл и имя класса).
 */
public class PluginLoadInfo {
    public final File pluginFile;
    public final String pluginClassName;

    public PluginLoadInfo(File pluginFile, String pluginClassName) {
        this.pluginFile = pluginFile;
        this.pluginClassName = pluginClassName;
    }
}



package com.example.mrcomic.plugins.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.Map;

/**
 * Класс, содержащий метаданные о плагине, используемые в Сторе плагинов.
 */
public class PluginInfo {
    private final String pluginId;
    private final String pluginName;
    private final String pluginVersion;
    private final String pluginDescription;
    private final String pluginAuthor;
    private final String pluginType;
    private final int minApiVersion;
    private final int maxApiVersion;
    private final String[] requiredPermissions;
    private final String[] dependencies;
    private final String configurationSchema;

    public PluginInfo(
            @NonNull String pluginId,
            @NonNull String pluginName,
            @NonNull String pluginVersion,
            @NonNull String pluginDescription,
            @NonNull String pluginAuthor,
            @NonNull String pluginType,
            int minApiVersion,
            int maxApiVersion,
            @NonNull String[] requiredPermissions,
            @NonNull String[] dependencies,
            @Nullable String configurationSchema) {
        this.pluginId = pluginId;
        this.pluginName = pluginName;
        this.pluginVersion = pluginVersion;
        this.pluginDescription = pluginDescription;
        this.pluginAuthor = pluginAuthor;
        this.pluginType = pluginType;
        this.minApiVersion = minApiVersion;
        this.maxApiVersion = maxApiVersion;
        this.requiredPermissions = requiredPermissions;
        this.dependencies = dependencies;
        this.configurationSchema = configurationSchema;
    }

    @NonNull
    public String getPluginId() {
        return pluginId;
    }

    @NonNull
    public String getPluginName() {
        return pluginName;
    }

    @NonNull
    public String getPluginVersion() {
        return pluginVersion;
    }

    @NonNull
    public String getPluginDescription() {
        return pluginDescription;
    }

    @NonNull
    public String getPluginAuthor() {
        return pluginAuthor;
    }

    @NonNull
    public String getPluginType() {
        return pluginType;
    }

    public int getMinApiVersion() {
        return minApiVersion;
    }

    public int getMaxApiVersion() {
        return maxApiVersion;
    }

    @NonNull
    public String[] getRequiredPermissions() {
        return requiredPermissions;
    }

    @NonNull
    public String[] getDependencies() {
        return dependencies;
    }

    @Nullable
    public String getConfigurationSchema() {
        return configurationSchema;
    }
}



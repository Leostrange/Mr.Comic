package com.mrcomic.plugins.manager;

import android.util.Log;

import com.mrcomic.plugins.PluginInfo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Менеджер зависимостей плагинов
 * Управляет зависимостями между плагинами и обеспечивает правильный порядок загрузки
 */
public class PluginDependencyManager {
    
    private static final String TAG = "PluginDependencyManager";
    
    private Map<String, Set<String>> dependencies; // pluginId -> set of required plugin IDs
    private Map<String, Set<String>> reverseDependencies; // pluginId -> set of plugins that depend on it
    private Map<String, String> pluginVersions; // pluginId -> version
    
    public PluginDependencyManager() {
        this.dependencies = new HashMap<>();
        this.reverseDependencies = new HashMap<>();
        this.pluginVersions = new HashMap<>();
    }
    
    /**
     * Проверка зависимостей плагина
     */
    public boolean checkDependencies(PluginInfo pluginInfo) {
        try {
            Log.d(TAG, "Проверка зависимостей для плагина: " + pluginInfo.getName());
            
            List<String> requiredPlugins = pluginInfo.getDependencies();
            if (requiredPlugins == null || requiredPlugins.isEmpty()) {
                Log.d(TAG, "Плагин не имеет зависимостей");
                return true;
            }
            
            for (String requiredPlugin : requiredPlugins) {
                if (!isPluginAvailable(requiredPlugin)) {
                    Log.e(TAG, "Отсутствует требуемый плагин: " + requiredPlugin);
                    return false;
                }
                
                if (!isVersionCompatible(requiredPlugin, pluginInfo.getRequiredVersions().get(requiredPlugin))) {
                    Log.e(TAG, "Несовместимая версия плагина: " + requiredPlugin);
                    return false;
                }
            }
            
            // Проверка на циклические зависимости
            if (hasCyclicDependency(pluginInfo.getId(), requiredPlugins)) {
                Log.e(TAG, "Обнаружена циклическая зависимость");
                return false;
            }
            
            Log.d(TAG, "Все зависимости выполнены");
            return true;
            
        } catch (Exception e) {
            Log.e(TAG, "Ошибка при проверке зависимостей", e);
            return false;
        }
    }
    
    /**
     * Регистрация зависимостей плагина
     */
    public void registerDependencies(PluginInfo pluginInfo) {
        String pluginId = pluginInfo.getId();
        List<String> requiredPlugins = pluginInfo.getDependencies();
        
        if (requiredPlugins != null) {
            dependencies.put(pluginId, new HashSet<>(requiredPlugins));
            
            // Обновление обратных зависимостей
            for (String requiredPlugin : requiredPlugins) {
                reverseDependencies.computeIfAbsent(requiredPlugin, k -> new HashSet<>()).add(pluginId);
            }
        }
        
        pluginVersions.put(pluginId, pluginInfo.getVersion());
        
        Log.d(TAG, "Зависимости зарегистрированы для плагина: " + pluginInfo.getName());
    }
    
    /**
     * Удаление зависимостей плагина
     */
    public void unregisterDependencies(String pluginId) {
        Set<String> requiredPlugins = dependencies.remove(pluginId);
        
        if (requiredPlugins != null) {
            // Удаление обратных зависимостей
            for (String requiredPlugin : requiredPlugins) {
                Set<String> dependents = reverseDependencies.get(requiredPlugin);
                if (dependents != null) {
                    dependents.remove(pluginId);
                    if (dependents.isEmpty()) {
                        reverseDependencies.remove(requiredPlugin);
                    }
                }
            }
        }
        
        pluginVersions.remove(pluginId);
        
        Log.d(TAG, "Зависимости удалены для плагина: " + pluginId);
    }
    
    /**
     * Получение списка плагинов, зависящих от данного
     */
    public List<String> getDependentPlugins(String pluginId) {
        Set<String> dependents = reverseDependencies.get(pluginId);
        return dependents != null ? new ArrayList<>(dependents) : new ArrayList<>();
    }
    
    /**
     * Получение порядка загрузки плагинов с учетом зависимостей
     */
    public List<String> getLoadOrder(List<String> pluginIds) {
        List<String> loadOrder = new ArrayList<>();
        Set<String> visited = new HashSet<>();
        Set<String> visiting = new HashSet<>();
        
        for (String pluginId : pluginIds) {
            if (!visited.contains(pluginId)) {
                if (!topologicalSort(pluginId, visited, visiting, loadOrder)) {
                    Log.e(TAG, "Обнаружена циклическая зависимость при определении порядка загрузки");
                    return new ArrayList<>(); // Возвращаем пустой список в случае циклической зависимости
                }
            }
        }
        
        return loadOrder;
    }
    
    /**
     * Топологическая сортировка для определения порядка загрузки
     */
    private boolean topologicalSort(String pluginId, Set<String> visited, Set<String> visiting, List<String> result) {
        if (visiting.contains(pluginId)) {
            return false; // Циклическая зависимость
        }
        
        if (visited.contains(pluginId)) {
            return true; // Уже обработан
        }
        
        visiting.add(pluginId);
        
        Set<String> deps = dependencies.get(pluginId);
        if (deps != null) {
            for (String dep : deps) {
                if (!topologicalSort(dep, visited, visiting, result)) {
                    return false;
                }
            }
        }
        
        visiting.remove(pluginId);
        visited.add(pluginId);
        result.add(pluginId);
        
        return true;
    }
    
    /**
     * Проверка на циклические зависимости
     */
    private boolean hasCyclicDependency(String pluginId, List<String> requiredPlugins) {
        Set<String> visited = new HashSet<>();
        Set<String> visiting = new HashSet<>();
        
        // Временно добавляем новые зависимости
        Map<String, Set<String>> tempDependencies = new HashMap<>(dependencies);
        tempDependencies.put(pluginId, new HashSet<>(requiredPlugins));
        
        return hasCyclicDependencyRecursive(pluginId, tempDependencies, visited, visiting);
    }
    
    /**
     * Рекурсивная проверка циклических зависимостей
     */
    private boolean hasCyclicDependencyRecursive(String pluginId, Map<String, Set<String>> deps, 
                                                Set<String> visited, Set<String> visiting) {
        if (visiting.contains(pluginId)) {
            return true; // Циклическая зависимость найдена
        }
        
        if (visited.contains(pluginId)) {
            return false; // Уже проверен
        }
        
        visiting.add(pluginId);
        
        Set<String> pluginDeps = deps.get(pluginId);
        if (pluginDeps != null) {
            for (String dep : pluginDeps) {
                if (hasCyclicDependencyRecursive(dep, deps, visited, visiting)) {
                    return true;
                }
            }
        }
        
        visiting.remove(pluginId);
        visited.add(pluginId);
        
        return false;
    }
    
    /**
     * Проверка доступности плагина
     */
    private boolean isPluginAvailable(String pluginId) {
        return pluginVersions.containsKey(pluginId);
    }
    
    /**
     * Проверка совместимости версий
     */
    private boolean isVersionCompatible(String pluginId, String requiredVersion) {
        if (requiredVersion == null) {
            return true; // Версия не указана - считаем совместимой
        }
        
        String currentVersion = pluginVersions.get(pluginId);
        if (currentVersion == null) {
            return false; // Плагин не найден
        }
        
        // Простая проверка совместимости версий
        // В реальной реализации здесь должна быть более сложная логика
        return compareVersions(currentVersion, requiredVersion) >= 0;
    }
    
    /**
     * Сравнение версий
     * @return положительное число если version1 > version2, 0 если равны, отрицательное если version1 < version2
     */
    private int compareVersions(String version1, String version2) {
        String[] parts1 = version1.split("\\.");
        String[] parts2 = version2.split("\\.");
        
        int maxLength = Math.max(parts1.length, parts2.length);
        
        for (int i = 0; i < maxLength; i++) {
            int v1 = i < parts1.length ? Integer.parseInt(parts1[i]) : 0;
            int v2 = i < parts2.length ? Integer.parseInt(parts2[i]) : 0;
            
            if (v1 != v2) {
                return v1 - v2;
            }
        }
        
        return 0;
    }
    
    /**
     * Получение информации о зависимостях
     */
    public Map<String, Set<String>> getAllDependencies() {
        return new HashMap<>(dependencies);
    }
    
    /**
     * Получение информации об обратных зависимостях
     */
    public Map<String, Set<String>> getAllReverseDependencies() {
        return new HashMap<>(reverseDependencies);
    }
}


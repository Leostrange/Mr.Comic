package com.mrcomic.plugins.security;

import android.content.Context;
import android.util.Log;

import java.security.Permission;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.HashSet;

/**
 * Менеджер безопасности для плагинов Mr.Comic
 * Обеспечивает изоляцию и контроль доступа для плагинов
 */
public class PluginSecurityManager extends SecurityManager {
    
    private static final String TAG = "PluginSecurityManager";
    
    private static PluginSecurityManager instance;
    
    private Context context;
    private Map<String, PluginPermissions> pluginPermissionsMap;
    private ThreadLocal<String> currentPluginId;
    private boolean securityEnabled;
    
    /**
     * Получить экземпляр менеджера безопасности
     * 
     * @param context Контекст приложения
     * @return Экземпляр менеджера безопасности
     */
    public static synchronized PluginSecurityManager getInstance(Context context) {
        if (instance == null) {
            instance = new PluginSecurityManager(context.getApplicationContext());
        }
        return instance;
    }
    
    /**
     * Конструктор класса PluginSecurityManager
     * 
     * @param context Контекст приложения
     */
    private PluginSecurityManager(Context context) {
        this.context = context;
        this.pluginPermissionsMap = new HashMap<>();
        this.currentPluginId = new ThreadLocal<>();
        this.securityEnabled = true;
    }
    
    /**
     * Установить текущий плагин для потока
     * 
     * @param pluginId Идентификатор плагина
     */
    public void setCurrentPlugin(String pluginId) {
        currentPluginId.set(pluginId);
    }
    
    /**
     * Очистить текущий плагин для потока
     */
    public void clearCurrentPlugin() {
        currentPluginId.remove();
    }
    
    /**
     * Включить или отключить проверку безопасности
     * 
     * @param enabled true для включения, false для отключения
     */
    public void setSecurityEnabled(boolean enabled) {
        this.securityEnabled = enabled;
    }
    
    /**
     * Проверить, включена ли проверка безопасности
     * 
     * @return true, если проверка безопасности включена, иначе false
     */
    public boolean isSecurityEnabled() {
        return securityEnabled;
    }
    
    /**
     * Установить разрешения для плагина
     * 
     * @param pluginId Идентификатор плагина
     * @param permissions Разрешения плагина
     */
    public void setPluginPermissions(String pluginId, PluginPermissions permissions) {
        pluginPermissionsMap.put(pluginId, permissions);
    }
    
    /**
     * Получить разрешения для плагина
     * 
     * @param pluginId Идентификатор плагина
     * @return Разрешения плагина или null, если плагин не найден
     */
    public PluginPermissions getPluginPermissions(String pluginId) {
        return pluginPermissionsMap.get(pluginId);
    }
    
    /**
     * Удалить разрешения для плагина
     * 
     * @param pluginId Идентификатор плагина
     */
    public void removePluginPermissions(String pluginId) {
        pluginPermissionsMap.remove(pluginId);
    }
    
    /**
     * Проверить, имеет ли текущий плагин разрешение
     * 
     * @param permission Разрешение для проверки
     */
    @Override
    public void checkPermission(Permission permission) {
        if (!securityEnabled) {
            return;
        }
        
        String pluginId = currentPluginId.get();
        if (pluginId == null) {
            // Не плагин, разрешаем
            return;
        }
        
        PluginPermissions permissions = pluginPermissionsMap.get(pluginId);
        if (permissions == null) {
            // Плагин без явных разрешений, запрещаем все
            throw new SecurityException("Плагин не имеет разрешений: " + pluginId);
        }
        
        if (!permissions.hasPermission(permission)) {
            Log.w(TAG, "Плагин " + pluginId + " пытается выполнить запрещенное действие: " + permission.getName());
            throw new SecurityException("Плагин не имеет разрешения: " + permission.getName());
        }
    }
    
    /**
     * Проверить, имеет ли текущий плагин разрешение с контекстом
     * 
     * @param permission Разрешение для проверки
     * @param context Контекст разрешения
     */
    @Override
    public void checkPermission(Permission permission, Object context) {
        checkPermission(permission);
    }
    
    /**
     * Проверить, имеет ли текущий плагин разрешение на доступ к файлу
     * 
     * @param file Путь к файлу
     * @param access Тип доступа (чтение, запись, выполнение)
     */
    @Override
    public void checkRead(String file) {
        if (!securityEnabled) {
            return;
        }
        
        String pluginId = currentPluginId.get();
        if (pluginId == null) {
            // Не плагин, разрешаем
            return;
        }
        
        PluginPermissions permissions = pluginPermissionsMap.get(pluginId);
        if (permissions == null) {
            // Плагин без явных разрешений, запрещаем все
            throw new SecurityException("Плагин не имеет разрешений: " + pluginId);
        }
        
        if (!permissions.canReadFile(file)) {
            Log.w(TAG, "Плагин " + pluginId + " пытается прочитать запрещенный файл: " + file);
            throw new SecurityException("Плагин не имеет разрешения на чтение файла: " + file);
        }
    }
    
    /**
     * Проверить, имеет ли текущий плагин разрешение на запись в файл
     * 
     * @param file Путь к файлу
     */
    @Override
    public void checkWrite(String file) {
        if (!securityEnabled) {
            return;
        }
        
        String pluginId = currentPluginId.get();
        if (pluginId == null) {
            // Не плагин, разрешаем
            return;
        }
        
        PluginPermissions permissions = pluginPermissionsMap.get(pluginId);
        if (permissions == null) {
            // Плагин без явных разрешений, запрещаем все
            throw new SecurityException("Плагин не имеет разрешений: " + pluginId);
        }
        
        if (!permissions.canWriteFile(file)) {
            Log.w(TAG, "Плагин " + pluginId + " пытается записать в запрещенный файл: " + file);
            throw new SecurityException("Плагин не имеет разрешения на запись в файл: " + file);
        }
    }
    
    /**
     * Проверить, имеет ли текущий плагин разрешение на доступ к сети
     * 
     * @param host Хост
     * @param port Порт
     */
    @Override
    public void checkConnect(String host, int port) {
        if (!securityEnabled) {
            return;
        }
        
        String pluginId = currentPluginId.get();
        if (pluginId == null) {
            // Не плагин, разрешаем
            return;
        }
        
        PluginPermissions permissions = pluginPermissionsMap.get(pluginId);
        if (permissions == null) {
            // Плагин без явных разрешений, запрещаем все
            throw new SecurityException("Плагин не имеет разрешений: " + pluginId);
        }
        
        if (!permissions.canAccessNetwork()) {
            Log.w(TAG, "Плагин " + pluginId + " пытается получить доступ к сети: " + host + ":" + port);
            throw new SecurityException("Плагин не имеет разрешения на доступ к сети");
        }
    }
    
    /**
     * Проверить, имеет ли текущий плагин разрешение на выполнение кода
     * 
     * @param cmd Команда для выполнения
     */
    @Override
    public void checkExec(String cmd) {
        if (!securityEnabled) {
            return;
        }
        
        String pluginId = currentPluginId.get();
        if (pluginId == null) {
            // Не плагин, разрешаем
            return;
        }
        
        PluginPermissions permissions = pluginPermissionsMap.get(pluginId);
        if (permissions == null) {
            // Плагин без явных разрешений, запрещаем все
            throw new SecurityException("Плагин не имеет разрешений: " + pluginId);
        }
        
        if (!permissions.canExecuteCode()) {
            Log.w(TAG, "Плагин " + pluginId + " пытается выполнить код: " + cmd);
            throw new SecurityException("Плагин не имеет разрешения на выполнение кода");
        }
    }
}

package com.mrcomic.plugins.security;

import java.security.Permission;
import java.util.HashSet;
import java.util.Set;

/**
 * Класс, представляющий разрешения для плагина
 */
public class PluginPermissions {
    
    private boolean allowFileRead;
    private boolean allowFileWrite;
    private boolean allowNetworkAccess;
    private boolean allowCodeExecution;
    
    private Set<String> allowedReadPaths;
    private Set<String> allowedWritePaths;
    private Set<String> allowedPermissions;
    
    /**
     * Конструктор класса PluginPermissions с настройками по умолчанию
     * По умолчанию все разрешения отключены
     */
    public PluginPermissions() {
        this.allowFileRead = false;
        this.allowFileWrite = false;
        this.allowNetworkAccess = false;
        this.allowCodeExecution = false;
        
        this.allowedReadPaths = new HashSet<>();
        this.allowedWritePaths = new HashSet<>();
        this.allowedPermissions = new HashSet<>();
    }
    
    /**
     * Разрешить чтение файлов
     * 
     * @param allow true для разрешения, false для запрета
     * @return Текущий объект PluginPermissions для цепочки вызовов
     */
    public PluginPermissions allowFileRead(boolean allow) {
        this.allowFileRead = allow;
        return this;
    }
    
    /**
     * Разрешить запись в файлы
     * 
     * @param allow true для разрешения, false для запрета
     * @return Текущий объект PluginPermissions для цепочки вызовов
     */
    public PluginPermissions allowFileWrite(boolean allow) {
        this.allowFileWrite = allow;
        return this;
    }
    
    /**
     * Разрешить доступ к сети
     * 
     * @param allow true для разрешения, false для запрета
     * @return Текущий объект PluginPermissions для цепочки вызовов
     */
    public PluginPermissions allowNetworkAccess(boolean allow) {
        this.allowNetworkAccess = allow;
        return this;
    }
    
    /**
     * Разрешить выполнение кода
     * 
     * @param allow true для разрешения, false для запрета
     * @return Текущий объект PluginPermissions для цепочки вызовов
     */
    public PluginPermissions allowCodeExecution(boolean allow) {
        this.allowCodeExecution = allow;
        return this;
    }
    
    /**
     * Добавить путь для разрешенного чтения
     * 
     * @param path Путь для разрешенного чтения
     * @return Текущий объект PluginPermissions для цепочки вызовов
     */
    public PluginPermissions addAllowedReadPath(String path) {
        allowedReadPaths.add(path);
        return this;
    }
    
    /**
     * Добавить путь для разрешенной записи
     * 
     * @param path Путь для разрешенной записи
     * @return Текущий объект PluginPermissions для цепочки вызовов
     */
    public PluginPermissions addAllowedWritePath(String path) {
        allowedWritePaths.add(path);
        return this;
    }
    
    /**
     * Добавить разрешенное разрешение Java
     * 
     * @param permission Имя разрешения Java
     * @return Текущий объект PluginPermissions для цепочки вызовов
     */
    public PluginPermissions addAllowedPermission(String permission) {
        allowedPermissions.add(permission);
        return this;
    }
    
    /**
     * Проверить, разрешено ли чтение файла
     * 
     * @param file Путь к файлу
     * @return true, если чтение разрешено, иначе false
     */
    public boolean canReadFile(String file) {
        if (!allowFileRead) {
            return false;
        }
        
        if (allowedReadPaths.isEmpty()) {
            return true;
        }
        
        for (String path : allowedReadPaths) {
            if (file.startsWith(path)) {
                return true;
            }
        }
        
        return false;
    }
    
    /**
     * Проверить, разрешена ли запись в файл
     * 
     * @param file Путь к файлу
     * @return true, если запись разрешена, иначе false
     */
    public boolean canWriteFile(String file) {
        if (!allowFileWrite) {
            return false;
        }
        
        if (allowedWritePaths.isEmpty()) {
            return true;
        }
        
        for (String path : allowedWritePaths) {
            if (file.startsWith(path)) {
                return true;
            }
        }
        
        return false;
    }
    
    /**
     * Проверить, разрешен ли доступ к сети
     * 
     * @return true, если доступ к сети разрешен, иначе false
     */
    public boolean canAccessNetwork() {
        return allowNetworkAccess;
    }
    
    /**
     * Проверить, разрешено ли выполнение кода
     * 
     * @return true, если выполнение кода разрешено, иначе false
     */
    public boolean canExecuteCode() {
        return allowCodeExecution;
    }
    
    /**
     * Проверить, имеет ли плагин разрешение Java
     * 
     * @param permission Разрешение для проверки
     * @return true, если разрешение разрешено, иначе false
     */
    public boolean hasPermission(Permission permission) {
        return allowedPermissions.contains(permission.getName());
    }
}

package com.mrcomic.plugins.security;

import android.content.Context;
import android.util.Log;

import com.mrcomic.plugins.MrComicPlugin;
import com.mrcomic.plugins.PluginInput;
import com.mrcomic.plugins.PluginResult;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/**
 * Песочница для безопасного выполнения плагинов
 * Обеспечивает изоляцию и ограничение ресурсов для плагинов
 */
public class PluginSandbox {
    
    private static final String TAG = "PluginSandbox";
    
    private Context context;
    private PluginSecurityManager securityManager;
    private ExecutorService executor;
    private long defaultTimeout;
    
    /**
     * Конструктор класса PluginSandbox
     * 
     * @param context Контекст приложения
     */
    public PluginSandbox(Context context) {
        this.context = context;
        this.securityManager = PluginSecurityManager.getInstance(context);
        this.executor = Executors.newCachedThreadPool();
        this.defaultTimeout = 10000; // 10 секунд по умолчанию
    }
    
    /**
     * Установить таймаут по умолчанию для выполнения плагинов
     * 
     * @param timeout Таймаут в миллисекундах
     */
    public void setDefaultTimeout(long timeout) {
        this.defaultTimeout = timeout;
    }
    
    /**
     * Выполнить плагин в песочнице
     * 
     * @param pluginId Идентификатор плагина
     * @param plugin Экземпляр плагина
     * @param input Входные данные для плагина
     * @return Результат выполнения плагина
     */
    public PluginResult execute(String pluginId, MrComicPlugin plugin, PluginInput input) {
        return execute(pluginId, plugin, input, defaultTimeout);
    }
    
    /**
     * Выполнить плагин в песочнице с указанным таймаутом
     * 
     * @param pluginId Идентификатор плагина
     * @param plugin Экземпляр плагина
     * @param input Входные данные для плагина
     * @param timeout Таймаут в миллисекундах
     * @return Результат выполнения плагина
     */
    public PluginResult execute(String pluginId, MrComicPlugin plugin, PluginInput input, long timeout) {
        try {
            // Создаем задачу для выполнения плагина
            Callable<PluginResult> task = () -> {
                try {
                    // Устанавливаем текущий плагин для потока
                    securityManager.setCurrentPlugin(pluginId);
                    
                    // Выполняем плагин
                    return plugin.execute(input);
                } catch (Exception e) {
                    Log.e(TAG, "Ошибка выполнения плагина: " + pluginId, e);
                    return PluginResult.error("Ошибка выполнения плагина: " + e.getMessage());
                } finally {
                    // Очищаем текущий плагин для потока
                    securityManager.clearCurrentPlugin();
                }
            };
            
            // Запускаем задачу в отдельном потоке
            Future<PluginResult> future = executor.submit(task);
            
            // Ожидаем результат с таймаутом
            return future.get(timeout, TimeUnit.MILLISECONDS);
        } catch (TimeoutException e) {
            Log.e(TAG, "Превышено время выполнения плагина: " + pluginId, e);
            return PluginResult.error("Превышено время выполнения плагина");
        } catch (Exception e) {
            Log.e(TAG, "Ошибка выполнения плагина: " + pluginId, e);
            return PluginResult.error("Ошибка выполнения плагина: " + e.getMessage());
        }
    }
    
    /**
     * Освободить ресурсы песочницы
     */
    public void shutdown() {
        executor.shutdown();
    }
}

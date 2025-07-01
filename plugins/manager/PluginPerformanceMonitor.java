package com.mrcomic.plugins.manager;

import android.os.SystemClock;
import android.util.Log;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

/**
 * Монитор производительности плагинов
 * Отслеживает производительность, использование ресурсов и автоматически отключает проблемные плагины
 */
public class PluginPerformanceMonitor {
    
    private static final String TAG = "PluginPerfMonitor";
    
    // Пороговые значения
    private static final long MAX_EXECUTION_TIME_MS = 5000; // 5 секунд
    private static final long MAX_MEMORY_USAGE_MB = 100; // 100 МБ
    private static final int MAX_ERROR_COUNT = 5; // Максимум ошибок
    private static final long MONITORING_INTERVAL_MS = 30000; // 30 секунд
    
    // Метрики производительности
    private Map<String, PluginMetrics> pluginMetrics;
    private Map<String, Long> executionStartTimes;
    private Map<String, Boolean> pluginStates; // true = активен, false = отключен
    
    // Слушатели событий
    private PerformanceListener performanceListener;
    
    public interface PerformanceListener {
        void onPluginSlowdown(String pluginId, long executionTime);
        void onPluginMemoryOveruse(String pluginId, long memoryUsage);
        void onPluginErrorThreshold(String pluginId, int errorCount);
        void onPluginAutoDisabled(String pluginId, String reason);
    }
    
    public PluginPerformanceMonitor() {
        this.pluginMetrics = new ConcurrentHashMap<>();
        this.executionStartTimes = new ConcurrentHashMap<>();
        this.pluginStates = new ConcurrentHashMap<>();
        
        // Запуск фонового мониторинга
        startBackgroundMonitoring();
    }
    
    /**
     * Регистрация плагина для мониторинга
     */
    public void registerPlugin(String pluginId) {
        pluginMetrics.put(pluginId, new PluginMetrics());
        pluginStates.put(pluginId, true);
        Log.d(TAG, "Плагин зарегистрирован для мониторинга: " + pluginId);
    }
    
    /**
     * Отмена регистрации плагина
     */
    public void unregisterPlugin(String pluginId) {
        pluginMetrics.remove(pluginId);
        executionStartTimes.remove(pluginId);
        pluginStates.remove(pluginId);
        Log.d(TAG, "Плагин удален из мониторинга: " + pluginId);
    }
    
    /**
     * Начало выполнения операции плагина
     */
    public void startExecution(String pluginId, String operation) {
        if (!isPluginActive(pluginId)) {
            return;
        }
        
        long startTime = SystemClock.elapsedRealtime();
        executionStartTimes.put(pluginId + "_" + operation, startTime);
        
        PluginMetrics metrics = pluginMetrics.get(pluginId);
        if (metrics != null) {
            metrics.incrementOperationCount();
        }
    }
    
    /**
     * Завершение выполнения операции плагина
     */
    public void endExecution(String pluginId, String operation, boolean success) {
        if (!isPluginActive(pluginId)) {
            return;
        }
        
        String key = pluginId + "_" + operation;
        Long startTime = executionStartTimes.remove(key);
        
        if (startTime != null) {
            long executionTime = SystemClock.elapsedRealtime() - startTime;
            
            PluginMetrics metrics = pluginMetrics.get(pluginId);
            if (metrics != null) {
                metrics.addExecutionTime(executionTime);
                
                if (success) {
                    metrics.incrementSuccessCount();
                } else {
                    metrics.incrementErrorCount();
                    
                    // Проверка превышения лимита ошибок
                    if (metrics.getErrorCount() >= MAX_ERROR_COUNT) {
                        disablePlugin(pluginId, "Превышен лимит ошибок: " + metrics.getErrorCount());
                    }
                }
                
                // Проверка времени выполнения
                if (executionTime > MAX_EXECUTION_TIME_MS) {
                    if (performanceListener != null) {
                        performanceListener.onPluginSlowdown(pluginId, executionTime);
                    }
                    
                    metrics.incrementSlowOperationCount();
                    
                    // Автоматическое отключение при частых медленных операциях
                    if (metrics.getSlowOperationCount() > 3) {
                        disablePlugin(pluginId, "Частые медленные операции");
                    }
                }
            }
        }
    }
    
    /**
     * Запись использования памяти
     */
    public void recordMemoryUsage(String pluginId, long memoryUsageBytes) {
        if (!isPluginActive(pluginId)) {
            return;
        }
        
        PluginMetrics metrics = pluginMetrics.get(pluginId);
        if (metrics != null) {
            metrics.updateMemoryUsage(memoryUsageBytes);
            
            long memoryUsageMB = memoryUsageBytes / (1024 * 1024);
            
            // Проверка превышения лимита памяти
            if (memoryUsageMB > MAX_MEMORY_USAGE_MB) {
                if (performanceListener != null) {
                    performanceListener.onPluginMemoryOveruse(pluginId, memoryUsageMB);
                }
                
                disablePlugin(pluginId, "Превышен лимит памяти: " + memoryUsageMB + " МБ");
            }
        }
    }
    
    /**
     * Получение метрик плагина
     */
    public PluginMetrics getPluginMetrics(String pluginId) {
        return pluginMetrics.get(pluginId);
    }
    
    /**
     * Получение всех метрик
     */
    public Map<String, PluginMetrics> getAllMetrics() {
        return new HashMap<>(pluginMetrics);
    }
    
    /**
     * Сброс метрик плагина
     */
    public void resetPluginMetrics(String pluginId) {
        PluginMetrics metrics = pluginMetrics.get(pluginId);
        if (metrics != null) {
            metrics.reset();
            Log.d(TAG, "Метрики сброшены для плагина: " + pluginId);
        }
    }
    
    /**
     * Отключение проблемного плагина
     */
    private void disablePlugin(String pluginId, String reason) {
        pluginStates.put(pluginId, false);
        
        if (performanceListener != null) {
            performanceListener.onPluginAutoDisabled(pluginId, reason);
        }
        
        Log.w(TAG, "Плагин автоматически отключен: " + pluginId + ". Причина: " + reason);
    }
    
    /**
     * Включение плагина
     */
    public void enablePlugin(String pluginId) {
        pluginStates.put(pluginId, true);
        
        // Сброс метрик при повторном включении
        resetPluginMetrics(pluginId);
        
        Log.d(TAG, "Плагин включен: " + pluginId);
    }
    
    /**
     * Проверка активности плагина
     */
    public boolean isPluginActive(String pluginId) {
        return pluginStates.getOrDefault(pluginId, false);
    }
    
    /**
     * Установка слушателя событий производительности
     */
    public void setPerformanceListener(PerformanceListener listener) {
        this.performanceListener = listener;
    }
    
    /**
     * Запуск фонового мониторинга
     */
    private void startBackgroundMonitoring() {
        Thread monitoringThread = new Thread(() -> {
            while (true) {
                try {
                    Thread.sleep(MONITORING_INTERVAL_MS);
                    performPeriodicCheck();
                } catch (InterruptedException e) {
                    Log.d(TAG, "Мониторинг прерван");
                    break;
                } catch (Exception e) {
                    Log.e(TAG, "Ошибка в фоновом мониторинге", e);
                }
            }
        });
        
        monitoringThread.setDaemon(true);
        monitoringThread.start();
    }
    
    /**
     * Периодическая проверка состояния плагинов
     */
    private void performPeriodicCheck() {
        for (Map.Entry<String, PluginMetrics> entry : pluginMetrics.entrySet()) {
            String pluginId = entry.getKey();
            PluginMetrics metrics = entry.getValue();
            
            if (!isPluginActive(pluginId)) {
                continue;
            }
            
            // Проверка соотношения ошибок к успешным операциям
            long totalOperations = metrics.getSuccessCount() + metrics.getErrorCount();
            if (totalOperations > 10) {
                double errorRate = (double) metrics.getErrorCount() / totalOperations;
                if (errorRate > 0.5) { // Более 50% ошибок
                    disablePlugin(pluginId, "Высокий процент ошибок: " + (errorRate * 100) + "%");
                }
            }
            
            // Проверка среднего времени выполнения
            double avgExecutionTime = metrics.getAverageExecutionTime();
            if (avgExecutionTime > MAX_EXECUTION_TIME_MS / 2) {
                Log.w(TAG, "Плагин работает медленно: " + pluginId + 
                      ". Среднее время: " + avgExecutionTime + " мс");
            }
        }
    }
    
    /**
     * Класс для хранения метрик плагина
     */
    public static class PluginMetrics {
        private AtomicLong operationCount = new AtomicLong(0);
        private AtomicLong successCount = new AtomicLong(0);
        private AtomicLong errorCount = new AtomicLong(0);
        private AtomicLong totalExecutionTime = new AtomicLong(0);
        private AtomicLong maxExecutionTime = new AtomicLong(0);
        private AtomicLong currentMemoryUsage = new AtomicLong(0);
        private AtomicLong maxMemoryUsage = new AtomicLong(0);
        private AtomicLong slowOperationCount = new AtomicLong(0);
        
        public void incrementOperationCount() {
            operationCount.incrementAndGet();
        }
        
        public void incrementSuccessCount() {
            successCount.incrementAndGet();
        }
        
        public void incrementErrorCount() {
            errorCount.incrementAndGet();
        }
        
        public void incrementSlowOperationCount() {
            slowOperationCount.incrementAndGet();
        }
        
        public void addExecutionTime(long time) {
            totalExecutionTime.addAndGet(time);
            maxExecutionTime.updateAndGet(current -> Math.max(current, time));
        }
        
        public void updateMemoryUsage(long usage) {
            currentMemoryUsage.set(usage);
            maxMemoryUsage.updateAndGet(current -> Math.max(current, usage));
        }
        
        public long getOperationCount() {
            return operationCount.get();
        }
        
        public long getSuccessCount() {
            return successCount.get();
        }
        
        public long getErrorCount() {
            return errorCount.get();
        }
        
        public long getSlowOperationCount() {
            return slowOperationCount.get();
        }
        
        public double getAverageExecutionTime() {
            long ops = operationCount.get();
            return ops > 0 ? (double) totalExecutionTime.get() / ops : 0;
        }
        
        public long getMaxExecutionTime() {
            return maxExecutionTime.get();
        }
        
        public long getCurrentMemoryUsage() {
            return currentMemoryUsage.get();
        }
        
        public long getMaxMemoryUsage() {
            return maxMemoryUsage.get();
        }
        
        public void reset() {
            operationCount.set(0);
            successCount.set(0);
            errorCount.set(0);
            totalExecutionTime.set(0);
            maxExecutionTime.set(0);
            currentMemoryUsage.set(0);
            maxMemoryUsage.set(0);
            slowOperationCount.set(0);
        }
    }
}


package com.example.mrcomic.plugins.core;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.Map;
import java.util.concurrent.CompletableFuture;

/**
 * Базовый интерфейс для всех плагинов в системе Mr.Comic
 * 
 * Этот интерфейс определяет основные методы жизненного цикла плагина
 * и предоставляет стандартизированный API для взаимодействия с системой.
 */
public interface Plugin {
    
    /**
     * Уникальный идентификатор плагина
     * Должен быть уникальным в рамках всей системы
     * 
     * @return строковый идентификатор плагина
     */
    @NonNull
    String getPluginId();
    
    /**
     * Человекочитаемое название плагина
     * 
     * @return название плагина
     */
    @NonNull
    String getPluginName();
    
    /**
     * Версия плагина в формате семантического версионирования
     * 
     * @return версия плагина (например, "1.2.3")
     */
    @NonNull
    String getPluginVersion();
    
    /**
     * Описание функциональности плагина
     * 
     * @return описание плагина
     */
    @NonNull
    String getPluginDescription();
    
    /**
     * Автор или организация, разработавшая плагин
     * 
     * @return автор плагина
     */
    @NonNull
    String getPluginAuthor();
    
    /**
     * Тип плагина (OCR, Translator, UI Extension, etc.)
     * 
     * @return тип плагина
     */
    @NonNull
    PluginType getPluginType();
    
    /**
     * Минимальная версия API, которую поддерживает плагин
     * 
     * @return минимальная версия API
     */
    int getMinApiVersion();
    
    /**
     * Максимальная версия API, которую поддерживает плагин
     * 
     * @return максимальная версия API
     */
    int getMaxApiVersion();
    
    /**
     * Список разрешений, которые требует плагин
     * 
     * @return массив строк с названиями разрешений
     */
    @NonNull
    String[] getRequiredPermissions();
    
    /**
     * Список зависимостей плагина
     * 
     * @return массив идентификаторов плагинов-зависимостей
     */
    @NonNull
    String[] getDependencies();
    
    /**
     * Инициализация плагина
     * Вызывается при загрузке плагина в систему
     * 
     * @param context контекст приложения
     * @param config конфигурация плагина
     * @return Future, который завершается при успешной инициализации
     */
    @NonNull
    CompletableFuture<Void> initialize(@NonNull Context context, @Nullable Map<String, Object> config);
    
    /**
     * Запуск плагина
     * Вызывается после успешной инициализации
     * 
     * @return Future, который завершается при успешном запуске
     */
    @NonNull
    CompletableFuture<Void> start();
    
    /**
     * Остановка плагина
     * Вызывается при деактивации плагина
     * 
     * @return Future, который завершается при успешной остановке
     */
    @NonNull
    CompletableFuture<Void> stop();
    
    /**
     * Освобождение ресурсов плагина
     * Вызывается при выгрузке плагина из системы
     * 
     * @return Future, который завершается при успешном освобождении ресурсов
     */
    @NonNull
    CompletableFuture<Void> destroy();
    
    /**
     * Проверка состояния плагина
     * 
     * @return текущее состояние плагина
     */
    @NonNull
    PluginState getState();
    
    /**
     * Получение конфигурации плагина
     * 
     * @return карта с настройками плагина
     */
    @Nullable
    Map<String, Object> getConfiguration();
    
    /**
     * Обновление конфигурации плагина
     * 
     * @param config новая конфигурация
     * @return Future, который завершается при успешном обновлении
     */
    @NonNull
    CompletableFuture<Void> updateConfiguration(@NonNull Map<String, Object> config);
    
    /**
     * Получение метрик производительности плагина
     * 
     * @return карта с метриками
     */
    @NonNull
    Map<String, Object> getMetrics();
    
    /**
     * Проверка совместимости с другим плагином
     * 
     * @param pluginId идентификатор другого плагина
     * @param pluginVersion версия другого плагина
     * @return true, если плагины совместимы
     */
    boolean isCompatibleWith(@NonNull String pluginId, @NonNull String pluginVersion);
    
    /**
     * Получение схемы конфигурации плагина
     * Используется для генерации UI настроек
     * 
     * @return JSON схема конфигурации
     */
    @Nullable
    String getConfigurationSchema();
    
    /**
     * Обработка события от системы
     * 
     * @param eventType тип события
     * @param eventData данные события
     * @return Future с результатом обработки
     */
    @NonNull
    CompletableFuture<Object> handleEvent(@NonNull String eventType, @Nullable Object eventData);
    
    /**
     * Получение информации о здоровье плагина
     * 
     * @return статус здоровья плагина
     */
    @NonNull
    PluginHealth getHealth();
}


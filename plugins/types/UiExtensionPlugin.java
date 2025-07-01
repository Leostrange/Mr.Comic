package com.mrcomic.plugins.types;

import android.view.View;
import android.content.Context;
import com.mrcomic.plugins.PluginInput;
import com.mrcomic.plugins.PluginResult;

/**
 * Интерфейс для плагинов расширения пользовательского интерфейса
 * Определяет методы для создания и управления UI-компонентами
 */
public interface UiExtensionPlugin {
    
    /**
     * Создать UI-компонент
     * 
     * @param context Контекст приложения
     * @param containerId Идентификатор контейнера для размещения компонента
     * @return View-компонент для добавления в UI
     */
    View createUiComponent(Context context, String containerId);
    
    /**
     * Получить список поддерживаемых контейнеров
     * 
     * @return Массив идентификаторов поддерживаемых контейнеров
     */
    String[] getSupportedContainers();
    
    /**
     * Проверить, поддерживается ли указанный контейнер
     * 
     * @param containerId Идентификатор контейнера
     * @return true, если контейнер поддерживается, иначе false
     */
    boolean isContainerSupported(String containerId);
    
    /**
     * Обработать событие UI
     * 
     * @param eventType Тип события
     * @param eventData Данные события в формате JSON
     * @return Результат обработки события
     */
    PluginResult handleUiEvent(String eventType, String eventData);
    
    /**
     * Получить список поддерживаемых типов событий
     * 
     * @return Массив поддерживаемых типов событий
     */
    String[] getSupportedEventTypes();
    
    /**
     * Обновить UI-компонент
     * 
     * @param component View-компонент для обновления
     * @param updateData Данные обновления в формате JSON
     */
    void updateUiComponent(View component, String updateData);
    
    /**
     * Получить приоритет отображения
     * Используется для определения порядка отображения компонентов
     * 
     * @return Приоритет отображения (чем выше, тем важнее)
     */
    int getDisplayPriority();
}

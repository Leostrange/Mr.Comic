package com.example.mrcomic.plugins.core;

/**
 * Перечисление состояний плагина в жизненном цикле
 */
public enum PluginState {
    
    /**
     * Плагин не загружен в систему
     */
    UNLOADED("unloaded", "Не загружен", "⚪"),
    
    /**
     * Плагин загружается в систему
     */
    LOADING("loading", "Загружается", "🔄"),
    
    /**
     * Плагин загружен, но не инициализирован
     */
    LOADED("loaded", "Загружен", "🔵"),
    
    /**
     * Плагин инициализируется
     */
    INITIALIZING("initializing", "Инициализируется", "🔄"),
    
    /**
     * Плагин инициализирован, но не запущен
     */
    INITIALIZED("initialized", "Инициализирован", "🟡"),
    
    /**
     * Плагин запускается
     */
    STARTING("starting", "Запускается", "🔄"),
    
    /**
     * Плагин активен и работает
     */
    RUNNING("running", "Работает", "🟢"),
    
    /**
     * Плагин приостановлен
     */
    PAUSED("paused", "Приостановлен", "🟠"),
    
    /**
     * Плагин останавливается
     */
    STOPPING("stopping", "Останавливается", "🔄"),
    
    /**
     * Плагин остановлен
     */
    STOPPED("stopped", "Остановлен", "🔴"),
    
    /**
     * Плагин выгружается из системы
     */
    UNLOADING("unloading", "Выгружается", "🔄"),
    
    /**
     * Плагин находится в состоянии ошибки
     */
    ERROR("error", "Ошибка", "❌"),
    
    /**
     * Плагин обновляется
     */
    UPDATING("updating", "Обновляется", "⬆️"),
    
    /**
     * Плагин в режиме отладки
     */
    DEBUG("debug", "Отладка", "🐛");
    
    private final String id;
    private final String displayName;
    private final String icon;
    
    PluginState(String id, String displayName, String icon) {
        this.id = id;
        this.displayName = displayName;
        this.icon = icon;
    }
    
    /**
     * Получить идентификатор состояния
     * 
     * @return строковый идентификатор
     */
    public String getId() {
        return id;
    }
    
    /**
     * Получить отображаемое название состояния
     * 
     * @return название для отображения пользователю
     */
    public String getDisplayName() {
        return displayName;
    }
    
    /**
     * Получить иконку состояния
     * 
     * @return эмодзи иконка
     */
    public String getIcon() {
        return icon;
    }
    
    /**
     * Проверить, является ли состояние переходным
     * 
     * @return true, если состояние переходное
     */
    public boolean isTransitional() {
        return this == LOADING || this == INITIALIZING || this == STARTING || 
               this == STOPPING || this == UNLOADING || this == UPDATING;
    }
    
    /**
     * Проверить, является ли состояние стабильным
     * 
     * @return true, если состояние стабильное
     */
    public boolean isStable() {
        return this == UNLOADED || this == LOADED || this == INITIALIZED || 
               this == RUNNING || this == PAUSED || this == STOPPED;
    }
    
    /**
     * Проверить, является ли состояние активным
     * 
     * @return true, если плагин активен
     */
    public boolean isActive() {
        return this == RUNNING || this == PAUSED || this == DEBUG;
    }
    
    /**
     * Проверить, является ли состояние ошибочным
     * 
     * @return true, если плагин в состоянии ошибки
     */
    public boolean isError() {
        return this == ERROR;
    }
    
    /**
     * Получить следующее возможное состояние
     * 
     * @return массив возможных следующих состояний
     */
    public PluginState[] getNextPossibleStates() {
        switch (this) {
            case UNLOADED:
                return new PluginState[]{LOADING};
            case LOADING:
                return new PluginState[]{LOADED, ERROR};
            case LOADED:
                return new PluginState[]{INITIALIZING, UNLOADING};
            case INITIALIZING:
                return new PluginState[]{INITIALIZED, ERROR};
            case INITIALIZED:
                return new PluginState[]{STARTING, STOPPING};
            case STARTING:
                return new PluginState[]{RUNNING, ERROR};
            case RUNNING:
                return new PluginState[]{PAUSED, STOPPING, UPDATING, DEBUG, ERROR};
            case PAUSED:
                return new PluginState[]{RUNNING, STOPPING};
            case STOPPING:
                return new PluginState[]{STOPPED, ERROR};
            case STOPPED:
                return new PluginState[]{STARTING, UNLOADING};
            case UNLOADING:
                return new PluginState[]{UNLOADED, ERROR};
            case ERROR:
                return new PluginState[]{STOPPING, UNLOADING};
            case UPDATING:
                return new PluginState[]{RUNNING, ERROR};
            case DEBUG:
                return new PluginState[]{RUNNING, PAUSED, STOPPING};
            default:
                return new PluginState[0];
        }
    }
}

/**
 * Перечисление состояний здоровья плагина
 */
enum PluginHealth {
    
    /**
     * Плагин работает нормально
     */
    HEALTHY("healthy", "Здоров", "💚"),
    
    /**
     * Плагин работает с предупреждениями
     */
    WARNING("warning", "Предупреждения", "💛"),
    
    /**
     * Плагин работает критично
     */
    CRITICAL("critical", "Критическое", "🧡"),
    
    /**
     * Плагин не работает
     */
    UNHEALTHY("unhealthy", "Не работает", "❤️"),
    
    /**
     * Состояние здоровья неизвестно
     */
    UNKNOWN("unknown", "Неизвестно", "🤍");
    
    private final String id;
    private final String displayName;
    private final String icon;
    
    PluginHealth(String id, String displayName, String icon) {
        this.id = id;
        this.displayName = displayName;
        this.icon = icon;
    }
    
    /**
     * Получить идентификатор состояния здоровья
     * 
     * @return строковый идентификатор
     */
    public String getId() {
        return id;
    }
    
    /**
     * Получить отображаемое название состояния здоровья
     * 
     * @return название для отображения пользователю
     */
    public String getDisplayName() {
        return displayName;
    }
    
    /**
     * Получить иконку состояния здоровья
     * 
     * @return эмодзи иконка
     */
    public String getIcon() {
        return icon;
    }
    
    /**
     * Получить числовую оценку здоровья (0-100)
     * 
     * @return оценка здоровья
     */
    public int getScore() {
        switch (this) {
            case HEALTHY: return 100;
            case WARNING: return 75;
            case CRITICAL: return 25;
            case UNHEALTHY: return 0;
            case UNKNOWN: return 50;
            default: return 0;
        }
    }
    
    /**
     * Проверить, требует ли состояние вмешательства
     * 
     * @return true, если требуется вмешательство
     */
    public boolean requiresAttention() {
        return this == CRITICAL || this == UNHEALTHY;
    }
    
    /**
     * Создать состояние здоровья на основе оценки
     * 
     * @param score оценка от 0 до 100
     * @return соответствующее состояние здоровья
     */
    public static PluginHealth fromScore(int score) {
        if (score >= 90) return HEALTHY;
        if (score >= 70) return WARNING;
        if (score >= 30) return CRITICAL;
        if (score >= 0) return UNHEALTHY;
        return UNKNOWN;
    }
}


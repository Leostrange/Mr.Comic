package com.example.mrcomic.annotations.types;

/**
 * Приоритеты аннотаций
 */
public enum AnnotationPriority {
    LOWEST(1, "Самый низкий", "#E8F5E8"),
    LOW(2, "Низкий", "#D4F4D4"),
    NORMAL(3, "Обычный", "#FFFFFF"),
    HIGH(4, "Высокий", "#FFF3CD"),
    HIGHEST(5, "Самый высокий", "#F8D7DA"),
    CRITICAL(6, "Критический", "#FF6B6B");
    
    private final int level;
    private final String displayName;
    private final String colorCode;
    
    AnnotationPriority(int level, String displayName, String colorCode) {
        this.level = level;
        this.displayName = displayName;
        this.colorCode = colorCode;
    }
    
    public int getLevel() {
        return level;
    }
    
    public String getDisplayName() {
        return displayName;
    }
    
    public String getColorCode() {
        return colorCode;
    }
    
    public static AnnotationPriority fromLevel(int level) {
        for (AnnotationPriority priority : values()) {
            if (priority.level == level) {
                return priority;
            }
        }
        return NORMAL;
    }
    
    public boolean isHighPriority() {
        return level >= HIGH.level;
    }
    
    public boolean isCritical() {
        return this == CRITICAL;
    }
}

/**
 * Статусы аннотаций
 */
enum AnnotationStatus {
    DRAFT("draft", "Черновик", "Аннотация в процессе создания"),
    ACTIVE("active", "Активная", "Активная аннотация"),
    COMPLETED("completed", "Завершена", "Завершенная аннотация"),
    ARCHIVED("archived", "Архивная", "Архивная аннотация"),
    DELETED("deleted", "Удалена", "Удаленная аннотация"),
    PENDING_REVIEW("pending", "На рассмотрении", "Ожидает рассмотрения"),
    APPROVED("approved", "Одобрена", "Одобренная аннотация"),
    REJECTED("rejected", "Отклонена", "Отклоненная аннотация"),
    LOCKED("locked", "Заблокирована", "Заблокированная для редактирования"),
    HIDDEN("hidden", "Скрыта", "Скрытая аннотация");
    
    private final String code;
    private final String displayName;
    private final String description;
    
    AnnotationStatus(String code, String displayName, String description) {
        this.code = code;
        this.displayName = displayName;
        this.description = description;
    }
    
    public String getCode() {
        return code;
    }
    
    public String getDisplayName() {
        return displayName;
    }
    
    public String getDescription() {
        return description;
    }
    
    public static AnnotationStatus fromCode(String code) {
        for (AnnotationStatus status : values()) {
            if (status.code.equals(code)) {
                return status;
            }
        }
        return ACTIVE;
    }
    
    public boolean isVisible() {
        return this != DELETED && this != HIDDEN && this != ARCHIVED;
    }
    
    public boolean isEditable() {
        return this != LOCKED && this != DELETED && this != ARCHIVED && this != APPROVED;
    }
    
    public boolean isActive() {
        return this == ACTIVE || this == COMPLETED;
    }
    
    public boolean needsReview() {
        return this == PENDING_REVIEW;
    }
}


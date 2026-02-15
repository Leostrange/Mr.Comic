package com.example.core.model

/**
 * Режимы чтения комиксов и манги
 */
enum class ReadingMode(
    val displayName: String,
    val description: String,
    val direction: ReadingDirection
) {
    /**
     * Режим комикса - слева направо
     */
    COMIC(
        displayName = "Комикс",
        description = "Чтение слева направо",
        direction = ReadingDirection.LEFT_TO_RIGHT
    ),
    
    /**
     * Режим манги - справа налево
     */
    MANGA(
        displayName = "Манга",
        description = "Чтение справа налево",
        direction = ReadingDirection.RIGHT_TO_LEFT
    ),
    
    /**
     * Режим вебтуна - вертикальная прокрутка
     */
    WEBTOON(
        displayName = "Вебтун",
        description = "Вертикальная прокрутка",
        direction = ReadingDirection.VERTICAL
    ),
    
    /**
     * Постраничный режим
     */
    PAGE_BY_PAGE(
        displayName = "Постранично",
        description = "Одна страница на экран",
        direction = ReadingDirection.PAGE_BY_PAGE
    )
}

/**
 * Направление чтения
 */
enum class ReadingDirection {
    LEFT_TO_RIGHT,    // Слева направо (комиксы)
    RIGHT_TO_LEFT,    // Справа налево (манга)
    VERTICAL,         // Вертикально (вебтуны)
    PAGE_BY_PAGE      // Постранично
}

/**
 * Настройки режима чтения
 */
data class ReadingModeSettings(
    val mode: ReadingMode,
    val autoDetect: Boolean = true,
    val rememberPerComic: Boolean = true
)

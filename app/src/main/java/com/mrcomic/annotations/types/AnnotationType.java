package com.example.mrcomic.annotations.types;

/**
 * Типы аннотаций в системе Mr.Comic
 */
public enum AnnotationType {
    // Текстовые аннотации
    TEXT_NOTE("text_note", "Текстовая заметка", "Обычная текстовая заметка с форматированием"),
    RICH_TEXT("rich_text", "Форматированный текст", "Текст с расширенным форматированием (HTML/Markdown)"),
    STICKY_NOTE("sticky_note", "Стикер", "Цветной стикер с коротким текстом"),
    
    // Визуальные аннотации
    HIGHLIGHT("highlight", "Выделение", "Выделение текста или области цветом"),
    UNDERLINE("underline", "Подчеркивание", "Подчеркивание текста или области"),
    STRIKETHROUGH("strikethrough", "Зачеркивание", "Зачеркивание текста"),
    RECTANGLE("rectangle", "Прямоугольник", "Прямоугольная область"),
    CIRCLE("circle", "Круг", "Круглая или овальная область"),
    ARROW("arrow", "Стрелка", "Стрелка указывающая на объект"),
    LINE("line", "Линия", "Произвольная линия"),
    
    // Рисунки и скетчи
    FREEHAND_DRAWING("freehand", "Рисунок от руки", "Произвольный рисунок"),
    SKETCH("sketch", "Скетч", "Быстрый набросок или схема"),
    DIAGRAM("diagram", "Диаграмма", "Структурированная диаграмма"),
    
    // Мультимедийные аннотации
    AUDIO_NOTE("audio", "Голосовая заметка", "Аудио запись с транскрипцией"),
    VIDEO_NOTE("video", "Видео заметка", "Короткая видео запись"),
    IMAGE_ATTACHMENT("image", "Изображение", "Прикрепленное изображение"),
    FILE_ATTACHMENT("file", "Файл", "Прикрепленный файл"),
    
    // Интерактивные элементы
    LINK("link", "Ссылка", "Ссылка на внешний ресурс или другую аннотацию"),
    BOOKMARK("bookmark", "Закладка", "Закладка для быстрого перехода"),
    REFERENCE("reference", "Ссылка", "Ссылка на другую страницу или комикс"),
    
    // Эмодзи и стикеры
    EMOJI("emoji", "Эмодзи", "Эмодзи реакция"),
    STICKER("sticker", "Стикер", "Графический стикер"),
    STAMP("stamp", "Печать", "Штамп или печать"),
    
    // Специальные типы
    OCR_GENERATED("ocr_generated", "Из OCR", "Автоматически созданная из OCR"),
    TRANSLATION("translation", "Перевод", "Перевод текста"),
    SUMMARY("summary", "Резюме", "Автоматическое резюме"),
    KEYWORD("keyword", "Ключевое слово", "Выделенное ключевое слово"),
    
    // Коллаборативные
    COMMENT("comment", "Комментарий", "Комментарий от другого пользователя"),
    SUGGESTION("suggestion", "Предложение", "Предложение изменения"),
    QUESTION("question", "Вопрос", "Вопрос к содержимому"),
    ANSWER("answer", "Ответ", "Ответ на вопрос"),
    
    // Системные
    SYSTEM_GENERATED("system", "Системная", "Автоматически созданная системой"),
    TEMPLATE("template", "Шаблон", "Шаблон для создания других аннотаций"),
    PLACEHOLDER("placeholder", "Заглушка", "Временная заглушка");
    
    private final String code;
    private final String displayName;
    private final String description;
    
    AnnotationType(String code, String displayName, String description) {
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
    
    public static AnnotationType fromCode(String code) {
        for (AnnotationType type : values()) {
            if (type.code.equals(code)) {
                return type;
            }
        }
        return TEXT_NOTE; // По умолчанию
    }
    
    public boolean isTextBased() {
        return this == TEXT_NOTE || this == RICH_TEXT || this == STICKY_NOTE || 
               this == COMMENT || this == QUESTION || this == ANSWER;
    }
    
    public boolean isVisual() {
        return this == HIGHLIGHT || this == UNDERLINE || this == STRIKETHROUGH ||
               this == RECTANGLE || this == CIRCLE || this == ARROW || this == LINE ||
               this == FREEHAND_DRAWING || this == SKETCH || this == DIAGRAM;
    }
    
    public boolean isMultimedia() {
        return this == AUDIO_NOTE || this == VIDEO_NOTE || this == IMAGE_ATTACHMENT || 
               this == FILE_ATTACHMENT;
    }
    
    public boolean isInteractive() {
        return this == LINK || this == BOOKMARK || this == REFERENCE;
    }
    
    public boolean isSystemGenerated() {
        return this == OCR_GENERATED || this == TRANSLATION || this == SUMMARY || 
               this == SYSTEM_GENERATED;
    }
    
    public boolean isCollaborative() {
        return this == COMMENT || this == SUGGESTION || this == QUESTION || this == ANSWER;
    }
    
    public boolean supportsFormatting() {
        return isTextBased() && this != STICKY_NOTE;
    }
    
    public boolean supportsMultimedia() {
        return isTextBased() || this == FILE_ATTACHMENT;
    }
    
    public boolean supportsLinks() {
        return isTextBased() || this == LINK || this == REFERENCE;
    }
}


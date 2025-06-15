package com.example.mrcomic.annotations.model;

import androidx.room.Entity;
import androidx.room.PrimaryKey;
import androidx.room.TypeConverters;
import com.example.mrcomic.annotations.types.AnnotationType;
import com.example.mrcomic.annotations.types.AnnotationPriority;
import com.example.mrcomic.annotations.types.AnnotationStatus;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Базовая модель аннотации
 * Поддерживает все типы аннотаций: текстовые, голосовые, рисунки, выделения, стикеры
 */
@Entity(tableName = "annotations")
@TypeConverters({AnnotationConverters.class})
public class Annotation {
    
    @PrimaryKey(autoGenerate = true)
    private long id;
    
    // Основные поля
    private String comicId;           // ID комикса
    private int pageNumber;           // Номер страницы
    private AnnotationType type;      // Тип аннотации
    private String title;             // Заголовок аннотации
    private String content;           // Основное содержимое
    private String formattedContent;  // Форматированное содержимое (HTML/Markdown)
    
    // Позиционирование
    private float x;                  // X координата
    private float y;                  // Y координата
    private float width;              // Ширина области
    private float height;             // Высота области
    private float rotation;           // Поворот в градусах
    
    // Визуальные свойства
    private String color;             // Цвет аннотации
    private String backgroundColor;   // Цвет фона
    private float opacity;            // Прозрачность (0.0-1.0)
    private String fontFamily;        // Семейство шрифта
    private float fontSize;           // Размер шрифта
    private boolean bold;             // Жирный шрифт
    private boolean italic;           // Курсив
    private boolean underline;        // Подчеркивание
    
    // Метаданные
    private Date createdAt;           // Дата создания
    private Date updatedAt;           // Дата обновления
    private String authorId;          // ID автора
    private String authorName;        // Имя автора
    private AnnotationPriority priority; // Приоритет
    private AnnotationStatus status;  // Статус
    
    // Теги и категории
    private List<String> tags;        // Теги
    private String category;          // Категория
    private List<String> keywords;    // Ключевые слова
    
    // Связи
    private List<Long> linkedAnnotationIds; // Связанные аннотации
    private String parentAnnotationId;      // Родительская аннотация
    private List<Long> childAnnotationIds;  // Дочерние аннотации
    
    // Мультимедиа
    private String audioPath;         // Путь к аудио файлу
    private String imagePath;         // Путь к изображению
    private String videoPath;         // Путь к видео
    private String attachmentPath;    // Путь к вложению
    private List<String> externalLinks; // Внешние ссылки
    
    // Геолокация и время
    private double latitude;          // Широта
    private double longitude;         // Долгота
    private String locationName;      // Название места
    private Date eventTimestamp;      // Временная метка события
    
    // Настройки отображения
    private boolean visible;          // Видимость
    private boolean locked;           // Заблокирована для редактирования
    private boolean pinned;           // Закреплена
    private int zIndex;               // Z-индекс для наслоения
    
    // Дополнительные данные
    private Map<String, Object> customProperties; // Пользовательские свойства
    private String notes;             // Дополнительные заметки
    private int version;              // Версия аннотации
    
    // Конструкторы
    public Annotation() {
        this.createdAt = new Date();
        this.updatedAt = new Date();
        this.visible = true;
        this.locked = false;
        this.pinned = false;
        this.opacity = 1.0f;
        this.priority = AnnotationPriority.NORMAL;
        this.status = AnnotationStatus.ACTIVE;
        this.version = 1;
    }
    
    public Annotation(String comicId, int pageNumber, AnnotationType type) {
        this();
        this.comicId = comicId;
        this.pageNumber = pageNumber;
        this.type = type;
    }
    
    // Геттеры и сеттеры
    public long getId() { return id; }
    public void setId(long id) { this.id = id; }
    
    public String getComicId() { return comicId; }
    public void setComicId(String comicId) { this.comicId = comicId; }
    
    public int getPageNumber() { return pageNumber; }
    public void setPageNumber(int pageNumber) { this.pageNumber = pageNumber; }
    
    public AnnotationType getType() { return type; }
    public void setType(AnnotationType type) { this.type = type; }
    
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    
    public String getContent() { return content; }
    public void setContent(String content) { 
        this.content = content;
        this.updatedAt = new Date();
        this.version++;
    }
    
    public String getFormattedContent() { return formattedContent; }
    public void setFormattedContent(String formattedContent) { this.formattedContent = formattedContent; }
    
    public float getX() { return x; }
    public void setX(float x) { this.x = x; }
    
    public float getY() { return y; }
    public void setY(float y) { this.y = y; }
    
    public float getWidth() { return width; }
    public void setWidth(float width) { this.width = width; }
    
    public float getHeight() { return height; }
    public void setHeight(float height) { this.height = height; }
    
    public float getRotation() { return rotation; }
    public void setRotation(float rotation) { this.rotation = rotation; }
    
    public String getColor() { return color; }
    public void setColor(String color) { this.color = color; }
    
    public String getBackgroundColor() { return backgroundColor; }
    public void setBackgroundColor(String backgroundColor) { this.backgroundColor = backgroundColor; }
    
    public float getOpacity() { return opacity; }
    public void setOpacity(float opacity) { this.opacity = opacity; }
    
    public String getFontFamily() { return fontFamily; }
    public void setFontFamily(String fontFamily) { this.fontFamily = fontFamily; }
    
    public float getFontSize() { return fontSize; }
    public void setFontSize(float fontSize) { this.fontSize = fontSize; }
    
    public boolean isBold() { return bold; }
    public void setBold(boolean bold) { this.bold = bold; }
    
    public boolean isItalic() { return italic; }
    public void setItalic(boolean italic) { this.italic = italic; }
    
    public boolean isUnderline() { return underline; }
    public void setUnderline(boolean underline) { this.underline = underline; }
    
    public Date getCreatedAt() { return createdAt; }
    public void setCreatedAt(Date createdAt) { this.createdAt = createdAt; }
    
    public Date getUpdatedAt() { return updatedAt; }
    public void setUpdatedAt(Date updatedAt) { this.updatedAt = updatedAt; }
    
    public String getAuthorId() { return authorId; }
    public void setAuthorId(String authorId) { this.authorId = authorId; }
    
    public String getAuthorName() { return authorName; }
    public void setAuthorName(String authorName) { this.authorName = authorName; }
    
    public AnnotationPriority getPriority() { return priority; }
    public void setPriority(AnnotationPriority priority) { this.priority = priority; }
    
    public AnnotationStatus getStatus() { return status; }
    public void setStatus(AnnotationStatus status) { this.status = status; }
    
    public List<String> getTags() { return tags; }
    public void setTags(List<String> tags) { this.tags = tags; }
    
    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }
    
    public List<String> getKeywords() { return keywords; }
    public void setKeywords(List<String> keywords) { this.keywords = keywords; }
    
    public List<Long> getLinkedAnnotationIds() { return linkedAnnotationIds; }
    public void setLinkedAnnotationIds(List<Long> linkedAnnotationIds) { this.linkedAnnotationIds = linkedAnnotationIds; }
    
    public String getParentAnnotationId() { return parentAnnotationId; }
    public void setParentAnnotationId(String parentAnnotationId) { this.parentAnnotationId = parentAnnotationId; }
    
    public List<Long> getChildAnnotationIds() { return childAnnotationIds; }
    public void setChildAnnotationIds(List<Long> childAnnotationIds) { this.childAnnotationIds = childAnnotationIds; }
    
    public String getAudioPath() { return audioPath; }
    public void setAudioPath(String audioPath) { this.audioPath = audioPath; }
    
    public String getImagePath() { return imagePath; }
    public void setImagePath(String imagePath) { this.imagePath = imagePath; }
    
    public String getVideoPath() { return videoPath; }
    public void setVideoPath(String videoPath) { this.videoPath = videoPath; }
    
    public String getAttachmentPath() { return attachmentPath; }
    public void setAttachmentPath(String attachmentPath) { this.attachmentPath = attachmentPath; }
    
    public List<String> getExternalLinks() { return externalLinks; }
    public void setExternalLinks(List<String> externalLinks) { this.externalLinks = externalLinks; }
    
    public double getLatitude() { return latitude; }
    public void setLatitude(double latitude) { this.latitude = latitude; }
    
    public double getLongitude() { return longitude; }
    public void setLongitude(double longitude) { this.longitude = longitude; }
    
    public String getLocationName() { return locationName; }
    public void setLocationName(String locationName) { this.locationName = locationName; }
    
    public Date getEventTimestamp() { return eventTimestamp; }
    public void setEventTimestamp(Date eventTimestamp) { this.eventTimestamp = eventTimestamp; }
    
    public boolean isVisible() { return visible; }
    public void setVisible(boolean visible) { this.visible = visible; }
    
    public boolean isLocked() { return locked; }
    public void setLocked(boolean locked) { this.locked = locked; }
    
    public boolean isPinned() { return pinned; }
    public void setPinned(boolean pinned) { this.pinned = pinned; }
    
    public int getZIndex() { return zIndex; }
    public void setZIndex(int zIndex) { this.zIndex = zIndex; }
    
    public Map<String, Object> getCustomProperties() { return customProperties; }
    public void setCustomProperties(Map<String, Object> customProperties) { this.customProperties = customProperties; }
    
    public String getNotes() { return notes; }
    public void setNotes(String notes) { this.notes = notes; }
    
    public int getVersion() { return version; }
    public void setVersion(int version) { this.version = version; }
    
    // Утилитарные методы
    public void addTag(String tag) {
        if (tags == null) {
            tags = new java.util.ArrayList<>();
        }
        if (!tags.contains(tag)) {
            tags.add(tag);
        }
    }
    
    public void removeTag(String tag) {
        if (tags != null) {
            tags.remove(tag);
        }
    }
    
    public void addLinkedAnnotation(long annotationId) {
        if (linkedAnnotationIds == null) {
            linkedAnnotationIds = new java.util.ArrayList<>();
        }
        if (!linkedAnnotationIds.contains(annotationId)) {
            linkedAnnotationIds.add(annotationId);
        }
    }
    
    public void removeLinkedAnnotation(long annotationId) {
        if (linkedAnnotationIds != null) {
            linkedAnnotationIds.remove(Long.valueOf(annotationId));
        }
    }
    
    public boolean hasMultimedia() {
        return audioPath != null || imagePath != null || videoPath != null || attachmentPath != null;
    }
    
    public boolean hasLocation() {
        return latitude != 0.0 && longitude != 0.0;
    }
    
    public void updateTimestamp() {
        this.updatedAt = new Date();
        this.version++;
    }
}


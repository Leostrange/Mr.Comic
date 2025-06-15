package com.example.mrcomic.annotations.service;

import android.content.Context;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.example.mrcomic.annotations.model.Annotation;
import com.example.mrcomic.annotations.repository.AnnotationRepository;
import com.example.mrcomic.annotations.types.AnnotationType;
import com.example.mrcomic.annotations.types.AnnotationPriority;
import com.example.mrcomic.annotations.types.AnnotationStatus;
import java.util.Date;
import java.util.List;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Сервис для управления аннотациями
 * Содержит бизнес-логику и высокоуровневые операции
 */
public class AnnotationService {
    
    private final AnnotationRepository repository;
    private final ExecutorService executorService;
    private final MutableLiveData<String> statusLiveData;
    private final Context context;
    
    // Singleton instance
    private static volatile AnnotationService INSTANCE;
    
    private AnnotationService(Context context) {
        this.context = context.getApplicationContext();
        this.repository = AnnotationRepository.getInstance(context);
        this.executorService = Executors.newFixedThreadPool(2);
        this.statusLiveData = new MutableLiveData<>();
    }
    
    public static AnnotationService getInstance(Context context) {
        if (INSTANCE == null) {
            synchronized (AnnotationService.class) {
                if (INSTANCE == null) {
                    INSTANCE = new AnnotationService(context);
                }
            }
        }
        return INSTANCE;
    }
    
    // Создание аннотаций
    
    /**
     * Создает текстовую аннотацию
     */
    public void createTextAnnotation(String comicId, int pageNumber, float x, float y, 
                                   String title, String content, String authorId, 
                                   ServiceCallback<Long> callback) {
        
        Annotation annotation = new Annotation(comicId, pageNumber, AnnotationType.TEXT_NOTE);
        annotation.setTitle(title);
        annotation.setContent(content);
        annotation.setX(x);
        annotation.setY(y);
        annotation.setAuthorId(authorId);
        annotation.setColor("#000000");
        annotation.setBackgroundColor("#FFFF99");
        
        repository.createAnnotation(annotation, new AnnotationRepository.RepositoryCallback<Long>() {
            @Override
            public void onSuccess(Long result) {
                if (callback != null) callback.onSuccess(result);
            }
            
            @Override
            public void onError(String message, Exception e) {
                if (callback != null) callback.onError(message, e);
            }
        });
    }
    
    /**
     * Создает голосовую аннотацию
     */
    public void createAudioAnnotation(String comicId, int pageNumber, float x, float y,
                                    String audioPath, String transcription, String authorId,
                                    ServiceCallback<Long> callback) {
        
        Annotation annotation = new Annotation(comicId, pageNumber, AnnotationType.AUDIO_NOTE);
        annotation.setX(x);
        annotation.setY(y);
        annotation.setAudioPath(audioPath);
        annotation.setContent(transcription);
        annotation.setTitle("Голосовая заметка");
        annotation.setAuthorId(authorId);
        annotation.setColor("#0066CC");
        annotation.setBackgroundColor("#E6F3FF");
        
        repository.createAnnotation(annotation, new AnnotationRepository.RepositoryCallback<Long>() {
            @Override
            public void onSuccess(Long result) {
                if (callback != null) callback.onSuccess(result);
            }
            
            @Override
            public void onError(String message, Exception e) {
                if (callback != null) callback.onError(message, e);
            }
        });
    }
    
    /**
     * Создает выделение
     */
    public void createHighlight(String comicId, int pageNumber, float x, float y, 
                              float width, float height, String color, String authorId,
                              ServiceCallback<Long> callback) {
        
        Annotation annotation = new Annotation(comicId, pageNumber, AnnotationType.HIGHLIGHT);
        annotation.setX(x);
        annotation.setY(y);
        annotation.setWidth(width);
        annotation.setHeight(height);
        annotation.setColor(color);
        annotation.setOpacity(0.3f);
        annotation.setAuthorId(authorId);
        annotation.setTitle("Выделение");
        
        repository.createAnnotation(annotation, new AnnotationRepository.RepositoryCallback<Long>() {
            @Override
            public void onSuccess(Long result) {
                if (callback != null) callback.onSuccess(result);
            }
            
            @Override
            public void onError(String message, Exception e) {
                if (callback != null) callback.onError(message, e);
            }
        });
    }
    
    /**
     * Создает рисунок от руки
     */
    public void createDrawing(String comicId, int pageNumber, String drawingData, 
                            float x, float y, float width, float height, String authorId,
                            ServiceCallback<Long> callback) {
        
        Annotation annotation = new Annotation(comicId, pageNumber, AnnotationType.FREEHAND_DRAWING);
        annotation.setX(x);
        annotation.setY(y);
        annotation.setWidth(width);
        annotation.setHeight(height);
        annotation.setContent(drawingData); // SVG или другой формат
        annotation.setAuthorId(authorId);
        annotation.setTitle("Рисунок");
        annotation.setColor("#FF0000");
        
        repository.createAnnotation(annotation, new AnnotationRepository.RepositoryCallback<Long>() {
            @Override
            public void onSuccess(Long result) {
                if (callback != null) callback.onSuccess(result);
            }
            
            @Override
            public void onError(String message, Exception e) {
                if (callback != null) callback.onError(message, e);
            }
        });
    }
    
    /**
     * Создает стикер с эмодзи
     */
    public void createEmojiSticker(String comicId, int pageNumber, float x, float y,
                                 String emoji, String authorId, ServiceCallback<Long> callback) {
        
        Annotation annotation = new Annotation(comicId, pageNumber, AnnotationType.EMOJI);
        annotation.setX(x);
        annotation.setY(y);
        annotation.setContent(emoji);
        annotation.setAuthorId(authorId);
        annotation.setTitle("Эмодзи");
        annotation.setFontSize(24f);
        
        repository.createAnnotation(annotation, new AnnotationRepository.RepositoryCallback<Long>() {
            @Override
            public void onSuccess(Long result) {
                if (callback != null) callback.onSuccess(result);
            }
            
            @Override
            public void onError(String message, Exception e) {
                if (callback != null) callback.onError(message, e);
            }
        });
    }
    
    // Операции с аннотациями
    
    /**
     * Обновляет содержимое аннотации
     */
    public void updateAnnotationContent(long annotationId, String newContent, ServiceCallback<Void> callback) {
        executorService.execute(() -> {
            repository.getAnnotationById(annotationId).observeForever(annotation -> {
                if (annotation != null) {
                    annotation.setContent(newContent);
                    repository.updateAnnotation(annotation, new AnnotationRepository.RepositoryCallback<Void>() {
                        @Override
                        public void onSuccess(Void result) {
                            if (callback != null) callback.onSuccess(result);
                        }
                        
                        @Override
                        public void onError(String message, Exception e) {
                            if (callback != null) callback.onError(message, e);
                        }
                    });
                }
            });
        });
    }
    
    /**
     * Изменяет приоритет аннотации
     */
    public void changeAnnotationPriority(long annotationId, AnnotationPriority newPriority, ServiceCallback<Void> callback) {
        List<Long> ids = new ArrayList<>();
        ids.add(annotationId);
        
        repository.updateAnnotationPriority(ids, newPriority, new AnnotationRepository.RepositoryCallback<Void>() {
            @Override
            public void onSuccess(Void result) {
                if (callback != null) callback.onSuccess(result);
            }
            
            @Override
            public void onError(String message, Exception e) {
                if (callback != null) callback.onError(message, e);
            }
        });
    }
    
    /**
     * Архивирует аннотацию
     */
    public void archiveAnnotation(long annotationId, ServiceCallback<Void> callback) {
        List<Long> ids = new ArrayList<>();
        ids.add(annotationId);
        
        repository.updateAnnotationStatus(ids, AnnotationStatus.ARCHIVED, new AnnotationRepository.RepositoryCallback<Void>() {
            @Override
            public void onSuccess(Void result) {
                if (callback != null) callback.onSuccess(result);
            }
            
            @Override
            public void onError(String message, Exception e) {
                if (callback != null) callback.onError(message, e);
            }
        });
    }
    
    /**
     * Дублирует аннотацию
     */
    public void duplicateAnnotation(long annotationId, ServiceCallback<Long> callback) {
        executorService.execute(() -> {
            repository.getAnnotationById(annotationId).observeForever(originalAnnotation -> {
                if (originalAnnotation != null) {
                    Annotation duplicate = createDuplicate(originalAnnotation);
                    repository.createAnnotation(duplicate, new AnnotationRepository.RepositoryCallback<Long>() {
                        @Override
                        public void onSuccess(Long result) {
                            if (callback != null) callback.onSuccess(result);
                        }
                        
                        @Override
                        public void onError(String message, Exception e) {
                            if (callback != null) callback.onError(message, e);
                        }
                    });
                }
            });
        });
    }
    
    // Массовые операции
    
    /**
     * Создает несколько аннотаций одновременно
     */
    public void createBatchAnnotations(List<Annotation> annotations, ServiceCallback<List<Long>> callback) {
        repository.createMultipleAnnotations(annotations, new AnnotationRepository.RepositoryCallback<List<Long>>() {
            @Override
            public void onSuccess(List<Long> result) {
                if (callback != null) callback.onSuccess(result);
            }
            
            @Override
            public void onError(String message, Exception e) {
                if (callback != null) callback.onError(message, e);
            }
        });
    }
    
    /**
     * Удаляет все аннотации на странице
     */
    public void deleteAllAnnotationsOnPage(String comicId, int pageNumber, ServiceCallback<Void> callback) {
        executorService.execute(() -> {
            repository.getAnnotationsByPage(comicId, pageNumber).observeForever(annotations -> {
                if (annotations != null && !annotations.isEmpty()) {
                    List<Long> ids = new ArrayList<>();
                    for (Annotation annotation : annotations) {
                        ids.add(annotation.getId());
                    }
                    
                    repository.deleteMultipleAnnotations(ids, new AnnotationRepository.RepositoryCallback<Void>() {
                        @Override
                        public void onSuccess(Void result) {
                            if (callback != null) callback.onSuccess(result);
                        }
                        
                        @Override
                        public void onError(String message, Exception e) {
                            if (callback != null) callback.onError(message, e);
                        }
                    });
                } else {
                    if (callback != null) callback.onSuccess(null);
                }
            });
        });
    }
    
    // Поиск и фильтрация
    
    /**
     * Умный поиск аннотаций
     */
    public LiveData<List<Annotation>> smartSearch(String query, String comicId, AnnotationType type, 
                                                 AnnotationStatus status, String authorId) {
        // Реализация умного поиска с учетом всех параметров
        if (comicId != null && !comicId.isEmpty()) {
            return repository.searchAnnotationsInComic(comicId, query);
        } else {
            return repository.searchAnnotations(query);
        }
    }
    
    /**
     * Получает аннотации по тегу
     */
    public LiveData<List<Annotation>> getAnnotationsByTag(String tag) {
        return repository.getAnnotationsByTag(tag);
    }
    
    /**
     * Получает популярные теги
     */
    public void getPopularTags(int limit, ServiceCallback<List<String>> callback) {
        // Реализация получения популярных тегов
        executorService.execute(() -> {
            // Здесь должна быть логика анализа тегов
            List<String> popularTags = new ArrayList<>();
            popularTags.add("важное");
            popularTags.add("вопрос");
            popularTags.add("идея");
            popularTags.add("заметка");
            popularTags.add("перевод");
            
            if (callback != null) {
                callback.onSuccess(popularTags);
            }
        });
    }
    
    // Статистика и аналитика
    
    /**
     * Получает статистику аннотаций пользователя
     */
    public void getUserAnnotationStats(String authorId, ServiceCallback<AnnotationStats> callback) {
        executorService.execute(() -> {
            // Здесь должна быть логика сбора статистики
            AnnotationStats stats = new AnnotationStats();
            stats.totalAnnotations = 0;
            stats.textAnnotations = 0;
            stats.audioAnnotations = 0;
            stats.drawingAnnotations = 0;
            stats.highlightAnnotations = 0;
            
            if (callback != null) {
                callback.onSuccess(stats);
            }
        });
    }
    
    // Утилитарные методы
    
    private Annotation createDuplicate(Annotation original) {
        Annotation duplicate = new Annotation();
        duplicate.setComicId(original.getComicId());
        duplicate.setPageNumber(original.getPageNumber());
        duplicate.setType(original.getType());
        duplicate.setTitle(original.getTitle() + " (копия)");
        duplicate.setContent(original.getContent());
        duplicate.setFormattedContent(original.getFormattedContent());
        duplicate.setX(original.getX() + 10); // Смещаем немного
        duplicate.setY(original.getY() + 10);
        duplicate.setWidth(original.getWidth());
        duplicate.setHeight(original.getHeight());
        duplicate.setColor(original.getColor());
        duplicate.setBackgroundColor(original.getBackgroundColor());
        duplicate.setAuthorId(original.getAuthorId());
        duplicate.setPriority(original.getPriority());
        duplicate.setCategory(original.getCategory());
        
        return duplicate;
    }
    
    // Получение данных
    
    public LiveData<List<Annotation>> getAnnotationsByPage(String comicId, int pageNumber) {
        return repository.getVisibleAnnotationsByPage(comicId, pageNumber);
    }
    
    public LiveData<List<Annotation>> getAnnotationsByComic(String comicId) {
        return repository.getAnnotationsByComicId(comicId);
    }
    
    public LiveData<List<Annotation>> getRecentAnnotations(int limit) {
        return repository.getRecentAnnotations(limit);
    }
    
    public LiveData<String> getStatusLiveData() {
        return statusLiveData;
    }
    
    // Интерфейсы
    
    public interface ServiceCallback<T> {
        void onSuccess(T result);
        void onError(String message, Exception e);
    }
    
    public static class AnnotationStats {
        public int totalAnnotations;
        public int textAnnotations;
        public int audioAnnotations;
        public int drawingAnnotations;
        public int highlightAnnotations;
        public int emojiAnnotations;
        public Date lastAnnotationDate;
        public String mostUsedCategory;
        public List<String> mostUsedTags;
    }
    
    // Очистка ресурсов
    public void cleanup() {
        if (executorService != null && !executorService.isShutdown()) {
            executorService.shutdown();
        }
        repository.cleanup();
    }
}


package com.example.mrcomic.annotations.service;

import android.content.Context;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.example.mrcomic.annotations.model.Annotation;
import com.example.mrcomic.annotations.types.AnnotationType;
import java.util.*;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.text.SimpleDateFormat;

/**
 * Сервис для автоматического резюмирования и создания временной шкалы
 */
public class AnnotationSummaryService {
    
    private final AnnotationService annotationService;
    private final IntelligentAnnotationService intelligentService;
    private final ExecutorService executorService;
    private final MutableLiveData<String> summaryStatusLiveData;
    private final Context context;
    
    private static volatile AnnotationSummaryService INSTANCE;
    
    private AnnotationSummaryService(Context context) {
        this.context = context.getApplicationContext();
        this.annotationService = AnnotationService.getInstance(context);
        this.intelligentService = IntelligentAnnotationService.getInstance(context);
        this.executorService = Executors.newFixedThreadPool(2);
        this.summaryStatusLiveData = new MutableLiveData<>();
    }
    
    public static AnnotationSummaryService getInstance(Context context) {
        if (INSTANCE == null) {
            synchronized (AnnotationSummaryService.class) {
                if (INSTANCE == null) {
                    INSTANCE = new AnnotationSummaryService(context);
                }
            }
        }
        return INSTANCE;
    }
    
    // Автоматическое резюмирование
    
    /**
     * Создает резюме аннотаций для комикса
     */
    public void createComicSummary(String comicId, ServiceCallback<ComicSummary> callback) {
        executorService.execute(() -> {
            try {
                summaryStatusLiveData.postValue("Создание резюме комикса...");
                
                annotationService.getAnnotationsByComic(comicId).observeForever(annotations -> {
                    ComicSummary summary = generateComicSummary(comicId, annotations);
                    
                    summaryStatusLiveData.postValue("Резюме создано: " + summary.totalAnnotations + " аннотаций");
                    if (callback != null) callback.onSuccess(summary);
                });
                
            } catch (Exception e) {
                summaryStatusLiveData.postValue("Ошибка создания резюме: " + e.getMessage());
                if (callback != null) callback.onError("Ошибка создания резюме", e);
            }
        });
    }
    
    /**
     * Создает резюме аннотаций для страницы
     */
    public void createPageSummary(String comicId, int pageNumber, ServiceCallback<PageSummary> callback) {
        executorService.execute(() -> {
            try {
                summaryStatusLiveData.postValue("Создание резюме страницы...");
                
                annotationService.getAnnotationsByPage(comicId, pageNumber).observeForever(annotations -> {
                    PageSummary summary = generatePageSummary(comicId, pageNumber, annotations);
                    
                    summaryStatusLiveData.postValue("Резюме страницы создано");
                    if (callback != null) callback.onSuccess(summary);
                });
                
            } catch (Exception e) {
                summaryStatusLiveData.postValue("Ошибка создания резюме страницы: " + e.getMessage());
                if (callback != null) callback.onError("Ошибка создания резюме страницы", e);
            }
        });
    }
    
    private ComicSummary generateComicSummary(String comicId, List<Annotation> annotations) {
        ComicSummary summary = new ComicSummary();
        summary.comicId = comicId;
        summary.totalAnnotations = annotations.size();
        summary.createdAt = new Date();
        
        // Статистика по типам
        Map<AnnotationType, Integer> typeStats = new HashMap<>();
        Map<String, Integer> categoryStats = new HashMap<>();
        Map<String, Integer> authorStats = new HashMap<>();
        Set<Integer> pagesWithAnnotations = new HashSet<>();
        
        List<String> keyPoints = new ArrayList<>();
        List<String> questions = new ArrayList<>();
        List<String> ideas = new ArrayList<>();
        
        for (Annotation annotation : annotations) {
            // Статистика по типам
            typeStats.put(annotation.getType(), typeStats.getOrDefault(annotation.getType(), 0) + 1);
            
            // Статистика по категориям
            if (annotation.getCategory() != null) {
                categoryStats.put(annotation.getCategory(), categoryStats.getOrDefault(annotation.getCategory(), 0) + 1);
            }
            
            // Статистика по авторам
            if (annotation.getAuthorId() != null) {
                authorStats.put(annotation.getAuthorId(), authorStats.getOrDefault(annotation.getAuthorId(), 0) + 1);
            }
            
            // Страницы с аннотациями
            pagesWithAnnotations.add(annotation.getPageNumber());
            
            // Извлечение ключевых моментов
            String content = annotation.getContent();
            if (content != null && content.length() > 20) {
                if (isKeyPoint(annotation)) {
                    keyPoints.add(content);
                } else if (content.contains("?") || content.toLowerCase().contains("вопрос")) {
                    questions.add(content);
                } else if (content.toLowerCase().contains("идея") || content.toLowerCase().contains("мысль")) {
                    ideas.add(content);
                }
            }
        }
        
        summary.typeStatistics = typeStats;
        summary.categoryStatistics = categoryStats;
        summary.authorStatistics = authorStats;
        summary.pagesWithAnnotations = pagesWithAnnotations.size();
        summary.keyPoints = keyPoints.subList(0, Math.min(10, keyPoints.size()));
        summary.questions = questions.subList(0, Math.min(5, questions.size()));
        summary.ideas = ideas.subList(0, Math.min(5, ideas.size()));
        
        // Генерация текстового резюме
        summary.textSummary = generateTextSummary(summary);
        
        return summary;
    }
    
    private PageSummary generatePageSummary(String comicId, int pageNumber, List<Annotation> annotations) {
        PageSummary summary = new PageSummary();
        summary.comicId = comicId;
        summary.pageNumber = pageNumber;
        summary.totalAnnotations = annotations.size();
        summary.createdAt = new Date();
        
        List<String> highlights = new ArrayList<>();
        List<String> notes = new ArrayList<>();
        List<String> questions = new ArrayList<>();
        
        for (Annotation annotation : annotations) {
            String content = annotation.getContent();
            if (content != null && content.length() > 5) {
                switch (annotation.getType()) {
                    case HIGHLIGHT:
                    case UNDERLINE:
                        highlights.add(content);
                        break;
                    case TEXT_NOTE:
                    case RICH_TEXT:
                        notes.add(content);
                        break;
                    case QUESTION:
                        questions.add(content);
                        break;
                    default:
                        if (content.contains("?")) {
                            questions.add(content);
                        } else {
                            notes.add(content);
                        }
                        break;
                }
            }
        }
        
        summary.highlights = highlights;
        summary.notes = notes;
        summary.questions = questions;
        summary.textSummary = generatePageTextSummary(summary);
        
        return summary;
    }
    
    private boolean isKeyPoint(Annotation annotation) {
        if (annotation.getPriority().isHighPriority()) {
            return true;
        }
        
        String content = annotation.getContent().toLowerCase();
        return content.contains("важно") || 
               content.contains("ключевой") || 
               content.contains("главный") ||
               content.contains("основной") ||
               content.contains("критично");
    }
    
    private String generateTextSummary(ComicSummary summary) {
        StringBuilder sb = new StringBuilder();
        
        sb.append("Резюме комикса\n");
        sb.append("================\n\n");
        
        sb.append("Общая статистика:\n");
        sb.append("• Всего аннотаций: ").append(summary.totalAnnotations).append("\n");
        sb.append("• Страниц с аннотациями: ").append(summary.pagesWithAnnotations).append("\n");
        
        if (!summary.typeStatistics.isEmpty()) {
            sb.append("\nТипы аннотаций:\n");
            for (Map.Entry<AnnotationType, Integer> entry : summary.typeStatistics.entrySet()) {
                sb.append("• ").append(entry.getKey().getDisplayName()).append(": ").append(entry.getValue()).append("\n");
            }
        }
        
        if (!summary.categoryStatistics.isEmpty()) {
            sb.append("\nКатегории:\n");
            for (Map.Entry<String, Integer> entry : summary.categoryStatistics.entrySet()) {
                sb.append("• ").append(entry.getKey()).append(": ").append(entry.getValue()).append("\n");
            }
        }
        
        if (!summary.keyPoints.isEmpty()) {
            sb.append("\nКлючевые моменты:\n");
            for (int i = 0; i < Math.min(5, summary.keyPoints.size()); i++) {
                sb.append("• ").append(truncateText(summary.keyPoints.get(i), 100)).append("\n");
            }
        }
        
        if (!summary.questions.isEmpty()) {
            sb.append("\nВопросы:\n");
            for (int i = 0; i < Math.min(3, summary.questions.size()); i++) {
                sb.append("• ").append(truncateText(summary.questions.get(i), 100)).append("\n");
            }
        }
        
        return sb.toString();
    }
    
    private String generatePageTextSummary(PageSummary summary) {
        StringBuilder sb = new StringBuilder();
        
        sb.append("Резюме страницы ").append(summary.pageNumber).append("\n");
        sb.append("========================\n\n");
        
        sb.append("Аннотаций на странице: ").append(summary.totalAnnotations).append("\n\n");
        
        if (!summary.highlights.isEmpty()) {
            sb.append("Выделения:\n");
            for (String highlight : summary.highlights) {
                sb.append("• ").append(truncateText(highlight, 80)).append("\n");
            }
            sb.append("\n");
        }
        
        if (!summary.notes.isEmpty()) {
            sb.append("Заметки:\n");
            for (String note : summary.notes) {
                sb.append("• ").append(truncateText(note, 100)).append("\n");
            }
            sb.append("\n");
        }
        
        if (!summary.questions.isEmpty()) {
            sb.append("Вопросы:\n");
            for (String question : summary.questions) {
                sb.append("• ").append(truncateText(question, 100)).append("\n");
            }
        }
        
        return sb.toString();
    }
    
    // Временная шкала событий
    
    /**
     * Создает временную шкалу аннотаций
     */
    public void createTimeline(String comicId, ServiceCallback<AnnotationTimeline> callback) {
        executorService.execute(() -> {
            try {
                summaryStatusLiveData.postValue("Создание временной шкалы...");
                
                annotationService.getAnnotationsByComic(comicId).observeForever(annotations -> {
                    AnnotationTimeline timeline = generateTimeline(comicId, annotations);
                    
                    summaryStatusLiveData.postValue("Временная шкала создана: " + timeline.events.size() + " событий");
                    if (callback != null) callback.onSuccess(timeline);
                });
                
            } catch (Exception e) {
                summaryStatusLiveData.postValue("Ошибка создания временной шкалы: " + e.getMessage());
                if (callback != null) callback.onError("Ошибка создания временной шкалы", e);
            }
        });
    }
    
    private AnnotationTimeline generateTimeline(String comicId, List<Annotation> annotations) {
        AnnotationTimeline timeline = new AnnotationTimeline();
        timeline.comicId = comicId;
        timeline.createdAt = new Date();
        
        List<TimelineEvent> events = new ArrayList<>();
        
        // Группируем аннотации по дням
        Map<String, List<Annotation>> annotationsByDay = new HashMap<>();
        SimpleDateFormat dayFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
        
        for (Annotation annotation : annotations) {
            String day = dayFormat.format(annotation.getCreatedAt());
            annotationsByDay.computeIfAbsent(day, k -> new ArrayList<>()).add(annotation);
        }
        
        // Создаем события для каждого дня
        for (Map.Entry<String, List<Annotation>> entry : annotationsByDay.entrySet()) {
            TimelineEvent event = new TimelineEvent();
            event.date = entry.getKey();
            event.annotationCount = entry.getValue().size();
            
            // Определяем тип события
            Map<AnnotationType, Integer> typeCount = new HashMap<>();
            for (Annotation annotation : entry.getValue()) {
                typeCount.put(annotation.getType(), typeCount.getOrDefault(annotation.getType(), 0) + 1);
            }
            
            // Находим доминирующий тип
            AnnotationType dominantType = typeCount.entrySet().stream()
                .max(Map.Entry.comparingByValue())
                .map(Map.Entry::getKey)
                .orElse(AnnotationType.TEXT_NOTE);
            
            event.eventType = dominantType.getDisplayName();
            event.description = generateEventDescription(entry.getValue());
            event.annotations = entry.getValue();
            
            events.add(event);
        }
        
        // Сортируем события по дате
        events.sort((a, b) -> a.date.compareTo(b.date));
        
        timeline.events = events;
        timeline.totalDays = events.size();
        timeline.totalAnnotations = annotations.size();
        
        return timeline;
    }
    
    private String generateEventDescription(List<Annotation> annotations) {
        if (annotations.isEmpty()) {
            return "Нет активности";
        }
        
        if (annotations.size() == 1) {
            Annotation annotation = annotations.get(0);
            return "Создана аннотация: " + truncateText(annotation.getTitle() != null ? annotation.getTitle() : annotation.getContent(), 50);
        }
        
        Map<AnnotationType, Integer> typeCount = new HashMap<>();
        for (Annotation annotation : annotations) {
            typeCount.put(annotation.getType(), typeCount.getOrDefault(annotation.getType(), 0) + 1);
        }
        
        StringBuilder description = new StringBuilder();
        description.append("Создано ").append(annotations.size()).append(" аннотаций: ");
        
        List<String> typeSummary = new ArrayList<>();
        for (Map.Entry<AnnotationType, Integer> entry : typeCount.entrySet()) {
            typeSummary.add(entry.getValue() + " " + entry.getKey().getDisplayName().toLowerCase());
        }
        
        description.append(String.join(", ", typeSummary));
        
        return description.toString();
    }
    
    // Создание автоматических резюме аннотаций
    
    /**
     * Создает автоматическую аннотацию-резюме
     */
    public void createSummaryAnnotation(String comicId, int pageNumber, String authorId, ServiceCallback<Long> callback) {
        executorService.execute(() -> {
            try {
                annotationService.getAnnotationsByPage(comicId, pageNumber).observeForever(annotations -> {
                    if (annotations.size() > 3) { // Создаем резюме только если есть достаточно аннотаций
                        PageSummary pageSummary = generatePageSummary(comicId, pageNumber, annotations);
                        
                        Annotation summaryAnnotation = new Annotation(comicId, pageNumber, AnnotationType.SUMMARY);
                        summaryAnnotation.setTitle("Резюме страницы " + pageNumber);
                        summaryAnnotation.setContent(pageSummary.textSummary);
                        summaryAnnotation.setAuthorId(authorId);
                        summaryAnnotation.setCategory("Резюме");
                        summaryAnnotation.addTag("автоматическое");
                        summaryAnnotation.addTag("резюме");
                        summaryAnnotation.setColor("#4CAF50");
                        summaryAnnotation.setBackgroundColor("#E8F5E9");
                        
                        annotationService.createAnnotation(summaryAnnotation, new AnnotationService.ServiceCallback<Long>() {
                            @Override
                            public void onSuccess(Long result) {
                                summaryStatusLiveData.postValue("Создано резюме аннотации");
                                if (callback != null) callback.onSuccess(result);
                            }
                            
                            @Override
                            public void onError(String message, Exception e) {
                                if (callback != null) callback.onError(message, e);
                            }
                        });
                    } else {
                        if (callback != null) callback.onSuccess(-1L); // Недостаточно аннотаций
                    }
                });
                
            } catch (Exception e) {
                if (callback != null) callback.onError("Ошибка создания резюме аннотации", e);
            }
        });
    }
    
    // Утилитарные методы
    
    private String truncateText(String text, int maxLength) {
        if (text == null || text.length() <= maxLength) {
            return text;
        }
        return text.substring(0, maxLength - 3) + "...";
    }
    
    public LiveData<String> getSummaryStatusLiveData() {
        return summaryStatusLiveData;
    }
    
    // Интерфейсы и классы данных
    
    public interface ServiceCallback<T> {
        void onSuccess(T result);
        void onError(String message, Exception e);
    }
    
    public static class ComicSummary {
        public String comicId;
        public int totalAnnotations;
        public int pagesWithAnnotations;
        public Map<AnnotationType, Integer> typeStatistics;
        public Map<String, Integer> categoryStatistics;
        public Map<String, Integer> authorStatistics;
        public List<String> keyPoints;
        public List<String> questions;
        public List<String> ideas;
        public String textSummary;
        public Date createdAt;
    }
    
    public static class PageSummary {
        public String comicId;
        public int pageNumber;
        public int totalAnnotations;
        public List<String> highlights;
        public List<String> notes;
        public List<String> questions;
        public String textSummary;
        public Date createdAt;
    }
    
    public static class AnnotationTimeline {
        public String comicId;
        public List<TimelineEvent> events;
        public int totalDays;
        public int totalAnnotations;
        public Date createdAt;
    }
    
    public static class TimelineEvent {
        public String date;
        public String eventType;
        public String description;
        public int annotationCount;
        public List<Annotation> annotations;
    }
    
    // Очистка ресурсов
    public void cleanup() {
        if (executorService != null && !executorService.isShutdown()) {
            executorService.shutdown();
        }
    }
}


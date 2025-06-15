package com.example.mrcomic.annotations.service;

import android.content.Context;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.example.mrcomic.annotations.model.Annotation;
import com.example.mrcomic.annotations.types.AnnotationType;
import com.example.mrcomic.annotations.types.AnnotationPriority;
import java.util.*;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Сервис для контекстных предложений и рекомендаций
 */
public class AnnotationRecommendationService {
    
    private final AnnotationService annotationService;
    private final IntelligentAnnotationService intelligentService;
    private final ExecutorService executorService;
    private final MutableLiveData<String> recommendationStatusLiveData;
    private final Context context;
    
    // Шаблоны аннотаций
    private final Map<String, AnnotationTemplate> templates;
    
    // Часто используемые теги
    private final Set<String> popularTags;
    
    private static volatile AnnotationRecommendationService INSTANCE;
    
    private AnnotationRecommendationService(Context context) {
        this.context = context.getApplicationContext();
        this.annotationService = AnnotationService.getInstance(context);
        this.intelligentService = IntelligentAnnotationService.getInstance(context);
        this.executorService = Executors.newFixedThreadPool(2);
        this.recommendationStatusLiveData = new MutableLiveData<>();
        this.templates = initializeTemplates();
        this.popularTags = initializePopularTags();
    }
    
    public static AnnotationRecommendationService getInstance(Context context) {
        if (INSTANCE == null) {
            synchronized (AnnotationRecommendationService.class) {
                if (INSTANCE == null) {
                    INSTANCE = new AnnotationRecommendationService(context);
                }
            }
        }
        return INSTANCE;
    }
    
    // Предложения связанных аннотаций
    
    /**
     * Предлагает связанные аннотации на основе контекста
     */
    public void suggestRelatedAnnotations(long annotationId, ServiceCallback<List<AnnotationSuggestion>> callback) {
        executorService.execute(() -> {
            try {
                recommendationStatusLiveData.postValue("Поиск связанных аннотаций...");
                
                annotationService.getAnnotationById(annotationId).observeForever(targetAnnotation -> {
                    if (targetAnnotation != null) {
                        List<AnnotationSuggestion> suggestions = new ArrayList<>();
                        
                        // Поиск по тегам
                        findSuggestionsByTags(targetAnnotation, suggestions);
                        
                        // Поиск по категории
                        findSuggestionsByCategory(targetAnnotation, suggestions);
                        
                        // Поиск по содержимому
                        findSuggestionsByContent(targetAnnotation, suggestions);
                        
                        // Поиск по странице
                        findSuggestionsByPage(targetAnnotation, suggestions);
                        
                        // Сортируем по релевантности
                        suggestions.sort((a, b) -> Double.compare(b.relevanceScore, a.relevanceScore));
                        
                        // Ограничиваем количество предложений
                        List<AnnotationSuggestion> topSuggestions = suggestions.subList(0, Math.min(10, suggestions.size()));
                        
                        recommendationStatusLiveData.postValue("Найдено " + topSuggestions.size() + " связанных аннотаций");
                        if (callback != null) callback.onSuccess(topSuggestions);
                    }
                });
                
            } catch (Exception e) {
                recommendationStatusLiveData.postValue("Ошибка поиска связанных аннотаций: " + e.getMessage());
                if (callback != null) callback.onError("Ошибка поиска связанных аннотаций", e);
            }
        });
    }
    
    private void findSuggestionsByTags(Annotation targetAnnotation, List<AnnotationSuggestion> suggestions) {
        if (targetAnnotation.getTags() == null || targetAnnotation.getTags().isEmpty()) {
            return;
        }
        
        for (String tag : targetAnnotation.getTags()) {
            annotationService.getAnnotationsByTag(tag).observeForever(annotations -> {
                for (Annotation annotation : annotations) {
                    if (annotation.getId() != targetAnnotation.getId()) {
                        AnnotationSuggestion suggestion = new AnnotationSuggestion();
                        suggestion.annotation = annotation;
                        suggestion.reason = "Общий тег: " + tag;
                        suggestion.relevanceScore = 0.8;
                        suggestion.suggestionType = SuggestionType.BY_TAG;
                        
                        if (!containsSuggestion(suggestions, suggestion)) {
                            suggestions.add(suggestion);
                        }
                    }
                }
            });
        }
    }
    
    private void findSuggestionsByCategory(Annotation targetAnnotation, List<AnnotationSuggestion> suggestions) {
        if (targetAnnotation.getCategory() == null) {
            return;
        }
        
        annotationService.getAnnotationsByCategory(targetAnnotation.getCategory()).observeForever(annotations -> {
            for (Annotation annotation : annotations) {
                if (annotation.getId() != targetAnnotation.getId()) {
                    AnnotationSuggestion suggestion = new AnnotationSuggestion();
                    suggestion.annotation = annotation;
                    suggestion.reason = "Та же категория: " + targetAnnotation.getCategory();
                    suggestion.relevanceScore = 0.6;
                    suggestion.suggestionType = SuggestionType.BY_CATEGORY;
                    
                    if (!containsSuggestion(suggestions, suggestion)) {
                        suggestions.add(suggestion);
                    }
                }
            }
        });
    }
    
    private void findSuggestionsByContent(Annotation targetAnnotation, List<AnnotationSuggestion> suggestions) {
        // Извлекаем ключевые слова из содержимого
        String[] keywords = extractKeywords(targetAnnotation.getContent());
        
        for (String keyword : keywords) {
            annotationService.searchAnnotations(keyword).observeForever(annotations -> {
                for (Annotation annotation : annotations) {
                    if (annotation.getId() != targetAnnotation.getId()) {
                        AnnotationSuggestion suggestion = new AnnotationSuggestion();
                        suggestion.annotation = annotation;
                        suggestion.reason = "Ключевое слово: " + keyword;
                        suggestion.relevanceScore = 0.4;
                        suggestion.suggestionType = SuggestionType.BY_CONTENT;
                        
                        if (!containsSuggestion(suggestions, suggestion)) {
                            suggestions.add(suggestion);
                        }
                    }
                }
            });
        }
    }
    
    private void findSuggestionsByPage(Annotation targetAnnotation, List<AnnotationSuggestion> suggestions) {
        // Ищем аннотации на соседних страницах
        int[] nearbyPages = {
            targetAnnotation.getPageNumber() - 1,
            targetAnnotation.getPageNumber() + 1
        };
        
        for (int pageNumber : nearbyPages) {
            if (pageNumber > 0) {
                annotationService.getAnnotationsByPage(targetAnnotation.getComicId(), pageNumber).observeForever(annotations -> {
                    for (Annotation annotation : annotations) {
                        AnnotationSuggestion suggestion = new AnnotationSuggestion();
                        suggestion.annotation = annotation;
                        suggestion.reason = "Соседняя страница: " + pageNumber;
                        suggestion.relevanceScore = 0.3;
                        suggestion.suggestionType = SuggestionType.BY_PAGE;
                        
                        if (!containsSuggestion(suggestions, suggestion)) {
                            suggestions.add(suggestion);
                        }
                    }
                });
            }
        }
    }
    
    // Автодополнение при вводе
    
    /**
     * Предлагает автодополнение для текста аннотации
     */
    public void suggestAutocompletion(String partialText, String comicId, ServiceCallback<List<String>> callback) {
        executorService.execute(() -> {
            try {
                List<String> suggestions = new ArrayList<>();
                
                // Поиск в существующих аннотациях
                annotationService.searchAnnotationsInComic(comicId, partialText).observeForever(annotations -> {
                    Set<String> uniqueSuggestions = new HashSet<>();
                    
                    for (Annotation annotation : annotations) {
                        String content = annotation.getContent();
                        if (content != null && content.toLowerCase().contains(partialText.toLowerCase())) {
                            // Извлекаем предложения, содержащие частичный текст
                            String[] sentences = content.split("[.!?]");
                            for (String sentence : sentences) {
                                if (sentence.toLowerCase().contains(partialText.toLowerCase())) {
                                    uniqueSuggestions.add(sentence.trim());
                                }
                            }
                        }
                    }
                    
                    suggestions.addAll(uniqueSuggestions);
                    
                    // Ограничиваем количество предложений
                    List<String> topSuggestions = suggestions.subList(0, Math.min(5, suggestions.size()));
                    
                    if (callback != null) callback.onSuccess(topSuggestions);
                });
                
            } catch (Exception e) {
                if (callback != null) callback.onError("Ошибка автодополнения", e);
            }
        });
    }
    
    // Умные шаблоны заметок
    
    /**
     * Предлагает шаблоны аннотаций на основе контекста
     */
    public void suggestTemplates(String comicId, int pageNumber, AnnotationType type, ServiceCallback<List<AnnotationTemplate>> callback) {
        executorService.execute(() -> {
            try {
                List<AnnotationTemplate> suggestedTemplates = new ArrayList<>();
                
                // Базовые шаблоны по типу
                for (AnnotationTemplate template : templates.values()) {
                    if (template.applicableTypes.contains(type)) {
                        suggestedTemplates.add(template);
                    }
                }
                
                // Анализируем существующие аннотации для персонализации
                annotationService.getAnnotationsByPage(comicId, pageNumber).observeForever(existingAnnotations -> {
                    // Если на странице уже есть аннотации определенного типа, предлагаем похожие шаблоны
                    Map<AnnotationType, Integer> typeCount = new HashMap<>();
                    for (Annotation annotation : existingAnnotations) {
                        typeCount.put(annotation.getType(), typeCount.getOrDefault(annotation.getType(), 0) + 1);
                    }
                    
                    // Добавляем персонализированные шаблоны
                    for (Map.Entry<AnnotationType, Integer> entry : typeCount.entrySet()) {
                        if (entry.getValue() > 1) { // Если тип часто используется
                            AnnotationTemplate personalizedTemplate = createPersonalizedTemplate(entry.getKey(), existingAnnotations);
                            if (personalizedTemplate != null) {
                                suggestedTemplates.add(personalizedTemplate);
                            }
                        }
                    }
                    
                    // Сортируем по релевантности
                    suggestedTemplates.sort((a, b) -> Double.compare(b.relevanceScore, a.relevanceScore));
                    
                    if (callback != null) callback.onSuccess(suggestedTemplates);
                });
                
            } catch (Exception e) {
                if (callback != null) callback.onError("Ошибка предложения шаблонов", e);
            }
        });
    }
    
    // Предложения тегов
    
    /**
     * Предлагает теги на основе содержимого аннотации
     */
    public void suggestTags(String content, String comicId, ServiceCallback<List<String>> callback) {
        executorService.execute(() -> {
            try {
                Set<String> suggestedTags = new HashSet<>();
                
                // Добавляем популярные теги
                suggestedTags.addAll(popularTags);
                
                // Анализируем содержимое
                String[] words = content.toLowerCase().split("\\s+");
                for (String word : words) {
                    if (word.length() > 3 && isValidTag(word)) {
                        suggestedTags.add(word);
                    }
                }
                
                // Ищем теги в похожих аннотациях
                annotationService.searchAnnotationsInComic(comicId, content).observeForever(similarAnnotations -> {
                    for (Annotation annotation : similarAnnotations) {
                        if (annotation.getTags() != null) {
                            suggestedTags.addAll(annotation.getTags());
                        }
                    }
                    
                    List<String> finalTags = new ArrayList<>(suggestedTags);
                    finalTags.sort(String::compareToIgnoreCase);
                    
                    // Ограничиваем количество предложений
                    List<String> topTags = finalTags.subList(0, Math.min(10, finalTags.size()));
                    
                    if (callback != null) callback.onSuccess(topTags);
                });
                
            } catch (Exception e) {
                if (callback != null) callback.onError("Ошибка предложения тегов", e);
            }
        });
    }
    
    // Рекомендации по организации
    
    /**
     * Предлагает способы организации аннотаций
     */
    public void suggestOrganization(String comicId, ServiceCallback<List<OrganizationSuggestion>> callback) {
        executorService.execute(() -> {
            try {
                annotationService.getAnnotationsByComic(comicId).observeForever(annotations -> {
                    List<OrganizationSuggestion> suggestions = new ArrayList<>();
                    
                    // Анализируем текущую организацию
                    Map<String, Integer> categoryCount = new HashMap<>();
                    Map<AnnotationType, Integer> typeCount = new HashMap<>();
                    Set<String> allTags = new HashSet<>();
                    
                    for (Annotation annotation : annotations) {
                        if (annotation.getCategory() != null) {
                            categoryCount.put(annotation.getCategory(), categoryCount.getOrDefault(annotation.getCategory(), 0) + 1);
                        }
                        typeCount.put(annotation.getType(), typeCount.getOrDefault(annotation.getType(), 0) + 1);
                        if (annotation.getTags() != null) {
                            allTags.addAll(annotation.getTags());
                        }
                    }
                    
                    // Предлагаем создание новых категорий
                    if (categoryCount.size() < 3 && annotations.size() > 10) {
                        OrganizationSuggestion suggestion = new OrganizationSuggestion();
                        suggestion.type = "create_categories";
                        suggestion.title = "Создать дополнительные категории";
                        suggestion.description = "У вас много аннотаций, но мало категорий. Рекомендуем создать дополнительные категории для лучшей организации.";
                        suggestion.priority = 0.8;
                        suggestions.add(suggestion);
                    }
                    
                    // Предлагаем объединение похожих тегов
                    if (allTags.size() > 20) {
                        OrganizationSuggestion suggestion = new OrganizationSuggestion();
                        suggestion.type = "merge_tags";
                        suggestion.title = "Объединить похожие теги";
                        suggestion.description = "У вас много тегов. Рекомендуем объединить похожие теги для упрощения навигации.";
                        suggestion.priority = 0.6;
                        suggestions.add(suggestion);
                    }
                    
                    // Предлагаем архивирование старых аннотаций
                    long oldAnnotationsCount = annotations.stream()
                        .filter(a -> (System.currentTimeMillis() - a.getCreatedAt().getTime()) > 90L * 24 * 60 * 60 * 1000)
                        .count();
                    
                    if (oldAnnotationsCount > 10) {
                        OrganizationSuggestion suggestion = new OrganizationSuggestion();
                        suggestion.type = "archive_old";
                        suggestion.title = "Архивировать старые аннотации";
                        suggestion.description = "У вас есть " + oldAnnotationsCount + " старых аннотаций. Рекомендуем их архивировать.";
                        suggestion.priority = 0.4;
                        suggestions.add(suggestion);
                    }
                    
                    suggestions.sort((a, b) -> Double.compare(b.priority, a.priority));
                    
                    if (callback != null) callback.onSuccess(suggestions);
                });
                
            } catch (Exception e) {
                if (callback != null) callback.onError("Ошибка предложений по организации", e);
            }
        });
    }
    
    // Утилитарные методы
    
    private Map<String, AnnotationTemplate> initializeTemplates() {
        Map<String, AnnotationTemplate> templates = new HashMap<>();
        
        // Шаблон для анализа персонажа
        AnnotationTemplate characterTemplate = new AnnotationTemplate();
        characterTemplate.id = "character_analysis";
        characterTemplate.title = "Анализ персонажа";
        characterTemplate.content = "Персонаж: [Имя]\nХарактеристики:\n- Внешность: \n- Характер: \n- Мотивация: \n- Развитие: ";
        characterTemplate.applicableTypes = Arrays.asList(AnnotationType.TEXT_NOTE, AnnotationType.RICH_TEXT);
        characterTemplate.category = "Персонажи";
        characterTemplate.tags = Arrays.asList("персонаж", "анализ");
        characterTemplate.relevanceScore = 0.9;
        templates.put(characterTemplate.id, characterTemplate);
        
        // Шаблон для вопроса
        AnnotationTemplate questionTemplate = new AnnotationTemplate();
        questionTemplate.id = "question";
        questionTemplate.title = "Вопрос";
        questionTemplate.content = "Вопрос: [Ваш вопрос]\nКонтекст: \nВозможные ответы: ";
        questionTemplate.applicableTypes = Arrays.asList(AnnotationType.TEXT_NOTE, AnnotationType.QUESTION);
        questionTemplate.category = "Вопросы";
        questionTemplate.tags = Arrays.asList("вопрос");
        questionTemplate.relevanceScore = 0.8;
        templates.put(questionTemplate.id, questionTemplate);
        
        // Шаблон для идеи
        AnnotationTemplate ideaTemplate = new AnnotationTemplate();
        ideaTemplate.id = "idea";
        ideaTemplate.title = "Идея";
        ideaTemplate.content = "Идея: [Краткое описание]\nДетали: \nПрименение: \nСвязанные концепции: ";
        ideaTemplate.applicableTypes = Arrays.asList(AnnotationType.TEXT_NOTE, AnnotationType.RICH_TEXT);
        ideaTemplate.category = "Идеи";
        ideaTemplate.tags = Arrays.asList("идея", "концепция");
        ideaTemplate.relevanceScore = 0.7;
        templates.put(ideaTemplate.id, ideaTemplate);
        
        return templates;
    }
    
    private Set<String> initializePopularTags() {
        return new HashSet<>(Arrays.asList(
            "важно", "вопрос", "идея", "персонаж", "сюжет", "диалог",
            "визуал", "эмоция", "действие", "место", "заметка", "анализ",
            "теория", "предположение", "факт", "мнение", "критика", "похвала"
        ));
    }
    
    private String[] extractKeywords(String content) {
        if (content == null) return new String[0];
        
        String[] words = content.toLowerCase()
            .replaceAll("[^а-яёa-z\\s]", " ")
            .split("\\s+");
        
        List<String> keywords = new ArrayList<>();
        for (String word : words) {
            if (word.length() > 3 && !isStopWord(word)) {
                keywords.add(word);
            }
        }
        
        return keywords.toArray(new String[0]);
    }
    
    private boolean isStopWord(String word) {
        Set<String> stopWords = new HashSet<>(Arrays.asList(
            "это", "что", "как", "где", "когда", "почему", "который", "которая", "которое",
            "для", "при", "над", "под", "через", "между", "после", "перед", "вместо"
        ));
        return stopWords.contains(word);
    }
    
    private boolean isValidTag(String word) {
        return word.matches("[а-яёa-z]+") && !isStopWord(word);
    }
    
    private boolean containsSuggestion(List<AnnotationSuggestion> suggestions, AnnotationSuggestion newSuggestion) {
        return suggestions.stream().anyMatch(s -> s.annotation.getId() == newSuggestion.annotation.getId());
    }
    
    private AnnotationTemplate createPersonalizedTemplate(AnnotationType type, List<Annotation> existingAnnotations) {
        // Анализируем существующие аннотации этого типа для создания персонализированного шаблона
        List<Annotation> typeAnnotations = existingAnnotations.stream()
            .filter(a -> a.getType() == type)
            .collect(java.util.stream.Collectors.toList());
        
        if (typeAnnotations.size() < 2) return null;
        
        AnnotationTemplate template = new AnnotationTemplate();
        template.id = "personalized_" + type.getCode();
        template.title = "Персонализированный " + type.getDisplayName();
        template.applicableTypes = Arrays.asList(type);
        template.relevanceScore = 0.95;
        
        // Анализируем общие паттерны
        Map<String, Integer> commonWords = new HashMap<>();
        Set<String> commonTags = new HashSet<>();
        
        for (Annotation annotation : typeAnnotations) {
            if (annotation.getContent() != null) {
                String[] words = annotation.getContent().toLowerCase().split("\\s+");
                for (String word : words) {
                    if (word.length() > 3) {
                        commonWords.put(word, commonWords.getOrDefault(word, 0) + 1);
                    }
                }
            }
            if (annotation.getTags() != null) {
                commonTags.addAll(annotation.getTags());
            }
        }
        
        // Создаем шаблон на основе общих паттернов
        StringBuilder contentBuilder = new StringBuilder();
        contentBuilder.append("Шаблон на основе ваших аннотаций:\n\n");
        
        List<String> topWords = commonWords.entrySet().stream()
            .filter(e -> e.getValue() > 1)
            .sorted((a, b) -> b.getValue().compareTo(a.getValue()))
            .limit(5)
            .map(Map.Entry::getKey)
            .collect(java.util.stream.Collectors.toList());
        
        if (!topWords.isEmpty()) {
            contentBuilder.append("Часто используемые слова: ").append(String.join(", ", topWords)).append("\n\n");
        }
        
        contentBuilder.append("[Ваш текст здесь]");
        
        template.content = contentBuilder.toString();
        template.tags = new ArrayList<>(commonTags).subList(0, Math.min(3, commonTags.size()));
        
        return template;
    }
    
    public LiveData<String> getRecommendationStatusLiveData() {
        return recommendationStatusLiveData;
    }
    
    // Интерфейсы и классы данных
    
    public interface ServiceCallback<T> {
        void onSuccess(T result);
        void onError(String message, Exception e);
    }
    
    public static class AnnotationSuggestion {
        public Annotation annotation;
        public String reason;
        public double relevanceScore;
        public SuggestionType suggestionType;
    }
    
    public enum SuggestionType {
        BY_TAG, BY_CATEGORY, BY_CONTENT, BY_PAGE, BY_AUTHOR, BY_TYPE
    }
    
    public static class AnnotationTemplate {
        public String id;
        public String title;
        public String content;
        public List<AnnotationType> applicableTypes;
        public String category;
        public List<String> tags;
        public double relevanceScore;
    }
    
    public static class OrganizationSuggestion {
        public String type;
        public String title;
        public String description;
        public double priority;
        public Map<String, Object> parameters;
    }
    
    // Очистка ресурсов
    public void cleanup() {
        if (executorService != null && !executorService.isShutdown()) {
            executorService.shutdown();
        }
    }
}


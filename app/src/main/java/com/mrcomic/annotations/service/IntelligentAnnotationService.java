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
import java.util.regex.Pattern;
import java.util.regex.Matcher;

/**
 * Интеллектуальный сервис для автоматического анализа и обработки аннотаций
 */
public class IntelligentAnnotationService {
    
    private final AnnotationService annotationService;
    private final ExecutorService executorService;
    private final MutableLiveData<String> analysisStatusLiveData;
    private final Context context;
    
    // Паттерны для анализа текста
    private static final Pattern QUESTION_PATTERN = Pattern.compile(".*[?？]\\s*$");
    private static final Pattern EXCLAMATION_PATTERN = Pattern.compile(".*[!！]\\s*$");
    private static final Pattern IMPORTANT_PATTERN = Pattern.compile(".*(важно|важный|критично|срочно|внимание).*", Pattern.CASE_INSENSITIVE);
    private static final Pattern TODO_PATTERN = Pattern.compile(".*(todo|сделать|задача|нужно).*", Pattern.CASE_INSENSITIVE);
    private static final Pattern IDEA_PATTERN = Pattern.compile(".*(идея|мысль|предложение|концепция).*", Pattern.CASE_INSENSITIVE);
    
    // Ключевые слова для категоризации
    private static final Map<String, List<String>> CATEGORY_KEYWORDS = new HashMap<>();
    static {
        CATEGORY_KEYWORDS.put("Персонажи", Arrays.asList("персонаж", "герой", "злодей", "протагонист", "антагонист", "характер"));
        CATEGORY_KEYWORDS.put("Сюжет", Arrays.asList("сюжет", "история", "развитие", "поворот", "кульминация", "развязка"));
        CATEGORY_KEYWORDS.put("Диалоги", Arrays.asList("диалог", "разговор", "речь", "слова", "фраза", "реплика"));
        CATEGORY_KEYWORDS.put("Визуал", Arrays.asList("рисунок", "арт", "стиль", "цвет", "композиция", "кадр"));
        CATEGORY_KEYWORDS.put("Эмоции", Arrays.asList("эмоция", "чувство", "настроение", "грусть", "радость", "злость"));
        CATEGORY_KEYWORDS.put("Действие", Arrays.asList("действие", "движение", "бой", "сцена", "событие", "происходит"));
        CATEGORY_KEYWORDS.put("Локация", Arrays.asList("место", "локация", "фон", "окружение", "обстановка", "декорации"));
        CATEGORY_KEYWORDS.put("Техника", Arrays.asList("техника", "метод", "прием", "стиль", "исполнение", "мастерство"));
    }
    
    // Эмоциональные индикаторы
    private static final Map<String, String> EMOTION_INDICATORS = new HashMap<>();
    static {
        EMOTION_INDICATORS.put("радость", "😊");
        EMOTION_INDICATORS.put("грусть", "😢");
        EMOTION_INDICATORS.put("злость", "😠");
        EMOTION_INDICATORS.put("удивление", "😲");
        EMOTION_INDICATORS.put("страх", "😨");
        EMOTION_INDICATORS.put("отвращение", "🤢");
        EMOTION_INDICATORS.put("любовь", "❤️");
        EMOTION_INDICATORS.put("смех", "😂");
        EMOTION_INDICATORS.put("восторг", "🤩");
        EMOTION_INDICATORS.put("печаль", "😔");
    }
    
    private static volatile IntelligentAnnotationService INSTANCE;
    
    private IntelligentAnnotationService(Context context) {
        this.context = context.getApplicationContext();
        this.annotationService = AnnotationService.getInstance(context);
        this.executorService = Executors.newFixedThreadPool(3);
        this.analysisStatusLiveData = new MutableLiveData<>();
    }
    
    public static IntelligentAnnotationService getInstance(Context context) {
        if (INSTANCE == null) {
            synchronized (IntelligentAnnotationService.class) {
                if (INSTANCE == null) {
                    INSTANCE = new IntelligentAnnotationService(context);
                }
            }
        }
        return INSTANCE;
    }
    
    // Автоматическое создание аннотаций из OCR
    
    /**
     * Создает аннотации из результатов OCR
     */
    public void createAnnotationsFromOCR(String comicId, int pageNumber, List<OCRResult> ocrResults, 
                                       String authorId, ServiceCallback<List<Long>> callback) {
        
        executorService.execute(() -> {
            try {
                analysisStatusLiveData.postValue("Анализ результатов OCR...");
                
                List<Annotation> annotations = new ArrayList<>();
                
                for (OCRResult ocrResult : ocrResults) {
                    if (ocrResult.confidence > 0.8 && ocrResult.text.length() > 3) {
                        Annotation annotation = createAnnotationFromOCR(comicId, pageNumber, ocrResult, authorId);
                        if (annotation != null) {
                            annotations.add(annotation);
                        }
                    }
                }
                
                if (!annotations.isEmpty()) {
                    annotationService.createBatchAnnotations(annotations, new AnnotationService.ServiceCallback<List<Long>>() {
                        @Override
                        public void onSuccess(List<Long> result) {
                            analysisStatusLiveData.postValue("Создано " + result.size() + " аннотаций из OCR");
                            if (callback != null) callback.onSuccess(result);
                        }
                        
                        @Override
                        public void onError(String message, Exception e) {
                            analysisStatusLiveData.postValue("Ошибка создания аннотаций: " + message);
                            if (callback != null) callback.onError(message, e);
                        }
                    });
                } else {
                    analysisStatusLiveData.postValue("Не найдено подходящих текстов для создания аннотаций");
                    if (callback != null) callback.onSuccess(new ArrayList<>());
                }
                
            } catch (Exception e) {
                analysisStatusLiveData.postValue("Ошибка анализа OCR: " + e.getMessage());
                if (callback != null) callback.onError("Ошибка анализа OCR", e);
            }
        });
    }
    
    private Annotation createAnnotationFromOCR(String comicId, int pageNumber, OCRResult ocrResult, String authorId) {
        Annotation annotation = new Annotation(comicId, pageNumber, AnnotationType.OCR_GENERATED);
        annotation.setContent(ocrResult.text);
        annotation.setTitle("OCR: " + truncateText(ocrResult.text, 30));
        annotation.setX(ocrResult.boundingBox.left);
        annotation.setY(ocrResult.boundingBox.top);
        annotation.setWidth(ocrResult.boundingBox.width());
        annotation.setHeight(ocrResult.boundingBox.height());
        annotation.setAuthorId(authorId);
        
        // Автоматический анализ содержимого
        AnalysisResult analysis = analyzeText(ocrResult.text);
        annotation.setCategory(analysis.category);
        annotation.setPriority(analysis.priority);
        annotation.setTags(analysis.tags);
        annotation.setColor(analysis.color);
        annotation.setBackgroundColor(analysis.backgroundColor);
        
        return annotation;
    }
    
    // Извлечение ключевых моментов
    
    /**
     * Извлекает ключевые моменты из аннотаций комикса
     */
    public void extractKeyMoments(String comicId, ServiceCallback<List<KeyMoment>> callback) {
        executorService.execute(() -> {
            try {
                analysisStatusLiveData.postValue("Извлечение ключевых моментов...");
                
                annotationService.getAnnotationsByComic(comicId).observeForever(annotations -> {
                    List<KeyMoment> keyMoments = new ArrayList<>();
                    
                    for (Annotation annotation : annotations) {
                        if (isKeyMoment(annotation)) {
                            KeyMoment moment = createKeyMoment(annotation);
                            keyMoments.add(moment);
                        }
                    }
                    
                    // Сортируем по важности и странице
                    keyMoments.sort((a, b) -> {
                        int priorityCompare = b.importance - a.importance;
                        if (priorityCompare != 0) return priorityCompare;
                        return Integer.compare(a.pageNumber, b.pageNumber);
                    });
                    
                    analysisStatusLiveData.postValue("Найдено " + keyMoments.size() + " ключевых моментов");
                    if (callback != null) callback.onSuccess(keyMoments);
                });
                
            } catch (Exception e) {
                analysisStatusLiveData.postValue("Ошибка извлечения ключевых моментов: " + e.getMessage());
                if (callback != null) callback.onError("Ошибка извлечения ключевых моментов", e);
            }
        });
    }
    
    private boolean isKeyMoment(Annotation annotation) {
        String content = annotation.getContent().toLowerCase();
        
        // Проверяем на важные индикаторы
        if (annotation.getPriority() == AnnotationPriority.HIGH || 
            annotation.getPriority() == AnnotationPriority.HIGHEST ||
            annotation.getPriority() == AnnotationPriority.CRITICAL) {
            return true;
        }
        
        // Проверяем на ключевые слова
        if (IMPORTANT_PATTERN.matcher(content).matches() ||
            content.contains("поворот") ||
            content.contains("кульминация") ||
            content.contains("развязка") ||
            content.contains("открытие") ||
            content.contains("секрет")) {
            return true;
        }
        
        // Проверяем длину и качество аннотации
        return content.length() > 50 && annotation.getTags() != null && annotation.getTags().size() > 2;
    }
    
    private KeyMoment createKeyMoment(Annotation annotation) {
        KeyMoment moment = new KeyMoment();
        moment.annotationId = annotation.getId();
        moment.pageNumber = annotation.getPageNumber();
        moment.title = annotation.getTitle();
        moment.description = annotation.getContent();
        moment.importance = calculateImportance(annotation);
        moment.category = annotation.getCategory();
        moment.tags = annotation.getTags();
        moment.timestamp = annotation.getCreatedAt();
        
        return moment;
    }
    
    private int calculateImportance(Annotation annotation) {
        int importance = 0;
        
        // Базовая важность по приоритету
        importance += annotation.getPriority().getLevel() * 10;
        
        // Бонус за количество тегов
        if (annotation.getTags() != null) {
            importance += annotation.getTags().size() * 5;
        }
        
        // Бонус за длину содержимого
        importance += Math.min(annotation.getContent().length() / 10, 20);
        
        // Бонус за ключевые слова
        String content = annotation.getContent().toLowerCase();
        if (content.contains("важно")) importance += 15;
        if (content.contains("ключевой")) importance += 15;
        if (content.contains("главный")) importance += 10;
        if (content.contains("основной")) importance += 10;
        
        return Math.min(importance, 100);
    }
    
    // Автоматическое тегирование
    
    /**
     * Автоматически добавляет теги к аннотации
     */
    public void autoTagAnnotation(long annotationId, ServiceCallback<List<String>> callback) {
        executorService.execute(() -> {
            try {
                annotationService.getAnnotationById(annotationId).observeForever(annotation -> {
                    if (annotation != null) {
                        List<String> suggestedTags = generateTags(annotation.getContent());
                        
                        // Добавляем новые теги к существующим
                        List<String> currentTags = annotation.getTags();
                        if (currentTags == null) {
                            currentTags = new ArrayList<>();
                        }
                        
                        for (String tag : suggestedTags) {
                            if (!currentTags.contains(tag)) {
                                currentTags.add(tag);
                            }
                        }
                        
                        annotation.setTags(currentTags);
                        
                        annotationService.updateAnnotationContent(annotationId, annotation.getContent(), 
                            new AnnotationService.ServiceCallback<Void>() {
                                @Override
                                public void onSuccess(Void result) {
                                    if (callback != null) callback.onSuccess(suggestedTags);
                                }
                                
                                @Override
                                public void onError(String message, Exception e) {
                                    if (callback != null) callback.onError(message, e);
                                }
                            });
                    }
                });
                
            } catch (Exception e) {
                if (callback != null) callback.onError("Ошибка автотегирования", e);
            }
        });
    }
    
    private List<String> generateTags(String content) {
        List<String> tags = new ArrayList<>();
        String lowerContent = content.toLowerCase();
        
        // Анализ по категориям
        for (Map.Entry<String, List<String>> entry : CATEGORY_KEYWORDS.entrySet()) {
            for (String keyword : entry.getValue()) {
                if (lowerContent.contains(keyword)) {
                    tags.add(entry.getKey().toLowerCase());
                    break;
                }
            }
        }
        
        // Анализ эмоций
        for (String emotion : EMOTION_INDICATORS.keySet()) {
            if (lowerContent.contains(emotion)) {
                tags.add("эмоция:" + emotion);
            }
        }
        
        // Анализ типа контента
        if (QUESTION_PATTERN.matcher(content).matches()) {
            tags.add("вопрос");
        }
        if (EXCLAMATION_PATTERN.matcher(content).matches()) {
            tags.add("восклицание");
        }
        if (TODO_PATTERN.matcher(lowerContent).matches()) {
            tags.add("задача");
        }
        if (IDEA_PATTERN.matcher(lowerContent).matches()) {
            tags.add("идея");
        }
        
        // Анализ длины
        if (content.length() > 200) {
            tags.add("подробно");
        } else if (content.length() < 50) {
            tags.add("кратко");
        }
        
        return tags;
    }
    
    // Семантический анализ
    
    /**
     * Анализирует настроение в аннотации
     */
    public void analyzeSentiment(long annotationId, ServiceCallback<SentimentResult> callback) {
        executorService.execute(() -> {
            try {
                annotationService.getAnnotationById(annotationId).observeForever(annotation -> {
                    if (annotation != null) {
                        SentimentResult sentiment = performSentimentAnalysis(annotation.getContent());
                        if (callback != null) callback.onSuccess(sentiment);
                    }
                });
                
            } catch (Exception e) {
                if (callback != null) callback.onError("Ошибка анализа настроения", e);
            }
        });
    }
    
    private SentimentResult performSentimentAnalysis(String text) {
        SentimentResult result = new SentimentResult();
        String lowerText = text.toLowerCase();
        
        // Простой анализ на основе ключевых слов
        int positiveScore = 0;
        int negativeScore = 0;
        
        // Позитивные слова
        String[] positiveWords = {"хорошо", "отлично", "прекрасно", "замечательно", "великолепно", 
                                 "нравится", "люблю", "радость", "счастье", "восторг", "удовольствие"};
        for (String word : positiveWords) {
            if (lowerText.contains(word)) positiveScore++;
        }
        
        // Негативные слова
        String[] negativeWords = {"плохо", "ужасно", "отвратительно", "не нравится", "ненавижу", 
                                 "грусть", "печаль", "злость", "раздражение", "разочарование"};
        for (String word : negativeWords) {
            if (lowerText.contains(word)) negativeScore++;
        }
        
        // Определяем общее настроение
        if (positiveScore > negativeScore) {
            result.sentiment = "positive";
            result.confidence = Math.min(0.6 + (positiveScore - negativeScore) * 0.1, 1.0);
        } else if (negativeScore > positiveScore) {
            result.sentiment = "negative";
            result.confidence = Math.min(0.6 + (negativeScore - positiveScore) * 0.1, 1.0);
        } else {
            result.sentiment = "neutral";
            result.confidence = 0.5;
        }
        
        result.positiveScore = positiveScore;
        result.negativeScore = negativeScore;
        
        return result;
    }
    
    // Поиск похожих заметок
    
    /**
     * Находит похожие аннотации
     */
    public void findSimilarAnnotations(long annotationId, ServiceCallback<List<Annotation>> callback) {
        executorService.execute(() -> {
            try {
                annotationService.getAnnotationById(annotationId).observeForever(targetAnnotation -> {
                    if (targetAnnotation != null) {
                        // Получаем все аннотации того же комикса
                        annotationService.getAnnotationsByComic(targetAnnotation.getComicId()).observeForever(allAnnotations -> {
                            List<SimilarityScore> similarities = new ArrayList<>();
                            
                            for (Annotation annotation : allAnnotations) {
                                if (annotation.getId() != annotationId) {
                                    double similarity = calculateSimilarity(targetAnnotation, annotation);
                                    if (similarity > 0.3) { // Порог схожести
                                        similarities.add(new SimilarityScore(annotation, similarity));
                                    }
                                }
                            }
                            
                            // Сортируем по схожести
                            similarities.sort((a, b) -> Double.compare(b.score, a.score));
                            
                            List<Annotation> similarAnnotations = new ArrayList<>();
                            for (int i = 0; i < Math.min(10, similarities.size()); i++) {
                                similarAnnotations.add(similarities.get(i).annotation);
                            }
                            
                            if (callback != null) callback.onSuccess(similarAnnotations);
                        });
                    }
                });
                
            } catch (Exception e) {
                if (callback != null) callback.onError("Ошибка поиска похожих аннотаций", e);
            }
        });
    }
    
    private double calculateSimilarity(Annotation annotation1, Annotation annotation2) {
        double similarity = 0.0;
        
        // Схожесть по типу
        if (annotation1.getType() == annotation2.getType()) {
            similarity += 0.2;
        }
        
        // Схожесть по категории
        if (annotation1.getCategory() != null && annotation1.getCategory().equals(annotation2.getCategory())) {
            similarity += 0.2;
        }
        
        // Схожесть по тегам
        if (annotation1.getTags() != null && annotation2.getTags() != null) {
            Set<String> tags1 = new HashSet<>(annotation1.getTags());
            Set<String> tags2 = new HashSet<>(annotation2.getTags());
            Set<String> intersection = new HashSet<>(tags1);
            intersection.retainAll(tags2);
            
            if (!tags1.isEmpty() && !tags2.isEmpty()) {
                double tagSimilarity = (double) intersection.size() / Math.max(tags1.size(), tags2.size());
                similarity += tagSimilarity * 0.3;
            }
        }
        
        // Схожесть по содержимому (простой анализ)
        String content1 = annotation1.getContent().toLowerCase();
        String content2 = annotation2.getContent().toLowerCase();
        
        String[] words1 = content1.split("\\s+");
        String[] words2 = content2.split("\\s+");
        
        Set<String> wordSet1 = new HashSet<>(Arrays.asList(words1));
        Set<String> wordSet2 = new HashSet<>(Arrays.asList(words2));
        Set<String> wordIntersection = new HashSet<>(wordSet1);
        wordIntersection.retainAll(wordSet2);
        
        if (!wordSet1.isEmpty() && !wordSet2.isEmpty()) {
            double contentSimilarity = (double) wordIntersection.size() / Math.max(wordSet1.size(), wordSet2.size());
            similarity += contentSimilarity * 0.3;
        }
        
        return similarity;
    }
    
    // Утилитарные методы
    
    private AnalysisResult analyzeText(String text) {
        AnalysisResult result = new AnalysisResult();
        String lowerText = text.toLowerCase();
        
        // Определяем категорию
        result.category = "Общее";
        for (Map.Entry<String, List<String>> entry : CATEGORY_KEYWORDS.entrySet()) {
            for (String keyword : entry.getValue()) {
                if (lowerText.contains(keyword)) {
                    result.category = entry.getKey();
                    break;
                }
            }
            if (!result.category.equals("Общее")) break;
        }
        
        // Определяем приоритет
        if (IMPORTANT_PATTERN.matcher(lowerText).matches()) {
            result.priority = AnnotationPriority.HIGH;
            result.color = "#FF0000";
            result.backgroundColor = "#FFE6E6";
        } else if (QUESTION_PATTERN.matcher(text).matches()) {
            result.priority = AnnotationPriority.NORMAL;
            result.color = "#0066CC";
            result.backgroundColor = "#E6F3FF";
        } else {
            result.priority = AnnotationPriority.NORMAL;
            result.color = "#000000";
            result.backgroundColor = "#FFFFFF";
        }
        
        // Генерируем теги
        result.tags = generateTags(text);
        
        return result;
    }
    
    private String truncateText(String text, int maxLength) {
        if (text.length() <= maxLength) {
            return text;
        }
        return text.substring(0, maxLength - 3) + "...";
    }
    
    public LiveData<String> getAnalysisStatusLiveData() {
        return analysisStatusLiveData;
    }
    
    // Интерфейсы и классы данных
    
    public interface ServiceCallback<T> {
        void onSuccess(T result);
        void onError(String message, Exception e);
    }
    
    public static class OCRResult {
        public String text;
        public double confidence;
        public android.graphics.Rect boundingBox;
        
        public OCRResult(String text, double confidence, android.graphics.Rect boundingBox) {
            this.text = text;
            this.confidence = confidence;
            this.boundingBox = boundingBox;
        }
    }
    
    public static class KeyMoment {
        public long annotationId;
        public int pageNumber;
        public String title;
        public String description;
        public int importance;
        public String category;
        public List<String> tags;
        public Date timestamp;
    }
    
    public static class SentimentResult {
        public String sentiment; // positive, negative, neutral
        public double confidence;
        public int positiveScore;
        public int negativeScore;
    }
    
    private static class AnalysisResult {
        public String category;
        public AnnotationPriority priority;
        public List<String> tags;
        public String color;
        public String backgroundColor;
    }
    
    private static class SimilarityScore {
        public Annotation annotation;
        public double score;
        
        public SimilarityScore(Annotation annotation, double score) {
            this.annotation = annotation;
            this.score = score;
        }
    }
    
    // Очистка ресурсов
    public void cleanup() {
        if (executorService != null && !executorService.isShutdown()) {
            executorService.shutdown();
        }
    }
}


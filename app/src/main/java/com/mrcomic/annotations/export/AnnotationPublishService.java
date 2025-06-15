package com.example.mrcomic.annotations.export;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.core.content.FileProvider;
import com.example.mrcomic.annotations.model.Annotation;
import java.io.File;
import java.util.List;
import java.util.concurrent.CompletableFuture;

/**
 * Сервис для публикации аннотаций в социальных сетях и облачных сервисах
 */
public class AnnotationPublishService {
    
    private static AnnotationPublishService instance;
    private final Context context;
    private final AnnotationExportService exportService;
    
    private AnnotationPublishService(Context context) {
        this.context = context.getApplicationContext();
        this.exportService = AnnotationExportService.getInstance(context);
    }
    
    public static synchronized AnnotationPublishService getInstance(Context context) {
        if (instance == null) {
            instance = new AnnotationPublishService(context);
        }
        return instance;
    }
    
    /**
     * Поделиться аннотациями через системный диалог
     */
    public void shareAnnotations(List<Annotation> annotations, ShareOptions options) {
        CompletableFuture.runAsync(() -> {
            try {
                // Экспортируем в выбранный формат
                AnnotationExportService.ExportResult result = null;
                String fileName = "annotations_" + System.currentTimeMillis();
                
                switch (options.getFormat()) {
                    case PDF:
                        result = exportService.exportToPdf(annotations, fileName, options.getExportOptions());
                        break;
                    case HTML:
                        result = exportService.exportToHtml(annotations, fileName, options.getExportOptions());
                        break;
                    case JSON:
                        result = exportService.exportToJson(annotations, fileName, options.getExportOptions());
                        break;
                    case CSV:
                        result = exportService.exportToCsv(annotations, fileName, options.getExportOptions());
                        break;
                    case IMAGE:
                        result = exportService.exportToImage(annotations, fileName, options.getExportOptions());
                        break;
                    case TEXT:
                        result = exportToText(annotations, fileName);
                        break;
                }
                
                if (result != null && result.isSuccess()) {
                    // Создаем Intent для шаринга
                    createShareIntent(result.getFilePath(), options);
                } else {
                    // Обработка ошибки
                    if (options.getCallback() != null) {
                        options.getCallback().onError("Ошибка экспорта: " + (result != null ? result.getMessage() : "Неизвестная ошибка"));
                    }
                }
                
            } catch (Exception e) {
                if (options.getCallback() != null) {
                    options.getCallback().onError("Ошибка публикации: " + e.getMessage());
                }
            }
        });
    }
    
    /**
     * Поделиться одной аннотацией как текстом
     */
    public void shareAnnotationAsText(Annotation annotation) {
        StringBuilder text = new StringBuilder();
        
        if (annotation.getTitle() != null && !annotation.getTitle().isEmpty()) {
            text.append(annotation.getTitle()).append("\n\n");
        }
        
        if (annotation.getContent() != null && !annotation.getContent().isEmpty()) {
            text.append(annotation.getContent()).append("\n\n");
        }
        
        text.append("Страница: ").append(annotation.getPageNumber()).append("\n");
        text.append("Тип: ").append(getTypeDisplayName(annotation.getType())).append("\n");
        text.append("Приоритет: ").append(getPriorityDisplayName(annotation.getPriority())).append("\n");
        
        if (annotation.getTags() != null && !annotation.getTags().isEmpty()) {
            text.append("Теги: ").append(String.join(", ", annotation.getTags())).append("\n");
        }
        
        text.append("\n#MrComic #Аннотации");
        
        Intent shareIntent = new Intent(Intent.ACTION_SEND);
        shareIntent.setType("text/plain");
        shareIntent.putExtra(Intent.EXTRA_TEXT, text.toString());
        shareIntent.putExtra(Intent.EXTRA_SUBJECT, "Аннотация из Mr.Comic");
        shareIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        
        Intent chooser = Intent.createChooser(shareIntent, "Поделиться аннотацией");
        chooser.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        context.startActivity(chooser);
    }
    
    /**
     * Публикация в Twitter/X
     */
    public void shareToTwitter(List<Annotation> annotations, String customText) {
        StringBuilder tweetText = new StringBuilder();
        
        if (customText != null && !customText.isEmpty()) {
            tweetText.append(customText).append("\n\n");
        }
        
        // Добавляем краткую информацию об аннотациях
        if (annotations.size() == 1) {
            Annotation annotation = annotations.get(0);
            if (annotation.getTitle() != null && !annotation.getTitle().isEmpty()) {
                tweetText.append(annotation.getTitle());
            } else if (annotation.getContent() != null) {
                String content = annotation.getContent();
                if (content.length() > 100) {
                    content = content.substring(0, 97) + "...";
                }
                tweetText.append(content);
            }
        } else {
            tweetText.append("Поделился ").append(annotations.size()).append(" аннотациями из комикса");
        }
        
        tweetText.append("\n\n#MrComic #Комиксы #Аннотации");
        
        // Ограничиваем длину твита
        if (tweetText.length() > 280) {
            tweetText = new StringBuilder(tweetText.substring(0, 277) + "...");
        }
        
        try {
            Intent twitterIntent = new Intent(Intent.ACTION_SEND);
            twitterIntent.setType("text/plain");
            twitterIntent.putExtra(Intent.EXTRA_TEXT, tweetText.toString());
            twitterIntent.setPackage("com.twitter.android");
            twitterIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(twitterIntent);
        } catch (Exception e) {
            // Если Twitter не установлен, открываем веб-версию
            String encodedText = Uri.encode(tweetText.toString());
            String url = "https://twitter.com/intent/tweet?text=" + encodedText;
            Intent webIntent = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
            webIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(webIntent);
        }
    }
    
    /**
     * Публикация в Facebook
     */
    public void shareToFacebook(List<Annotation> annotations, String customText) {
        StringBuilder postText = new StringBuilder();
        
        if (customText != null && !customText.isEmpty()) {
            postText.append(customText).append("\n\n");
        }
        
        postText.append("Поделился аннотациями из комикса с помощью Mr.Comic!\n\n");
        
        // Добавляем информацию об аннотациях
        if (annotations.size() <= 3) {
            for (int i = 0; i < annotations.size(); i++) {
                Annotation annotation = annotations.get(i);
                postText.append(i + 1).append(". ");
                if (annotation.getTitle() != null && !annotation.getTitle().isEmpty()) {
                    postText.append(annotation.getTitle());
                } else if (annotation.getContent() != null) {
                    String content = annotation.getContent();
                    if (content.length() > 100) {
                        content = content.substring(0, 97) + "...";
                    }
                    postText.append(content);
                }
                postText.append("\n");
            }
        } else {
            postText.append("Всего аннотаций: ").append(annotations.size());
        }
        
        postText.append("\n#MrComic #Комиксы #Аннотации");
        
        try {
            Intent facebookIntent = new Intent(Intent.ACTION_SEND);
            facebookIntent.setType("text/plain");
            facebookIntent.putExtra(Intent.EXTRA_TEXT, postText.toString());
            facebookIntent.setPackage("com.facebook.katana");
            facebookIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(facebookIntent);
        } catch (Exception e) {
            // Если Facebook не установлен, используем общий диалог
            Intent shareIntent = new Intent(Intent.ACTION_SEND);
            shareIntent.setType("text/plain");
            shareIntent.putExtra(Intent.EXTRA_TEXT, postText.toString());
            shareIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            
            Intent chooser = Intent.createChooser(shareIntent, "Поделиться в Facebook");
            chooser.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(chooser);
        }
    }
    
    /**
     * Отправка по email
     */
    public void shareByEmail(List<Annotation> annotations, ShareOptions options) {
        CompletableFuture.runAsync(() -> {
            try {
                // Экспортируем аннотации
                String fileName = "annotations_" + System.currentTimeMillis();
                AnnotationExportService.ExportResult result = exportService.exportToPdf(annotations, fileName, options.getExportOptions());
                
                if (result.isSuccess()) {
                    // Создаем email intent
                    Intent emailIntent = new Intent(Intent.ACTION_SEND);
                    emailIntent.setType("application/pdf");
                    
                    // Прикрепляем файл
                    File file = new File(result.getFilePath());
                    Uri fileUri = FileProvider.getUriForFile(context, context.getPackageName() + ".fileprovider", file);
                    emailIntent.putExtra(Intent.EXTRA_STREAM, fileUri);
                    emailIntent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
                    
                    // Заполняем поля email
                    emailIntent.putExtra(Intent.EXTRA_SUBJECT, "Аннотации из Mr.Comic");
                    
                    StringBuilder emailBody = new StringBuilder();
                    emailBody.append("Привет!\n\n");
                    emailBody.append("Отправляю аннотации из комикса, созданные с помощью Mr.Comic.\n\n");
                    emailBody.append("Количество аннотаций: ").append(annotations.size()).append("\n");
                    
                    // Группируем по страницам
                    java.util.Map<Integer, Long> pageCount = annotations.stream()
                        .collect(java.util.stream.Collectors.groupingBy(
                            Annotation::getPageNumber, 
                            java.util.stream.Collectors.counting()
                        ));
                    
                    emailBody.append("Страницы: ").append(String.join(", ", 
                        pageCount.keySet().stream().map(String::valueOf).toArray(String[]::new))).append("\n\n");
                    
                    emailBody.append("С уважением,\nMr.Comic");
                    
                    emailIntent.putExtra(Intent.EXTRA_TEXT, emailBody.toString());
                    emailIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    
                    Intent chooser = Intent.createChooser(emailIntent, "Отправить по email");
                    chooser.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    context.startActivity(chooser);
                    
                    if (options.getCallback() != null) {
                        options.getCallback().onSuccess("Email создан успешно");
                    }
                } else {
                    if (options.getCallback() != null) {
                        options.getCallback().onError("Ошибка создания вложения: " + result.getMessage());
                    }
                }
                
            } catch (Exception e) {
                if (options.getCallback() != null) {
                    options.getCallback().onError("Ошибка отправки email: " + e.getMessage());
                }
            }
        });
    }
    
    /**
     * Сохранение в облачное хранилище
     */
    public void saveToCloud(List<Annotation> annotations, CloudService cloudService, ShareOptions options) {
        CompletableFuture.runAsync(() -> {
            try {
                // Экспортируем аннотации
                String fileName = "mr_comic_annotations_" + System.currentTimeMillis();
                AnnotationExportService.ExportResult result = null;
                
                switch (options.getFormat()) {
                    case PDF:
                        result = exportService.exportToPdf(annotations, fileName, options.getExportOptions());
                        break;
                    case JSON:
                        result = exportService.exportToJson(annotations, fileName, options.getExportOptions());
                        break;
                    default:
                        result = exportService.exportToPdf(annotations, fileName, options.getExportOptions());
                        break;
                }
                
                if (result != null && result.isSuccess()) {
                    // Открываем соответствующее облачное приложение
                    openCloudApp(result.getFilePath(), cloudService);
                    
                    if (options.getCallback() != null) {
                        options.getCallback().onSuccess("Файл подготовлен для сохранения в " + cloudService.getDisplayName());
                    }
                } else {
                    if (options.getCallback() != null) {
                        options.getCallback().onError("Ошибка подготовки файла: " + (result != null ? result.getMessage() : "Неизвестная ошибка"));
                    }
                }
                
            } catch (Exception e) {
                if (options.getCallback() != null) {
                    options.getCallback().onError("Ошибка сохранения в облако: " + e.getMessage());
                }
            }
        });
    }
    
    // Вспомогательные методы
    
    private void createShareIntent(String filePath, ShareOptions options) {
        try {
            File file = new File(filePath);
            Uri fileUri = FileProvider.getUriForFile(context, context.getPackageName() + ".fileprovider", file);
            
            Intent shareIntent = new Intent(Intent.ACTION_SEND);
            shareIntent.putExtra(Intent.EXTRA_STREAM, fileUri);
            shareIntent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            shareIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            
            // Определяем MIME тип
            String mimeType = getMimeType(options.getFormat());
            shareIntent.setType(mimeType);
            
            // Добавляем текст
            if (options.getCustomText() != null && !options.getCustomText().isEmpty()) {
                shareIntent.putExtra(Intent.EXTRA_TEXT, options.getCustomText());
            }
            
            shareIntent.putExtra(Intent.EXTRA_SUBJECT, "Аннотации из Mr.Comic");
            
            Intent chooser = Intent.createChooser(shareIntent, "Поделиться аннотациями");
            chooser.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(chooser);
            
            if (options.getCallback() != null) {
                options.getCallback().onSuccess("Диалог публикации открыт");
            }
            
        } catch (Exception e) {
            if (options.getCallback() != null) {
                options.getCallback().onError("Ошибка создания диалога публикации: " + e.getMessage());
            }
        }
    }
    
    private void openCloudApp(String filePath, CloudService cloudService) {
        try {
            File file = new File(filePath);
            Uri fileUri = FileProvider.getUriForFile(context, context.getPackageName() + ".fileprovider", file);
            
            Intent intent = new Intent(Intent.ACTION_SEND);
            intent.setType("application/*");
            intent.putExtra(Intent.EXTRA_STREAM, fileUri);
            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            
            switch (cloudService) {
                case GOOGLE_DRIVE:
                    intent.setPackage("com.google.android.apps.docs");
                    break;
                case DROPBOX:
                    intent.setPackage("com.dropbox.android");
                    break;
                case ONEDRIVE:
                    intent.setPackage("com.microsoft.skydrive");
                    break;
                case YANDEX_DISK:
                    intent.setPackage("ru.yandex.disk");
                    break;
            }
            
            try {
                context.startActivity(intent);
            } catch (Exception e) {
                // Если приложение не установлено, используем общий диалог
                intent.setPackage(null);
                Intent chooser = Intent.createChooser(intent, "Сохранить в " + cloudService.getDisplayName());
                chooser.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                context.startActivity(chooser);
            }
            
        } catch (Exception e) {
            throw new RuntimeException("Ошибка открытия облачного приложения", e);
        }
    }
    
    private AnnotationExportService.ExportResult exportToText(List<Annotation> annotations, String fileName) {
        try {
            File outputFile = new File(context.getExternalFilesDir("exports"), fileName + ".txt");
            
            StringBuilder text = new StringBuilder();
            text.append("АННОТАЦИИ КОМИКСА\n");
            text.append("==================\n\n");
            text.append("Экспортировано: ").append(new java.text.SimpleDateFormat("dd.MM.yyyy HH:mm", java.util.Locale.getDefault()).format(new java.util.Date())).append("\n");
            text.append("Всего аннотаций: ").append(annotations.size()).append("\n\n");
            
            // Группируем по страницам
            java.util.Map<Integer, List<Annotation>> annotationsByPage = annotations.stream()
                .collect(java.util.stream.Collectors.groupingBy(Annotation::getPageNumber));
            
            for (java.util.Map.Entry<Integer, List<Annotation>> entry : annotationsByPage.entrySet()) {
                text.append("СТРАНИЦА ").append(entry.getKey()).append("\n");
                text.append("----------\n\n");
                
                for (int i = 0; i < entry.getValue().size(); i++) {
                    Annotation annotation = entry.getValue().get(i);
                    text.append(i + 1).append(". ");
                    
                    if (annotation.getTitle() != null && !annotation.getTitle().isEmpty()) {
                        text.append(annotation.getTitle()).append("\n");
                    }
                    
                    if (annotation.getContent() != null && !annotation.getContent().isEmpty()) {
                        text.append("   ").append(annotation.getContent().replace("\n", "\n   ")).append("\n");
                    }
                    
                    text.append("   Тип: ").append(getTypeDisplayName(annotation.getType())).append("\n");
                    text.append("   Приоритет: ").append(getPriorityDisplayName(annotation.getPriority())).append("\n");
                    
                    if (annotation.getTags() != null && !annotation.getTags().isEmpty()) {
                        text.append("   Теги: ").append(String.join(", ", annotation.getTags())).append("\n");
                    }
                    
                    text.append("\n");
                }
                
                text.append("\n");
            }
            
            text.append("Создано с помощью Mr.Comic\n");
            
            // Сохраняем файл
            java.io.FileWriter writer = new java.io.FileWriter(outputFile);
            writer.write(text.toString());
            writer.close();
            
            return new AnnotationExportService.ExportResult(true, outputFile.getAbsolutePath(), "Текстовый экспорт завершен успешно");
            
        } catch (Exception e) {
            return new AnnotationExportService.ExportResult(false, null, "Ошибка текстового экспорта: " + e.getMessage());
        }
    }
    
    private String getMimeType(ExportFormat format) {
        switch (format) {
            case PDF: return "application/pdf";
            case HTML: return "text/html";
            case JSON: return "application/json";
            case CSV: return "text/csv";
            case IMAGE: return "image/png";
            case TEXT: return "text/plain";
            default: return "application/octet-stream";
        }
    }
    
    private String getTypeDisplayName(com.example.mrcomic.annotations.types.AnnotationType type) {
        switch (type) {
            case TEXT_NOTE: return "Текстовая заметка";
            case AUDIO_NOTE: return "Голосовая заметка";
            case HIGHLIGHT: return "Выделение";
            case FREEHAND_DRAWING: return "Рисунок";
            case EMOJI: return "Эмодзи";
            case QUESTION: return "Вопрос";
            case BOOKMARK: return "Закладка";
            default: return type.name();
        }
    }
    
    private String getPriorityDisplayName(com.example.mrcomic.annotations.types.AnnotationPriority priority) {
        switch (priority) {
            case CRITICAL: return "Критический";
            case HIGHEST: return "Наивысший";
            case HIGH: return "Высокий";
            case NORMAL: return "Обычный";
            case LOW: return "Низкий";
            case LOWEST: return "Наинизший";
            default: return priority.name();
        }
    }
    
    // Перечисления и классы
    
    public enum ExportFormat {
        PDF, HTML, JSON, CSV, IMAGE, TEXT
    }
    
    public enum CloudService {
        GOOGLE_DRIVE("Google Drive"),
        DROPBOX("Dropbox"),
        ONEDRIVE("OneDrive"),
        YANDEX_DISK("Яндекс.Диск");
        
        private final String displayName;
        
        CloudService(String displayName) {
            this.displayName = displayName;
        }
        
        public String getDisplayName() {
            return displayName;
        }
    }
    
    public static class ShareOptions {
        private ExportFormat format = ExportFormat.PDF;
        private String customText;
        private AnnotationExportService.ExportOptions exportOptions = new AnnotationExportService.ExportOptions();
        private ShareCallback callback;
        
        public ExportFormat getFormat() { return format; }
        public void setFormat(ExportFormat format) { this.format = format; }
        
        public String getCustomText() { return customText; }
        public void setCustomText(String customText) { this.customText = customText; }
        
        public AnnotationExportService.ExportOptions getExportOptions() { return exportOptions; }
        public void setExportOptions(AnnotationExportService.ExportOptions exportOptions) { this.exportOptions = exportOptions; }
        
        public ShareCallback getCallback() { return callback; }
        public void setCallback(ShareCallback callback) { this.callback = callback; }
    }
    
    public interface ShareCallback {
        void onSuccess(String message);
        void onError(String error);
    }
}


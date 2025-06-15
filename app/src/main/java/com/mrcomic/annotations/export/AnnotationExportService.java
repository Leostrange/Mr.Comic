package com.example.mrcomic.annotations.export;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import com.example.mrcomic.annotations.model.Annotation;
import com.example.mrcomic.annotations.types.AnnotationType;
import com.example.mrcomic.annotations.types.AnnotationPriority;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;

/**
 * Сервис для экспорта аннотаций в различные форматы
 */
public class AnnotationExportService {
    
    private static AnnotationExportService instance;
    private final Context context;
    private final SimpleDateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy HH:mm", Locale.getDefault());
    
    private AnnotationExportService(Context context) {
        this.context = context.getApplicationContext();
    }
    
    public static synchronized AnnotationExportService getInstance(Context context) {
        if (instance == null) {
            instance = new AnnotationExportService(context);
        }
        return instance;
    }
    
    /**
     * Экспорт аннотаций в PDF формат
     */
    public ExportResult exportToPdf(List<Annotation> annotations, String fileName, ExportOptions options) {
        try {
            File outputFile = new File(context.getExternalFilesDir("exports"), fileName + ".pdf");
            
            // Создаем PDF документ
            android.graphics.pdf.PdfDocument document = new android.graphics.pdf.PdfDocument();
            
            // Настройки страницы
            android.graphics.pdf.PdfDocument.PageInfo pageInfo = 
                new android.graphics.pdf.PdfDocument.PageInfo.Builder(595, 842, 1).create(); // A4
            
            android.graphics.pdf.PdfDocument.Page page = document.startPage(pageInfo);
            Canvas canvas = page.getCanvas();
            
            // Рисуем содержимое
            drawAnnotationsToPdf(canvas, annotations, options);
            
            document.finishPage(page);
            
            // Сохраняем файл
            FileOutputStream fos = new FileOutputStream(outputFile);
            document.writeTo(fos);
            document.close();
            fos.close();
            
            return new ExportResult(true, outputFile.getAbsolutePath(), "PDF экспорт завершен успешно");
            
        } catch (IOException e) {
            return new ExportResult(false, null, "Ошибка экспорта в PDF: " + e.getMessage());
        }
    }
    
    /**
     * Экспорт аннотаций в HTML формат
     */
    public ExportResult exportToHtml(List<Annotation> annotations, String fileName, ExportOptions options) {
        try {
            File outputFile = new File(context.getExternalFilesDir("exports"), fileName + ".html");
            
            StringBuilder html = new StringBuilder();
            html.append("<!DOCTYPE html>\n");
            html.append("<html lang=\"ru\">\n");
            html.append("<head>\n");
            html.append("    <meta charset=\"UTF-8\">\n");
            html.append("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
            html.append("    <title>Аннотации - ").append(fileName).append("</title>\n");
            html.append("    <style>\n");
            html.append(getHtmlStyles());
            html.append("    </style>\n");
            html.append("</head>\n");
            html.append("<body>\n");
            html.append("    <div class=\"container\">\n");
            html.append("        <header>\n");
            html.append("            <h1>Аннотации комикса</h1>\n");
            html.append("            <p class=\"export-info\">Экспортировано: ").append(dateFormat.format(new java.util.Date())).append("</p>\n");
            html.append("        </header>\n");
            html.append("        <main>\n");
            
            // Группируем аннотации по страницам
            java.util.Map<Integer, List<Annotation>> annotationsByPage = annotations.stream()
                .collect(java.util.stream.Collectors.groupingBy(Annotation::getPageNumber));
            
            for (java.util.Map.Entry<Integer, List<Annotation>> entry : annotationsByPage.entrySet()) {
                html.append("            <section class=\"page-section\">\n");
                html.append("                <h2>Страница ").append(entry.getKey()).append("</h2>\n");
                html.append("                <div class=\"annotations\">\n");
                
                for (Annotation annotation : entry.getValue()) {
                    html.append(generateAnnotationHtml(annotation));
                }
                
                html.append("                </div>\n");
                html.append("            </section>\n");
            }
            
            html.append("        </main>\n");
            html.append("        <footer>\n");
            html.append("            <p>Создано с помощью Mr.Comic</p>\n");
            html.append("        </footer>\n");
            html.append("    </div>\n");
            html.append("</body>\n");
            html.append("</html>");
            
            // Сохраняем файл
            java.io.FileWriter writer = new java.io.FileWriter(outputFile);
            writer.write(html.toString());
            writer.close();
            
            return new ExportResult(true, outputFile.getAbsolutePath(), "HTML экспорт завершен успешно");
            
        } catch (IOException e) {
            return new ExportResult(false, null, "Ошибка экспорта в HTML: " + e.getMessage());
        }
    }
    
    /**
     * Экспорт аннотаций в JSON формат
     */
    public ExportResult exportToJson(List<Annotation> annotations, String fileName, ExportOptions options) {
        try {
            File outputFile = new File(context.getExternalFilesDir("exports"), fileName + ".json");
            
            // Создаем JSON объект
            org.json.JSONObject jsonRoot = new org.json.JSONObject();
            jsonRoot.put("exportDate", dateFormat.format(new java.util.Date()));
            jsonRoot.put("version", "1.0");
            jsonRoot.put("totalAnnotations", annotations.size());
            
            org.json.JSONArray jsonAnnotations = new org.json.JSONArray();
            
            for (Annotation annotation : annotations) {
                org.json.JSONObject jsonAnnotation = new org.json.JSONObject();
                jsonAnnotation.put("id", annotation.getId());
                jsonAnnotation.put("comicId", annotation.getComicId());
                jsonAnnotation.put("pageNumber", annotation.getPageNumber());
                jsonAnnotation.put("type", annotation.getType().name());
                jsonAnnotation.put("title", annotation.getTitle());
                jsonAnnotation.put("content", annotation.getContent());
                jsonAnnotation.put("authorId", annotation.getAuthorId());
                jsonAnnotation.put("category", annotation.getCategory());
                jsonAnnotation.put("priority", annotation.getPriority().name());
                jsonAnnotation.put("status", annotation.getStatus().name());
                jsonAnnotation.put("x", annotation.getX());
                jsonAnnotation.put("y", annotation.getY());
                jsonAnnotation.put("width", annotation.getWidth());
                jsonAnnotation.put("height", annotation.getHeight());
                jsonAnnotation.put("color", annotation.getColor());
                jsonAnnotation.put("backgroundColor", annotation.getBackgroundColor());
                jsonAnnotation.put("createdAt", annotation.getCreatedAt().getTime());
                jsonAnnotation.put("updatedAt", annotation.getUpdatedAt().getTime());
                
                // Теги
                if (annotation.getTags() != null) {
                    org.json.JSONArray jsonTags = new org.json.JSONArray();
                    for (String tag : annotation.getTags()) {
                        jsonTags.put(tag);
                    }
                    jsonAnnotation.put("tags", jsonTags);
                }
                
                // Вложения
                if (annotation.getAttachments() != null) {
                    org.json.JSONArray jsonAttachments = new org.json.JSONArray();
                    for (String attachment : annotation.getAttachments()) {
                        jsonAttachments.put(attachment);
                    }
                    jsonAnnotation.put("attachments", jsonAttachments);
                }
                
                jsonAnnotations.put(jsonAnnotation);
            }
            
            jsonRoot.put("annotations", jsonAnnotations);
            
            // Сохраняем файл
            java.io.FileWriter writer = new java.io.FileWriter(outputFile);
            writer.write(jsonRoot.toString(2)); // Форматированный JSON
            writer.close();
            
            return new ExportResult(true, outputFile.getAbsolutePath(), "JSON экспорт завершен успешно");
            
        } catch (Exception e) {
            return new ExportResult(false, null, "Ошибка экспорта в JSON: " + e.getMessage());
        }
    }
    
    /**
     * Экспорт аннотаций в CSV формат
     */
    public ExportResult exportToCsv(List<Annotation> annotations, String fileName, ExportOptions options) {
        try {
            File outputFile = new File(context.getExternalFilesDir("exports"), fileName + ".csv");
            
            StringBuilder csv = new StringBuilder();
            
            // Заголовки
            csv.append("ID,Комикс,Страница,Тип,Заголовок,Содержимое,Автор,Категория,Приоритет,Статус,X,Y,Ширина,Высота,Цвет,Фон,Теги,Создано,Обновлено\n");
            
            for (Annotation annotation : annotations) {
                csv.append(annotation.getId()).append(",");
                csv.append(escapeCSV(annotation.getComicId())).append(",");
                csv.append(annotation.getPageNumber()).append(",");
                csv.append(annotation.getType().name()).append(",");
                csv.append(escapeCSV(annotation.getTitle())).append(",");
                csv.append(escapeCSV(annotation.getContent())).append(",");
                csv.append(escapeCSV(annotation.getAuthorId())).append(",");
                csv.append(escapeCSV(annotation.getCategory())).append(",");
                csv.append(annotation.getPriority().name()).append(",");
                csv.append(annotation.getStatus().name()).append(",");
                csv.append(annotation.getX()).append(",");
                csv.append(annotation.getY()).append(",");
                csv.append(annotation.getWidth()).append(",");
                csv.append(annotation.getHeight()).append(",");
                csv.append(escapeCSV(annotation.getColor())).append(",");
                csv.append(escapeCSV(annotation.getBackgroundColor())).append(",");
                
                // Теги
                if (annotation.getTags() != null && !annotation.getTags().isEmpty()) {
                    csv.append(escapeCSV(String.join(";", annotation.getTags())));
                }
                csv.append(",");
                
                csv.append(dateFormat.format(annotation.getCreatedAt())).append(",");
                csv.append(dateFormat.format(annotation.getUpdatedAt()));
                csv.append("\n");
            }
            
            // Сохраняем файл
            java.io.FileWriter writer = new java.io.FileWriter(outputFile);
            writer.write(csv.toString());
            writer.close();
            
            return new ExportResult(true, outputFile.getAbsolutePath(), "CSV экспорт завершен успешно");
            
        } catch (IOException e) {
            return new ExportResult(false, null, "Ошибка экспорта в CSV: " + e.getMessage());
        }
    }
    
    /**
     * Экспорт аннотаций как изображение
     */
    public ExportResult exportToImage(List<Annotation> annotations, String fileName, ExportOptions options) {
        try {
            File outputFile = new File(context.getExternalFilesDir("exports"), fileName + ".png");
            
            // Создаем bitmap
            int width = options.getImageWidth();
            int height = options.getImageHeight();
            Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap);
            
            // Рисуем фон
            canvas.drawColor(android.graphics.Color.WHITE);
            
            // Рисуем аннотации
            drawAnnotationsToImage(canvas, annotations, options);
            
            // Сохраняем файл
            FileOutputStream fos = new FileOutputStream(outputFile);
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fos);
            fos.close();
            bitmap.recycle();
            
            return new ExportResult(true, outputFile.getAbsolutePath(), "Экспорт изображения завершен успешно");
            
        } catch (IOException e) {
            return new ExportResult(false, null, "Ошибка экспорта изображения: " + e.getMessage());
        }
    }
    
    // Вспомогательные методы
    
    private void drawAnnotationsToPdf(Canvas canvas, List<Annotation> annotations, ExportOptions options) {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setTextSize(12);
        paint.setTypeface(Typeface.DEFAULT);
        
        int y = 50;
        int lineHeight = 20;
        
        // Заголовок
        paint.setTextSize(18);
        paint.setTypeface(Typeface.DEFAULT_BOLD);
        canvas.drawText("Аннотации комикса", 50, y, paint);
        y += 40;
        
        paint.setTextSize(12);
        paint.setTypeface(Typeface.DEFAULT);
        
        // Группируем по страницам
        java.util.Map<Integer, List<Annotation>> annotationsByPage = annotations.stream()
            .collect(java.util.stream.Collectors.groupingBy(Annotation::getPageNumber));
        
        for (java.util.Map.Entry<Integer, List<Annotation>> entry : annotationsByPage.entrySet()) {
            // Заголовок страницы
            paint.setTypeface(Typeface.DEFAULT_BOLD);
            canvas.drawText("Страница " + entry.getKey(), 50, y, paint);
            y += lineHeight + 10;
            
            paint.setTypeface(Typeface.DEFAULT);
            
            for (Annotation annotation : entry.getValue()) {
                // Тип и заголовок
                String header = annotation.getType().name();
                if (annotation.getTitle() != null && !annotation.getTitle().isEmpty()) {
                    header += ": " + annotation.getTitle();
                }
                canvas.drawText(header, 70, y, paint);
                y += lineHeight;
                
                // Содержимое
                if (annotation.getContent() != null && !annotation.getContent().isEmpty()) {
                    String[] lines = annotation.getContent().split("\n");
                    for (String line : lines) {
                        if (line.length() > 80) {
                            // Разбиваем длинные строки
                            String[] words = line.split(" ");
                            StringBuilder currentLine = new StringBuilder();
                            for (String word : words) {
                                if (currentLine.length() + word.length() > 80) {
                                    canvas.drawText(currentLine.toString(), 90, y, paint);
                                    y += lineHeight;
                                    currentLine = new StringBuilder(word);
                                } else {
                                    if (currentLine.length() > 0) currentLine.append(" ");
                                    currentLine.append(word);
                                }
                            }
                            if (currentLine.length() > 0) {
                                canvas.drawText(currentLine.toString(), 90, y, paint);
                                y += lineHeight;
                            }
                        } else {
                            canvas.drawText(line, 90, y, paint);
                            y += lineHeight;
                        }
                    }
                }
                
                y += 10; // Отступ между аннотациями
                
                // Проверяем, не выходим ли за границы страницы
                if (y > 800) {
                    // Нужна новая страница
                    break;
                }
            }
            
            y += 20; // Отступ между страницами
        }
    }
    
    private void drawAnnotationsToImage(Canvas canvas, List<Annotation> annotations, ExportOptions options) {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        
        int margin = 20;
        int y = margin;
        int lineHeight = 25;
        
        // Заголовок
        paint.setTextSize(24);
        paint.setTypeface(Typeface.DEFAULT_BOLD);
        paint.setColor(android.graphics.Color.BLACK);
        canvas.drawText("Аннотации", margin, y, paint);
        y += 40;
        
        paint.setTextSize(16);
        paint.setTypeface(Typeface.DEFAULT);
        
        for (Annotation annotation : annotations) {
            // Фон аннотации
            if (annotation.getBackgroundColor() != null) {
                try {
                    int bgColor = android.graphics.Color.parseColor(annotation.getBackgroundColor());
                    paint.setColor(bgColor);
                    canvas.drawRect(margin, y - lineHeight + 5, canvas.getWidth() - margin, y + 5, paint);
                } catch (IllegalArgumentException e) {
                    // Игнорируем неверные цвета
                }
            }
            
            // Текст аннотации
            paint.setColor(android.graphics.Color.BLACK);
            String text = annotation.getTitle() != null ? annotation.getTitle() : annotation.getContent();
            if (text != null) {
                canvas.drawText(text, margin + 10, y, paint);
            }
            
            y += lineHeight;
            
            // Проверяем границы
            if (y > canvas.getHeight() - margin) {
                break;
            }
        }
    }
    
    private String getHtmlStyles() {
        return """
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                line-height: 1.6;
                margin: 0;
                padding: 0;
                background-color: #f5f5f5;
            }
            .container {
                max-width: 1200px;
                margin: 0 auto;
                padding: 20px;
                background-color: white;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
            }
            header {
                text-align: center;
                margin-bottom: 30px;
                padding-bottom: 20px;
                border-bottom: 2px solid #e0e0e0;
            }
            h1 {
                color: #333;
                margin-bottom: 10px;
            }
            .export-info {
                color: #666;
                font-style: italic;
            }
            .page-section {
                margin-bottom: 40px;
            }
            .page-section h2 {
                color: #2196F3;
                border-left: 4px solid #2196F3;
                padding-left: 15px;
                margin-bottom: 20px;
            }
            .annotation {
                background: #fff;
                border: 1px solid #e0e0e0;
                border-radius: 8px;
                padding: 15px;
                margin-bottom: 15px;
                box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            }
            .annotation-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 10px;
            }
            .annotation-type {
                background: #2196F3;
                color: white;
                padding: 4px 8px;
                border-radius: 4px;
                font-size: 12px;
                font-weight: bold;
            }
            .annotation-priority {
                padding: 4px 8px;
                border-radius: 4px;
                font-size: 12px;
                font-weight: bold;
            }
            .priority-high { background: #FF9800; color: white; }
            .priority-normal { background: #4CAF50; color: white; }
            .priority-low { background: #9E9E9E; color: white; }
            .annotation-title {
                font-weight: bold;
                font-size: 16px;
                margin-bottom: 8px;
                color: #333;
            }
            .annotation-content {
                color: #555;
                margin-bottom: 10px;
                white-space: pre-wrap;
            }
            .annotation-meta {
                font-size: 12px;
                color: #888;
                border-top: 1px solid #f0f0f0;
                padding-top: 8px;
            }
            .tags {
                margin-top: 8px;
            }
            .tag {
                display: inline-block;
                background: #E3F2FD;
                color: #1976D2;
                padding: 2px 6px;
                border-radius: 12px;
                font-size: 11px;
                margin-right: 5px;
            }
            footer {
                text-align: center;
                margin-top: 40px;
                padding-top: 20px;
                border-top: 1px solid #e0e0e0;
                color: #888;
            }
            """;
    }
    
    private String generateAnnotationHtml(Annotation annotation) {
        StringBuilder html = new StringBuilder();
        
        html.append("                    <div class=\"annotation\">\n");
        html.append("                        <div class=\"annotation-header\">\n");
        html.append("                            <span class=\"annotation-type\">").append(getTypeDisplayName(annotation.getType())).append("</span>\n");
        html.append("                            <span class=\"annotation-priority priority-").append(annotation.getPriority().name().toLowerCase()).append("\">")
            .append(getPriorityDisplayName(annotation.getPriority())).append("</span>\n");
        html.append("                        </div>\n");
        
        if (annotation.getTitle() != null && !annotation.getTitle().isEmpty()) {
            html.append("                        <div class=\"annotation-title\">").append(escapeHtml(annotation.getTitle())).append("</div>\n");
        }
        
        if (annotation.getContent() != null && !annotation.getContent().isEmpty()) {
            html.append("                        <div class=\"annotation-content\">").append(escapeHtml(annotation.getContent())).append("</div>\n");
        }
        
        html.append("                        <div class=\"annotation-meta\">\n");
        html.append("                            <div>Автор: ").append(escapeHtml(annotation.getAuthorId())).append("</div>\n");
        html.append("                            <div>Создано: ").append(dateFormat.format(annotation.getCreatedAt())).append("</div>\n");
        html.append("                            <div>Позиция: (").append(String.format("%.1f", annotation.getX())).append(", ")
            .append(String.format("%.1f", annotation.getY())).append(")</div>\n");
        
        if (annotation.getTags() != null && !annotation.getTags().isEmpty()) {
            html.append("                            <div class=\"tags\">\n");
            for (String tag : annotation.getTags()) {
                html.append("                                <span class=\"tag\">").append(escapeHtml(tag)).append("</span>\n");
            }
            html.append("                            </div>\n");
        }
        
        html.append("                        </div>\n");
        html.append("                    </div>\n");
        
        return html.toString();
    }
    
    private String getTypeDisplayName(AnnotationType type) {
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
    
    private String getPriorityDisplayName(AnnotationPriority priority) {
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
    
    private String escapeHtml(String text) {
        if (text == null) return "";
        return text.replace("&", "&amp;")
                  .replace("<", "&lt;")
                  .replace(">", "&gt;")
                  .replace("\"", "&quot;")
                  .replace("'", "&#39;");
    }
    
    private String escapeCSV(String text) {
        if (text == null) return "";
        if (text.contains(",") || text.contains("\"") || text.contains("\n")) {
            return "\"" + text.replace("\"", "\"\"") + "\"";
        }
        return text;
    }
    
    // Классы для результатов и опций
    
    public static class ExportResult {
        private final boolean success;
        private final String filePath;
        private final String message;
        
        public ExportResult(boolean success, String filePath, String message) {
            this.success = success;
            this.filePath = filePath;
            this.message = message;
        }
        
        public boolean isSuccess() { return success; }
        public String getFilePath() { return filePath; }
        public String getMessage() { return message; }
    }
    
    public static class ExportOptions {
        private boolean includeMetadata = true;
        private boolean includeTags = true;
        private boolean includeAttachments = false;
        private int imageWidth = 1200;
        private int imageHeight = 1600;
        private String dateFormat = "dd.MM.yyyy HH:mm";
        
        // Геттеры и сеттеры
        public boolean isIncludeMetadata() { return includeMetadata; }
        public void setIncludeMetadata(boolean includeMetadata) { this.includeMetadata = includeMetadata; }
        
        public boolean isIncludeTags() { return includeTags; }
        public void setIncludeTags(boolean includeTags) { this.includeTags = includeTags; }
        
        public boolean isIncludeAttachments() { return includeAttachments; }
        public void setIncludeAttachments(boolean includeAttachments) { this.includeAttachments = includeAttachments; }
        
        public int getImageWidth() { return imageWidth; }
        public void setImageWidth(int imageWidth) { this.imageWidth = imageWidth; }
        
        public int getImageHeight() { return imageHeight; }
        public void setImageHeight(int imageHeight) { this.imageHeight = imageHeight; }
        
        public String getDateFormat() { return dateFormat; }
        public void setDateFormat(String dateFormat) { this.dateFormat = dateFormat; }
    }
}


package com.example.mrcomic.annotations.model;

import androidx.room.TypeConverter;
import com.example.mrcomic.annotations.types.AnnotationType;
import com.example.mrcomic.annotations.types.AnnotationPriority;
import com.example.mrcomic.annotations.types.AnnotationStatus;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Конвертеры типов для Room базы данных
 */
public class AnnotationConverters {
    
    private static final Gson gson = new Gson();
    
    // Конвертеры для Date
    @TypeConverter
    public static Date fromTimestamp(Long value) {
        return value == null ? null : new Date(value);
    }
    
    @TypeConverter
    public static Long dateToTimestamp(Date date) {
        return date == null ? null : date.getTime();
    }
    
    // Конвертеры для AnnotationType
    @TypeConverter
    public static AnnotationType fromAnnotationTypeString(String value) {
        return value == null ? null : AnnotationType.fromCode(value);
    }
    
    @TypeConverter
    public static String annotationTypeToString(AnnotationType type) {
        return type == null ? null : type.getCode();
    }
    
    // Конвертеры для AnnotationPriority
    @TypeConverter
    public static AnnotationPriority fromPriorityInt(Integer value) {
        return value == null ? null : AnnotationPriority.fromLevel(value);
    }
    
    @TypeConverter
    public static Integer priorityToInt(AnnotationPriority priority) {
        return priority == null ? null : priority.getLevel();
    }
    
    // Конвертеры для AnnotationStatus
    @TypeConverter
    public static AnnotationStatus fromStatusString(String value) {
        return value == null ? null : AnnotationStatus.fromCode(value);
    }
    
    @TypeConverter
    public static String statusToString(AnnotationStatus status) {
        return status == null ? null : status.getCode();
    }
    
    // Конвертеры для List<String>
    @TypeConverter
    public static List<String> fromStringList(String value) {
        if (value == null) {
            return null;
        }
        Type listType = new TypeToken<List<String>>(){}.getType();
        return gson.fromJson(value, listType);
    }
    
    @TypeConverter
    public static String stringListToString(List<String> list) {
        if (list == null) {
            return null;
        }
        return gson.toJson(list);
    }
    
    // Конвертеры для List<Long>
    @TypeConverter
    public static List<Long> fromLongList(String value) {
        if (value == null) {
            return null;
        }
        Type listType = new TypeToken<List<Long>>(){}.getType();
        return gson.fromJson(value, listType);
    }
    
    @TypeConverter
    public static String longListToString(List<Long> list) {
        if (list == null) {
            return null;
        }
        return gson.toJson(list);
    }
    
    // Конвертеры для Map<String, Object>
    @TypeConverter
    public static Map<String, Object> fromStringObjectMap(String value) {
        if (value == null) {
            return null;
        }
        Type mapType = new TypeToken<Map<String, Object>>(){}.getType();
        return gson.fromJson(value, mapType);
    }
    
    @TypeConverter
    public static String stringObjectMapToString(Map<String, Object> map) {
        if (map == null) {
            return null;
        }
        return gson.toJson(map);
    }
}


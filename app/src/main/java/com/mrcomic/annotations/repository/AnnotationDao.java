package com.example.mrcomic.annotations.repository;

import androidx.lifecycle.LiveData;
import androidx.room.*;
import com.example.mrcomic.annotations.model.Annotation;
import com.example.mrcomic.annotations.types.AnnotationType;
import com.example.mrcomic.annotations.types.AnnotationPriority;
import com.example.mrcomic.annotations.types.AnnotationStatus;
import java.util.Date;
import java.util.List;

/**
 * DAO для работы с аннотациями
 */
@Dao
public interface AnnotationDao {
    
    // Основные CRUD операции
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    long insertAnnotation(Annotation annotation);
    
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    List<Long> insertAnnotations(List<Annotation> annotations);
    
    @Update
    void updateAnnotation(Annotation annotation);
    
    @Update
    void updateAnnotations(List<Annotation> annotations);
    
    @Delete
    void deleteAnnotation(Annotation annotation);
    
    @Query("DELETE FROM annotations WHERE id = :id")
    void deleteAnnotationById(long id);
    
    @Query("DELETE FROM annotations WHERE comicId = :comicId")
    void deleteAnnotationsByComicId(String comicId);
    
    @Query("DELETE FROM annotations WHERE comicId = :comicId AND pageNumber = :pageNumber")
    void deleteAnnotationsByPage(String comicId, int pageNumber);
    
    // Получение аннотаций
    @Query("SELECT * FROM annotations WHERE id = :id")
    LiveData<Annotation> getAnnotationById(long id);
    
    @Query("SELECT * FROM annotations WHERE id = :id")
    Annotation getAnnotationByIdSync(long id);
    
    @Query("SELECT * FROM annotations WHERE comicId = :comicId ORDER BY pageNumber, createdAt")
    LiveData<List<Annotation>> getAnnotationsByComicId(String comicId);
    
    @Query("SELECT * FROM annotations WHERE comicId = :comicId AND pageNumber = :pageNumber ORDER BY zIndex, createdAt")
    LiveData<List<Annotation>> getAnnotationsByPage(String comicId, int pageNumber);
    
    @Query("SELECT * FROM annotations WHERE comicId = :comicId AND pageNumber = :pageNumber AND visible = 1 ORDER BY zIndex, createdAt")
    LiveData<List<Annotation>> getVisibleAnnotationsByPage(String comicId, int pageNumber);
    
    @Query("SELECT * FROM annotations WHERE authorId = :authorId ORDER BY updatedAt DESC")
    LiveData<List<Annotation>> getAnnotationsByAuthor(String authorId);
    
    // Поиск аннотаций
    @Query("SELECT * FROM annotations WHERE content LIKE '%' || :query || '%' OR title LIKE '%' || :query || '%' ORDER BY updatedAt DESC")
    LiveData<List<Annotation>> searchAnnotations(String query);
    
    @Query("SELECT * FROM annotations WHERE comicId = :comicId AND (content LIKE '%' || :query || '%' OR title LIKE '%' || :query || '%') ORDER BY pageNumber, createdAt")
    LiveData<List<Annotation>> searchAnnotationsInComic(String comicId, String query);
    
    // Фильтрация по типу
    @Query("SELECT * FROM annotations WHERE type = :type ORDER BY updatedAt DESC")
    LiveData<List<Annotation>> getAnnotationsByType(AnnotationType type);
    
    @Query("SELECT * FROM annotations WHERE comicId = :comicId AND type = :type ORDER BY pageNumber, createdAt")
    LiveData<List<Annotation>> getAnnotationsByComicAndType(String comicId, AnnotationType type);
    
    @Query("SELECT * FROM annotations WHERE comicId = :comicId AND pageNumber = :pageNumber AND type = :type ORDER BY zIndex, createdAt")
    LiveData<List<Annotation>> getAnnotationsByPageAndType(String comicId, int pageNumber, AnnotationType type);
    
    // Фильтрация по статусу и приоритету
    @Query("SELECT * FROM annotations WHERE status = :status ORDER BY updatedAt DESC")
    LiveData<List<Annotation>> getAnnotationsByStatus(AnnotationStatus status);
    
    @Query("SELECT * FROM annotations WHERE priority = :priority ORDER BY updatedAt DESC")
    LiveData<List<Annotation>> getAnnotationsByPriority(AnnotationPriority priority);
    
    @Query("SELECT * FROM annotations WHERE status = :status AND priority = :priority ORDER BY updatedAt DESC")
    LiveData<List<Annotation>> getAnnotationsByStatusAndPriority(AnnotationStatus status, AnnotationPriority priority);
    
    // Фильтрация по тегам и категориям
    @Query("SELECT * FROM annotations WHERE tags LIKE '%' || :tag || '%' ORDER BY updatedAt DESC")
    LiveData<List<Annotation>> getAnnotationsByTag(String tag);
    
    @Query("SELECT * FROM annotations WHERE category = :category ORDER BY updatedAt DESC")
    LiveData<List<Annotation>> getAnnotationsByCategory(String category);
    
    // Временные фильтры
    @Query("SELECT * FROM annotations WHERE createdAt >= :startDate AND createdAt <= :endDate ORDER BY createdAt DESC")
    LiveData<List<Annotation>> getAnnotationsByDateRange(Date startDate, Date endDate);
    
    @Query("SELECT * FROM annotations WHERE updatedAt >= :since ORDER BY updatedAt DESC")
    LiveData<List<Annotation>> getAnnotationsUpdatedSince(Date since);
    
    @Query("SELECT * FROM annotations WHERE createdAt >= :since ORDER BY createdAt DESC")
    LiveData<List<Annotation>> getAnnotationsCreatedSince(Date since);
    
    // Связанные аннотации
    @Query("SELECT * FROM annotations WHERE linkedAnnotationIds LIKE '%' || :annotationId || '%'")
    LiveData<List<Annotation>> getLinkedAnnotations(long annotationId);
    
    @Query("SELECT * FROM annotations WHERE parentAnnotationId = :parentId ORDER BY createdAt")
    LiveData<List<Annotation>> getChildAnnotations(String parentId);
    
    // Статистика
    @Query("SELECT COUNT(*) FROM annotations WHERE comicId = :comicId")
    LiveData<Integer> getAnnotationCountByComic(String comicId);
    
    @Query("SELECT COUNT(*) FROM annotations WHERE comicId = :comicId AND pageNumber = :pageNumber")
    LiveData<Integer> getAnnotationCountByPage(String comicId, int pageNumber);
    
    @Query("SELECT COUNT(*) FROM annotations WHERE authorId = :authorId")
    LiveData<Integer> getAnnotationCountByAuthor(String authorId);
    
    @Query("SELECT COUNT(*) FROM annotations WHERE type = :type")
    LiveData<Integer> getAnnotationCountByType(AnnotationType type);
    
    @Query("SELECT COUNT(*) FROM annotations WHERE status = :status")
    LiveData<Integer> getAnnotationCountByStatus(AnnotationStatus status);
    
    // Получение уникальных значений
    @Query("SELECT DISTINCT category FROM annotations WHERE category IS NOT NULL ORDER BY category")
    LiveData<List<String>> getAllCategories();
    
    @Query("SELECT DISTINCT authorId FROM annotations WHERE authorId IS NOT NULL ORDER BY authorId")
    LiveData<List<String>> getAllAuthors();
    
    @Query("SELECT DISTINCT comicId FROM annotations WHERE comicId IS NOT NULL ORDER BY comicId")
    LiveData<List<String>> getAllComicsWithAnnotations();
    
    // Массовые операции
    @Query("UPDATE annotations SET status = :newStatus WHERE id IN (:ids)")
    void updateAnnotationStatus(List<Long> ids, AnnotationStatus newStatus);
    
    @Query("UPDATE annotations SET priority = :newPriority WHERE id IN (:ids)")
    void updateAnnotationPriority(List<Long> ids, AnnotationPriority newPriority);
    
    @Query("UPDATE annotations SET category = :newCategory WHERE id IN (:ids)")
    void updateAnnotationCategory(List<Long> ids, String newCategory);
    
    @Query("UPDATE annotations SET visible = :visible WHERE id IN (:ids)")
    void updateAnnotationVisibility(List<Long> ids, boolean visible);
    
    @Query("DELETE FROM annotations WHERE id IN (:ids)")
    void deleteAnnotationsByIds(List<Long> ids);
    
    // Очистка и обслуживание
    @Query("DELETE FROM annotations WHERE status = 'deleted' AND updatedAt < :cutoffDate")
    void cleanupDeletedAnnotations(Date cutoffDate);
    
    @Query("UPDATE annotations SET status = 'archived' WHERE status = 'completed' AND updatedAt < :cutoffDate")
    void archiveOldCompletedAnnotations(Date cutoffDate);
    
    // Экспорт данных
    @Query("SELECT * FROM annotations WHERE comicId = :comicId ORDER BY pageNumber, zIndex, createdAt")
    List<Annotation> exportAnnotationsByComicSync(String comicId);
    
    @Query("SELECT * FROM annotations WHERE authorId = :authorId ORDER BY comicId, pageNumber, createdAt")
    List<Annotation> exportAnnotationsByAuthorSync(String authorId);
    
    @Query("SELECT * FROM annotations WHERE createdAt >= :startDate AND createdAt <= :endDate ORDER BY comicId, pageNumber, createdAt")
    List<Annotation> exportAnnotationsByDateRangeSync(Date startDate, Date endDate);
    
    // Полнотекстовый поиск (если поддерживается FTS)
    @Query("SELECT * FROM annotations WHERE annotations MATCH :query ORDER BY rank")
    LiveData<List<Annotation>> fullTextSearch(String query);
    
    // Геолокационный поиск
    @Query("SELECT * FROM annotations WHERE latitude != 0 AND longitude != 0 AND " +
           "latitude BETWEEN :minLat AND :maxLat AND longitude BETWEEN :minLng AND :maxLng")
    LiveData<List<Annotation>> getAnnotationsInBounds(double minLat, double maxLat, double minLng, double maxLng);
    
    // Получение последних аннотаций
    @Query("SELECT * FROM annotations ORDER BY updatedAt DESC LIMIT :limit")
    LiveData<List<Annotation>> getRecentAnnotations(int limit);
    
    @Query("SELECT * FROM annotations WHERE comicId = :comicId ORDER BY updatedAt DESC LIMIT :limit")
    LiveData<List<Annotation>> getRecentAnnotationsByComic(String comicId, int limit);
}


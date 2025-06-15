package com.example.mrcomic.annotations.repository;

import android.content.Context;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.example.mrcomic.annotations.model.Annotation;
import com.example.mrcomic.annotations.types.AnnotationType;
import com.example.mrcomic.annotations.types.AnnotationPriority;
import com.example.mrcomic.annotations.types.AnnotationStatus;
import java.util.Date;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Репозиторий для управления аннотациями
 * Обеспечивает единую точку доступа к данным аннотаций
 */
public class AnnotationRepository {
    
    private final AnnotationDao annotationDao;
    private final ExecutorService executorService;
    private final MutableLiveData<String> errorLiveData;
    
    // Singleton instance
    private static volatile AnnotationRepository INSTANCE;
    
    private AnnotationRepository(Context context) {
        // Инициализация DAO (предполагается, что база данных уже настроена)
        this.annotationDao = AnnotationDatabase.getInstance(context).annotationDao();
        this.executorService = Executors.newFixedThreadPool(4);
        this.errorLiveData = new MutableLiveData<>();
    }
    
    public static AnnotationRepository getInstance(Context context) {
        if (INSTANCE == null) {
            synchronized (AnnotationRepository.class) {
                if (INSTANCE == null) {
                    INSTANCE = new AnnotationRepository(context.getApplicationContext());
                }
            }
        }
        return INSTANCE;
    }
    
    // Основные операции с аннотациями
    
    /**
     * Создает новую аннотацию
     */
    public void createAnnotation(Annotation annotation, RepositoryCallback<Long> callback) {
        executorService.execute(() -> {
            try {
                long id = annotationDao.insertAnnotation(annotation);
                if (callback != null) {
                    callback.onSuccess(id);
                }
            } catch (Exception e) {
                handleError("Ошибка создания аннотации", e, callback);
            }
        });
    }
    
    /**
     * Обновляет существующую аннотацию
     */
    public void updateAnnotation(Annotation annotation, RepositoryCallback<Void> callback) {
        executorService.execute(() -> {
            try {
                annotation.updateTimestamp();
                annotationDao.updateAnnotation(annotation);
                if (callback != null) {
                    callback.onSuccess(null);
                }
            } catch (Exception e) {
                handleError("Ошибка обновления аннотации", e, callback);
            }
        });
    }
    
    /**
     * Удаляет аннотацию
     */
    public void deleteAnnotation(long annotationId, RepositoryCallback<Void> callback) {
        executorService.execute(() -> {
            try {
                annotationDao.deleteAnnotationById(annotationId);
                if (callback != null) {
                    callback.onSuccess(null);
                }
            } catch (Exception e) {
                handleError("Ошибка удаления аннотации", e, callback);
            }
        });
    }
    
    /**
     * Мягкое удаление аннотации (изменение статуса)
     */
    public void softDeleteAnnotation(long annotationId, RepositoryCallback<Void> callback) {
        executorService.execute(() -> {
            try {
                Annotation annotation = annotationDao.getAnnotationByIdSync(annotationId);
                if (annotation != null) {
                    annotation.setStatus(AnnotationStatus.DELETED);
                    annotation.updateTimestamp();
                    annotationDao.updateAnnotation(annotation);
                }
                if (callback != null) {
                    callback.onSuccess(null);
                }
            } catch (Exception e) {
                handleError("Ошибка удаления аннотации", e, callback);
            }
        });
    }
    
    // Получение аннотаций
    
    public LiveData<Annotation> getAnnotationById(long id) {
        return annotationDao.getAnnotationById(id);
    }
    
    public LiveData<List<Annotation>> getAnnotationsByComicId(String comicId) {
        return annotationDao.getAnnotationsByComicId(comicId);
    }
    
    public LiveData<List<Annotation>> getAnnotationsByPage(String comicId, int pageNumber) {
        return annotationDao.getAnnotationsByPage(comicId, pageNumber);
    }
    
    public LiveData<List<Annotation>> getVisibleAnnotationsByPage(String comicId, int pageNumber) {
        return annotationDao.getVisibleAnnotationsByPage(comicId, pageNumber);
    }
    
    public LiveData<List<Annotation>> getAnnotationsByAuthor(String authorId) {
        return annotationDao.getAnnotationsByAuthor(authorId);
    }
    
    // Поиск и фильтрация
    
    public LiveData<List<Annotation>> searchAnnotations(String query) {
        return annotationDao.searchAnnotations(query);
    }
    
    public LiveData<List<Annotation>> searchAnnotationsInComic(String comicId, String query) {
        return annotationDao.searchAnnotationsInComic(comicId, query);
    }
    
    public LiveData<List<Annotation>> getAnnotationsByType(AnnotationType type) {
        return annotationDao.getAnnotationsByType(type);
    }
    
    public LiveData<List<Annotation>> getAnnotationsByStatus(AnnotationStatus status) {
        return annotationDao.getAnnotationsByStatus(status);
    }
    
    public LiveData<List<Annotation>> getAnnotationsByPriority(AnnotationPriority priority) {
        return annotationDao.getAnnotationsByPriority(priority);
    }
    
    public LiveData<List<Annotation>> getAnnotationsByTag(String tag) {
        return annotationDao.getAnnotationsByTag(tag);
    }
    
    public LiveData<List<Annotation>> getAnnotationsByCategory(String category) {
        return annotationDao.getAnnotationsByCategory(category);
    }
    
    public LiveData<List<Annotation>> getAnnotationsByDateRange(Date startDate, Date endDate) {
        return annotationDao.getAnnotationsByDateRange(startDate, endDate);
    }
    
    public LiveData<List<Annotation>> getRecentAnnotations(int limit) {
        return annotationDao.getRecentAnnotations(limit);
    }
    
    // Связанные аннотации
    
    public LiveData<List<Annotation>> getLinkedAnnotations(long annotationId) {
        return annotationDao.getLinkedAnnotations(annotationId);
    }
    
    public LiveData<List<Annotation>> getChildAnnotations(String parentId) {
        return annotationDao.getChildAnnotations(parentId);
    }
    
    /**
     * Связывает две аннотации
     */
    public void linkAnnotations(long annotationId1, long annotationId2, RepositoryCallback<Void> callback) {
        executorService.execute(() -> {
            try {
                Annotation annotation1 = annotationDao.getAnnotationByIdSync(annotationId1);
                Annotation annotation2 = annotationDao.getAnnotationByIdSync(annotationId2);
                
                if (annotation1 != null && annotation2 != null) {
                    annotation1.addLinkedAnnotation(annotationId2);
                    annotation2.addLinkedAnnotation(annotationId1);
                    
                    annotationDao.updateAnnotation(annotation1);
                    annotationDao.updateAnnotation(annotation2);
                }
                
                if (callback != null) {
                    callback.onSuccess(null);
                }
            } catch (Exception e) {
                handleError("Ошибка связывания аннотаций", e, callback);
            }
        });
    }
    
    // Массовые операции
    
    public void createMultipleAnnotations(List<Annotation> annotations, RepositoryCallback<List<Long>> callback) {
        executorService.execute(() -> {
            try {
                List<Long> ids = annotationDao.insertAnnotations(annotations);
                if (callback != null) {
                    callback.onSuccess(ids);
                }
            } catch (Exception e) {
                handleError("Ошибка создания аннотаций", e, callback);
            }
        });
    }
    
    public void updateAnnotationStatus(List<Long> ids, AnnotationStatus newStatus, RepositoryCallback<Void> callback) {
        executorService.execute(() -> {
            try {
                annotationDao.updateAnnotationStatus(ids, newStatus);
                if (callback != null) {
                    callback.onSuccess(null);
                }
            } catch (Exception e) {
                handleError("Ошибка обновления статуса аннотаций", e, callback);
            }
        });
    }
    
    public void updateAnnotationPriority(List<Long> ids, AnnotationPriority newPriority, RepositoryCallback<Void> callback) {
        executorService.execute(() -> {
            try {
                annotationDao.updateAnnotationPriority(ids, newPriority);
                if (callback != null) {
                    callback.onSuccess(null);
                }
            } catch (Exception e) {
                handleError("Ошибка обновления приоритета аннотаций", e, callback);
            }
        });
    }
    
    public void deleteMultipleAnnotations(List<Long> ids, RepositoryCallback<Void> callback) {
        executorService.execute(() -> {
            try {
                annotationDao.deleteAnnotationsByIds(ids);
                if (callback != null) {
                    callback.onSuccess(null);
                }
            } catch (Exception e) {
                handleError("Ошибка удаления аннотаций", e, callback);
            }
        });
    }
    
    // Статистика
    
    public LiveData<Integer> getAnnotationCountByComic(String comicId) {
        return annotationDao.getAnnotationCountByComic(comicId);
    }
    
    public LiveData<Integer> getAnnotationCountByPage(String comicId, int pageNumber) {
        return annotationDao.getAnnotationCountByPage(comicId, pageNumber);
    }
    
    public LiveData<Integer> getAnnotationCountByAuthor(String authorId) {
        return annotationDao.getAnnotationCountByAuthor(authorId);
    }
    
    public LiveData<Integer> getAnnotationCountByType(AnnotationType type) {
        return annotationDao.getAnnotationCountByType(type);
    }
    
    // Утилитарные методы
    
    public LiveData<List<String>> getAllCategories() {
        return annotationDao.getAllCategories();
    }
    
    public LiveData<List<String>> getAllAuthors() {
        return annotationDao.getAllAuthors();
    }
    
    public LiveData<List<String>> getAllComicsWithAnnotations() {
        return annotationDao.getAllComicsWithAnnotations();
    }
    
    // Очистка и обслуживание
    
    public void cleanupOldAnnotations(RepositoryCallback<Void> callback) {
        executorService.execute(() -> {
            try {
                // Удаляем аннотации со статусом "deleted" старше 30 дней
                Date cutoffDate = new Date(System.currentTimeMillis() - 30L * 24 * 60 * 60 * 1000);
                annotationDao.cleanupDeletedAnnotations(cutoffDate);
                
                // Архивируем завершенные аннотации старше 90 дней
                Date archiveCutoffDate = new Date(System.currentTimeMillis() - 90L * 24 * 60 * 60 * 1000);
                annotationDao.archiveOldCompletedAnnotations(archiveCutoffDate);
                
                if (callback != null) {
                    callback.onSuccess(null);
                }
            } catch (Exception e) {
                handleError("Ошибка очистки аннотаций", e, callback);
            }
        });
    }
    
    // Экспорт данных
    
    public void exportAnnotationsByComic(String comicId, RepositoryCallback<List<Annotation>> callback) {
        executorService.execute(() -> {
            try {
                List<Annotation> annotations = annotationDao.exportAnnotationsByComicSync(comicId);
                if (callback != null) {
                    callback.onSuccess(annotations);
                }
            } catch (Exception e) {
                handleError("Ошибка экспорта аннотаций", e, callback);
            }
        });
    }
    
    public void exportAnnotationsByAuthor(String authorId, RepositoryCallback<List<Annotation>> callback) {
        executorService.execute(() -> {
            try {
                List<Annotation> annotations = annotationDao.exportAnnotationsByAuthorSync(authorId);
                if (callback != null) {
                    callback.onSuccess(annotations);
                }
            } catch (Exception e) {
                handleError("Ошибка экспорта аннотаций", e, callback);
            }
        });
    }
    
    // Обработка ошибок
    
    private void handleError(String message, Exception e, RepositoryCallback<?> callback) {
        String errorMessage = message + ": " + e.getMessage();
        errorLiveData.postValue(errorMessage);
        
        if (callback != null) {
            callback.onError(errorMessage, e);
        }
    }
    
    public LiveData<String> getErrorLiveData() {
        return errorLiveData;
    }
    
    // Интерфейс для колбэков
    public interface RepositoryCallback<T> {
        void onSuccess(T result);
        void onError(String message, Exception e);
    }
    
    // Очистка ресурсов
    public void cleanup() {
        if (executorService != null && !executorService.isShutdown()) {
            executorService.shutdown();
        }
    }
}


package com.example.mrcomic.annotations.viewmodel;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Transformations;
import com.example.mrcomic.annotations.model.Annotation;
import com.example.mrcomic.annotations.service.AnnotationService;
import com.example.mrcomic.annotations.service.IntelligentAnnotationService;
import com.example.mrcomic.annotations.service.AnnotationSummaryService;
import com.example.mrcomic.annotations.service.AnnotationRecommendationService;
import com.example.mrcomic.annotations.types.AnnotationType;
import com.example.mrcomic.annotations.types.AnnotationStatus;
import com.example.mrcomic.annotations.types.AnnotationPriority;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

/**
 * ViewModel для управления аннотациями в UI
 */
public class AnnotationViewModel extends AndroidViewModel {
    
    private final AnnotationService annotationService;
    private final IntelligentAnnotationService intelligentService;
    private final AnnotationSummaryService summaryService;
    private final AnnotationRecommendationService recommendationService;
    
    // Основные данные
    private final MutableLiveData<String> comicId = new MutableLiveData<>();
    private final MutableLiveData<Integer> pageNumber = new MutableLiveData<>();
    private final MutableLiveData<String> searchQuery = new MutableLiveData<>();
    
    // Состояние UI
    private final MutableLiveData<Boolean> isLoading = new MutableLiveData<>(false);
    private final MutableLiveData<String> errorMessage = new MutableLiveData<>();
    private final MutableLiveData<String> statusMessage = new MutableLiveData<>();
    
    // Фильтры и сортировка
    private final MutableLiveData<AnnotationType> typeFilter = new MutableLiveData<>();
    private final MutableLiveData<AnnotationStatus> statusFilter = new MutableLiveData<>();
    private final MutableLiveData<AnnotationPriority> priorityFilter = new MutableLiveData<>();
    private final MutableLiveData<String> categoryFilter = new MutableLiveData<>();
    private final MutableLiveData<String> authorFilter = new MutableLiveData<>();
    private final MutableLiveData<SortOption> sortOption = new MutableLiveData<>(SortOption.DATE_DESC);
    
    // Режимы отображения
    private final MutableLiveData<ViewMode> viewMode = new MutableLiveData<>(ViewMode.LIST);
    private final MutableLiveData<Boolean> showArchived = new MutableLiveData<>(false);
    private final MutableLiveData<Boolean> showDeleted = new MutableLiveData<>(false);
    
    // Выбранные элементы
    private final MutableLiveData<List<Long>> selectedAnnotationIds = new MutableLiveData<>();
    private final MutableLiveData<Boolean> isSelectionMode = new MutableLiveData<>(false);
    
    public AnnotationViewModel(@NonNull Application application) {
        super(application);
        
        this.annotationService = AnnotationService.getInstance(application);
        this.intelligentService = IntelligentAnnotationService.getInstance(application);
        this.summaryService = AnnotationSummaryService.getInstance(application);
        this.recommendationService = AnnotationRecommendationService.getInstance(application);
    }
    
    // Основные данные
    
    public LiveData<List<Annotation>> getAnnotations() {
        return Transformations.switchMap(comicId, comicIdValue -> {
            if (comicIdValue == null) return new MutableLiveData<>();
            
            Integer pageNum = pageNumber.getValue();
            if (pageNum != null && pageNum != -1) {
                return annotationService.getAnnotationsByPage(comicIdValue, pageNum);
            } else {
                return annotationService.getAnnotationsByComic(comicIdValue);
            }
        });
    }
    
    public LiveData<List<Annotation>> getFilteredAnnotations() {
        return Transformations.switchMap(getAnnotations(), annotations -> {
            // Применяем фильтры
            return applyFilters(annotations);
        });
    }
    
    public LiveData<List<Annotation>> getSearchResults() {
        return Transformations.switchMap(searchQuery, query -> {
            if (query == null || query.trim().isEmpty()) {
                return new MutableLiveData<>();
            }
            
            String comicIdValue = comicId.getValue();
            if (comicIdValue != null) {
                return annotationService.searchAnnotationsInComic(comicIdValue, query);
            } else {
                return annotationService.searchAnnotations(query);
            }
        });
    }
    
    public LiveData<Integer> getAnnotationCount() {
        return Transformations.map(getAnnotations(), annotations -> 
            annotations != null ? annotations.size() : 0);
    }
    
    // Статистика
    
    public LiveData<Map<AnnotationType, Integer>> getTypeStatistics() {
        return Transformations.map(getAnnotations(), annotations -> {
            Map<AnnotationType, Integer> stats = new HashMap<>();
            if (annotations != null) {
                for (Annotation annotation : annotations) {
                    AnnotationType type = annotation.getType();
                    stats.put(type, stats.getOrDefault(type, 0) + 1);
                }
            }
            return stats;
        });
    }
    
    public LiveData<Map<String, Integer>> getCategoryStatistics() {
        return Transformations.map(getAnnotations(), annotations -> {
            Map<String, Integer> stats = new HashMap<>();
            if (annotations != null) {
                for (Annotation annotation : annotations) {
                    String category = annotation.getCategory();
                    if (category != null) {
                        stats.put(category, stats.getOrDefault(category, 0) + 1);
                    }
                }
            }
            return stats;
        });
    }
    
    public LiveData<Map<AnnotationPriority, Integer>> getPriorityStatistics() {
        return Transformations.map(getAnnotations(), annotations -> {
            Map<AnnotationPriority, Integer> stats = new HashMap<>();
            if (annotations != null) {
                for (Annotation annotation : annotations) {
                    AnnotationPriority priority = annotation.getPriority();
                    stats.put(priority, stats.getOrDefault(priority, 0) + 1);
                }
            }
            return stats;
        });
    }
    
    // Операции с аннотациями
    
    public void createAnnotation(Annotation annotation) {
        isLoading.setValue(true);
        
        annotationService.createAnnotation(annotation, new AnnotationService.ServiceCallback<Long>() {
            @Override
            public void onSuccess(Long result) {
                isLoading.postValue(false);
                statusMessage.postValue("Аннотация создана");
            }
            
            @Override
            public void onError(String message, Exception e) {
                isLoading.postValue(false);
                errorMessage.postValue("Ошибка создания аннотации: " + message);
            }
        });
    }
    
    public void updateAnnotation(Annotation annotation) {
        isLoading.setValue(true);
        
        annotationService.updateAnnotation(annotation, new AnnotationService.ServiceCallback<Void>() {
            @Override
            public void onSuccess(Void result) {
                isLoading.postValue(false);
                statusMessage.postValue("Аннотация обновлена");
            }
            
            @Override
            public void onError(String message, Exception e) {
                isLoading.postValue(false);
                errorMessage.postValue("Ошибка обновления аннотации: " + message);
            }
        });
    }
    
    public void deleteAnnotation(long annotationId) {
        isLoading.setValue(true);
        
        annotationService.deleteAnnotation(annotationId, new AnnotationService.ServiceCallback<Void>() {
            @Override
            public void onSuccess(Void result) {
                isLoading.postValue(false);
                statusMessage.postValue("Аннотация удалена");
            }
            
            @Override
            public void onError(String message, Exception e) {
                isLoading.postValue(false);
                errorMessage.postValue("Ошибка удаления аннотации: " + message);
            }
        });
    }
    
    public void archiveAnnotation(long annotationId) {
        isLoading.setValue(true);
        
        annotationService.archiveAnnotation(annotationId, new AnnotationService.ServiceCallback<Void>() {
            @Override
            public void onSuccess(Void result) {
                isLoading.postValue(false);
                statusMessage.postValue("Аннотация архивирована");
            }
            
            @Override
            public void onError(String message, Exception e) {
                isLoading.postValue(false);
                errorMessage.postValue("Ошибка архивирования аннотации: " + message);
            }
        });
    }
    
    // Массовые операции
    
    public void deleteSelectedAnnotations() {
        List<Long> selectedIds = selectedAnnotationIds.getValue();
        if (selectedIds == null || selectedIds.isEmpty()) {
            return;
        }
        
        isLoading.setValue(true);
        
        annotationService.deleteMultipleAnnotations(selectedIds, new AnnotationService.ServiceCallback<Void>() {
            @Override
            public void onSuccess(Void result) {
                isLoading.postValue(false);
                statusMessage.postValue("Удалено " + selectedIds.size() + " аннотаций");
                clearSelection();
            }
            
            @Override
            public void onError(String message, Exception e) {
                isLoading.postValue(false);
                errorMessage.postValue("Ошибка удаления аннотаций: " + message);
            }
        });
    }
    
    public void archiveSelectedAnnotations() {
        List<Long> selectedIds = selectedAnnotationIds.getValue();
        if (selectedIds == null || selectedIds.isEmpty()) {
            return;
        }
        
        isLoading.setValue(true);
        
        annotationService.updateAnnotationStatus(selectedIds, AnnotationStatus.ARCHIVED, 
            new AnnotationService.ServiceCallback<Void>() {
                @Override
                public void onSuccess(Void result) {
                    isLoading.postValue(false);
                    statusMessage.postValue("Архивировано " + selectedIds.size() + " аннотаций");
                    clearSelection();
                }
                
                @Override
                public void onError(String message, Exception e) {
                    isLoading.postValue(false);
                    errorMessage.postValue("Ошибка архивирования аннотаций: " + message);
                }
            });
    }
    
    public void changePriorityForSelected(AnnotationPriority newPriority) {
        List<Long> selectedIds = selectedAnnotationIds.getValue();
        if (selectedIds == null || selectedIds.isEmpty()) {
            return;
        }
        
        isLoading.setValue(true);
        
        annotationService.updateAnnotationPriority(selectedIds, newPriority, 
            new AnnotationService.ServiceCallback<Void>() {
                @Override
                public void onSuccess(Void result) {
                    isLoading.postValue(false);
                    statusMessage.postValue("Приоритет изменен для " + selectedIds.size() + " аннотаций");
                    clearSelection();
                }
                
                @Override
                public void onError(String message, Exception e) {
                    isLoading.postValue(false);
                    errorMessage.postValue("Ошибка изменения приоритета: " + message);
                }
            });
    }
    
    // Поиск и фильтрация
    
    public void searchAnnotations(String query) {
        searchQuery.setValue(query);
    }
    
    public void clearSearch() {
        searchQuery.setValue("");
    }
    
    public void setTypeFilter(AnnotationType type) {
        typeFilter.setValue(type);
    }
    
    public void setStatusFilter(AnnotationStatus status) {
        statusFilter.setValue(status);
    }
    
    public void setPriorityFilter(AnnotationPriority priority) {
        priorityFilter.setValue(priority);
    }
    
    public void setCategoryFilter(String category) {
        categoryFilter.setValue(category);
    }
    
    public void setAuthorFilter(String author) {
        authorFilter.setValue(author);
    }
    
    public void clearAllFilters() {
        typeFilter.setValue(null);
        statusFilter.setValue(null);
        priorityFilter.setValue(null);
        categoryFilter.setValue(null);
        authorFilter.setValue(null);
    }
    
    private MutableLiveData<List<Annotation>> applyFilters(List<Annotation> annotations) {
        MutableLiveData<List<Annotation>> filteredData = new MutableLiveData<>();
        
        if (annotations == null) {
            filteredData.setValue(null);
            return filteredData;
        }
        
        List<Annotation> filtered = annotations.stream()
            .filter(annotation -> {
                // Фильтр по типу
                AnnotationType typeFilterValue = typeFilter.getValue();
                if (typeFilterValue != null && annotation.getType() != typeFilterValue) {
                    return false;
                }
                
                // Фильтр по статусу
                AnnotationStatus statusFilterValue = statusFilter.getValue();
                if (statusFilterValue != null && annotation.getStatus() != statusFilterValue) {
                    return false;
                }
                
                // Фильтр по приоритету
                AnnotationPriority priorityFilterValue = priorityFilter.getValue();
                if (priorityFilterValue != null && annotation.getPriority() != priorityFilterValue) {
                    return false;
                }
                
                // Фильтр по категории
                String categoryFilterValue = categoryFilter.getValue();
                if (categoryFilterValue != null && !categoryFilterValue.equals(annotation.getCategory())) {
                    return false;
                }
                
                // Фильтр по автору
                String authorFilterValue = authorFilter.getValue();
                if (authorFilterValue != null && !authorFilterValue.equals(annotation.getAuthorId())) {
                    return false;
                }
                
                // Фильтр архивированных
                Boolean showArchivedValue = showArchived.getValue();
                if (showArchivedValue != null && !showArchivedValue && 
                    annotation.getStatus() == AnnotationStatus.ARCHIVED) {
                    return false;
                }
                
                // Фильтр удаленных
                Boolean showDeletedValue = showDeleted.getValue();
                if (showDeletedValue != null && !showDeletedValue && 
                    annotation.getStatus() == AnnotationStatus.DELETED) {
                    return false;
                }
                
                return true;
            })
            .collect(java.util.stream.Collectors.toList());
        
        // Применяем сортировку
        SortOption sortOptionValue = sortOption.getValue();
        if (sortOptionValue != null) {
            applySorting(filtered, sortOptionValue);
        }
        
        filteredData.setValue(filtered);
        return filteredData;
    }
    
    private void applySorting(List<Annotation> annotations, SortOption sortOption) {
        switch (sortOption) {
            case DATE_ASC:
                annotations.sort((a, b) -> a.getCreatedAt().compareTo(b.getCreatedAt()));
                break;
            case DATE_DESC:
                annotations.sort((a, b) -> b.getCreatedAt().compareTo(a.getCreatedAt()));
                break;
            case TITLE_ASC:
                annotations.sort((a, b) -> {
                    String titleA = a.getTitle() != null ? a.getTitle() : "";
                    String titleB = b.getTitle() != null ? b.getTitle() : "";
                    return titleA.compareToIgnoreCase(titleB);
                });
                break;
            case TITLE_DESC:
                annotations.sort((a, b) -> {
                    String titleA = a.getTitle() != null ? a.getTitle() : "";
                    String titleB = b.getTitle() != null ? b.getTitle() : "";
                    return titleB.compareToIgnoreCase(titleA);
                });
                break;
            case PRIORITY_DESC:
                annotations.sort((a, b) -> b.getPriority().getLevel() - a.getPriority().getLevel());
                break;
            case TYPE:
                annotations.sort((a, b) -> a.getType().compareTo(b.getType()));
                break;
        }
    }
    
    // Управление выбором
    
    public void toggleSelection(long annotationId) {
        List<Long> currentSelection = selectedAnnotationIds.getValue();
        if (currentSelection == null) {
            currentSelection = new java.util.ArrayList<>();
        } else {
            currentSelection = new java.util.ArrayList<>(currentSelection);
        }
        
        if (currentSelection.contains(annotationId)) {
            currentSelection.remove(annotationId);
        } else {
            currentSelection.add(annotationId);
        }
        
        selectedAnnotationIds.setValue(currentSelection);
        isSelectionMode.setValue(!currentSelection.isEmpty());
    }
    
    public void selectAll() {
        List<Annotation> annotations = getAnnotations().getValue();
        if (annotations != null) {
            List<Long> allIds = annotations.stream()
                .map(Annotation::getId)
                .collect(java.util.stream.Collectors.toList());
            selectedAnnotationIds.setValue(allIds);
            isSelectionMode.setValue(true);
        }
    }
    
    public void clearSelection() {
        selectedAnnotationIds.setValue(new java.util.ArrayList<>());
        isSelectionMode.setValue(false);
    }
    
    // Геттеры и сеттеры
    
    public void setComicId(String comicId) {
        this.comicId.setValue(comicId);
    }
    
    public void setPageNumber(int pageNumber) {
        this.pageNumber.setValue(pageNumber);
    }
    
    public void setSortOption(SortOption sortOption) {
        this.sortOption.setValue(sortOption);
    }
    
    public void setViewMode(ViewMode viewMode) {
        this.viewMode.setValue(viewMode);
    }
    
    public void setShowArchived(boolean showArchived) {
        this.showArchived.setValue(showArchived);
    }
    
    public void setShowDeleted(boolean showDeleted) {
        this.showDeleted.setValue(showDeleted);
    }
    
    // LiveData геттеры
    
    public LiveData<Boolean> getLoadingState() {
        return isLoading;
    }
    
    public LiveData<String> getErrorMessage() {
        return errorMessage;
    }
    
    public LiveData<String> getStatusMessage() {
        return statusMessage;
    }
    
    public LiveData<ViewMode> getViewMode() {
        return viewMode;
    }
    
    public LiveData<SortOption> getSortOption() {
        return sortOption;
    }
    
    public LiveData<List<Long>> getSelectedAnnotationIds() {
        return selectedAnnotationIds;
    }
    
    public LiveData<Boolean> getIsSelectionMode() {
        return isSelectionMode;
    }
    
    public LiveData<Boolean> getShowArchived() {
        return showArchived;
    }
    
    public LiveData<Boolean> getShowDeleted() {
        return showDeleted;
    }
    
    // Очистка ресурсов
    
    public void cleanup() {
        annotationService.cleanup();
        intelligentService.cleanup();
        summaryService.cleanup();
        recommendationService.cleanup();
    }
    
    @Override
    protected void onCleared() {
        super.onCleared();
        cleanup();
    }
    
    // Перечисления
    
    public enum SortOption {
        DATE_ASC("Дата (старые)"),
        DATE_DESC("Дата (новые)"),
        TITLE_ASC("Название (А-Я)"),
        TITLE_DESC("Название (Я-А)"),
        PRIORITY_DESC("Приоритет"),
        TYPE("Тип");
        
        private final String displayName;
        
        SortOption(String displayName) {
            this.displayName = displayName;
        }
        
        public String getDisplayName() {
            return displayName;
        }
    }
    
    public enum ViewMode {
        LIST("Список"),
        GRID("Сетка"),
        TIMELINE("Хронология");
        
        private final String displayName;
        
        ViewMode(String displayName) {
            this.displayName = displayName;
        }
        
        public String getDisplayName() {
            return displayName;
        }
    }
}


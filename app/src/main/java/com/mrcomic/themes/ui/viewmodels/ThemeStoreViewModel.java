package com.example.mrcomic.themes.ui.viewmodels;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;

import com.example.mrcomic.themes.model.Theme;
import com.example.mrcomic.themes.model.ThemeCategory;
import com.example.mrcomic.themes.service.ThemeStoreService;

import java.util.List;

/**
 * ViewModel для стора тем
 * Управляет состоянием UI и взаимодействием с сервисным слоем
 */
public class ThemeStoreViewModel extends AndroidViewModel {
    
    private final ThemeStoreService storeService;
    
    // LiveData для различных состояний
    private final MutableLiveData<Boolean> loadingLiveData = new MutableLiveData<>(false);
    private final MutableLiveData<String> errorLiveData = new MutableLiveData<>();
    private final MutableLiveData<List<Theme>> searchResultsLiveData = new MutableLiveData<>();
    
    // Кэшированные данные
    private LiveData<List<Theme>> featuredThemes;
    private LiveData<List<Theme>> trendingThemes;
    private LiveData<List<Theme>> newThemes;
    private LiveData<List<Theme>> favoriteThemes;
    
    public ThemeStoreViewModel(@NonNull Application application) {
        super(application);
        this.storeService = new ThemeStoreService(application);
    }
    
    // Геттеры для LiveData
    public LiveData<Boolean> getLoadingLiveData() { return loadingLiveData; }
    public LiveData<String> getErrorLiveData() { return errorLiveData; }
    public LiveData<String> getStatusLiveData() { return storeService.getStatusLiveData(); }
    public LiveData<List<Theme>> getSearchResultsLiveData() { return searchResultsLiveData; }
    
    // === ЗАГРУЗКА ДАННЫХ ===
    
    public LiveData<List<Theme>> loadFeaturedThemes() {
        if (featuredThemes == null) {
            featuredThemes = storeService.getFeaturedThemes();
        }
        return featuredThemes;
    }
    
    public LiveData<List<Theme>> loadTrendingThemes() {
        if (trendingThemes == null) {
            trendingThemes = storeService.getTrendingThemes();
        }
        return trendingThemes;
    }
    
    public LiveData<List<Theme>> loadNewThemes() {
        if (newThemes == null) {
            newThemes = storeService.getNewThemes();
        }
        return newThemes;
    }
    
    public LiveData<List<Theme>> loadFavoriteThemes() {
        if (favoriteThemes == null) {
            favoriteThemes = storeService.getRecommendedThemes();
        }
        return favoriteThemes;
    }
    
    public void loadCategories() {
        // Загружаем категории тем
        loadingLiveData.setValue(true);
        // Здесь должна быть логика загрузки категорий
        loadingLiveData.setValue(false);
    }
    
    public void loadMyThemes() {
        // Загружаем темы пользователя
        loadingLiveData.setValue(true);
        // Здесь должна быть логика загрузки пользовательских тем
        loadingLiveData.setValue(false);
    }
    
    // === ПОИСК ===
    
    public void searchThemes(String query) {
        if (query == null || query.trim().isEmpty()) {
            clearSearch();
            return;
        }
        
        loadingLiveData.setValue(true);
        
        storeService.searchThemes(query.trim()).observeForever(themes -> {
            searchResultsLiveData.setValue(themes);
            loadingLiveData.setValue(false);
        });
    }
    
    public void clearSearch() {
        searchResultsLiveData.setValue(null);
    }
    
    // === ОПЕРАЦИИ С ТЕМАМИ ===
    
    public void downloadTheme(String themeId) {
        storeService.downloadAndInstallTheme(themeId)
            .exceptionally(throwable -> {
                errorLiveData.postValue("Ошибка загрузки: " + throwable.getMessage());
                return null;
            });
    }
    
    public void toggleFavorite(String themeId) {
        storeService.toggleFavorite(themeId)
            .exceptionally(throwable -> {
                errorLiveData.postValue("Ошибка: " + throwable.getMessage());
                return null;
            });
    }
    
    public void uninstallTheme(String themeId) {
        storeService.uninstallTheme(themeId)
            .exceptionally(throwable -> {
                errorLiveData.postValue("Ошибка удаления: " + throwable.getMessage());
                return null;
            });
    }
    
    // === СТАТИСТИКА ===
    
    public LiveData<Integer> getTotalThemeCount() {
        return storeService.getTotalThemeCount();
    }
    
    public LiveData<Long> getTotalDownloadCount() {
        return storeService.getTotalDownloadCount();
    }
    
    // === ОЧИСТКА РЕСУРСОВ ===
    
    public void cleanup() {
        storeService.cleanup();
    }
    
    @Override
    protected void onCleared() {
        super.onCleared();
        cleanup();
    }
}


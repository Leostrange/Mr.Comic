package com.example.mrcomic.themes.service;

import android.content.Context;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;

import com.example.mrcomic.themes.model.Theme;
import com.example.mrcomic.themes.model.ThemeCategory;
import com.example.mrcomic.themes.repository.ThemeRepository;

import java.util.List;
import java.util.concurrent.CompletableFuture;

/**
 * Сервис для управления стором тем
 * Предоставляет высокоуровневые операции для работы с каталогом тем
 */
public class ThemeStoreService {
    
    private final ThemeRepository repository;
    private final MutableLiveData<String> statusLiveData = new MutableLiveData<>();
    
    public ThemeStoreService(Context context) {
        this.repository = new ThemeRepository(context);
    }
    
    public LiveData<String> getStatusLiveData() { return statusLiveData; }
    
    // === КАТАЛОГ ТЕМ ===
    
    public LiveData<List<Theme>> getFeaturedThemes() {
        return repository.getFeaturedThemes();
    }
    
    public LiveData<List<Theme>> getTrendingThemes() {
        return repository.getTrendingThemes(20);
    }
    
    public LiveData<List<Theme>> getNewThemes() {
        return repository.getNewThemes(20);
    }
    
    public LiveData<List<Theme>> getThemesByCategory(ThemeCategory category) {
        return repository.getThemesByCategory(category);
    }
    
    public LiveData<List<Theme>> searchThemes(String query) {
        return repository.searchThemes(query);
    }
    
    public LiveData<List<Theme>> getRecommendedThemes() {
        return repository.getRecommendedThemes(15);
    }
    
    // === УПРАВЛЕНИЕ ТЕМАМИ ===
    
    public CompletableFuture<Void> downloadAndInstallTheme(String themeId) {
        return CompletableFuture.runAsync(() -> {
            try {
                statusLiveData.postValue("Загрузка темы...");
                
                // Симуляция загрузки
                Thread.sleep(2000);
                
                statusLiveData.postValue("Установка темы...");
                
                // Устанавливаем тему
                repository.installTheme(themeId, "1.0.0").get();
                
                statusLiveData.postValue("Тема успешно установлена!");
                
                // Очищаем статус через 3 секунды
                Thread.sleep(3000);
                statusLiveData.postValue(null);
                
            } catch (Exception e) {
                statusLiveData.postValue("Ошибка: " + e.getMessage());
            }
        });
    }
    
    public CompletableFuture<Void> uninstallTheme(String themeId) {
        return repository.uninstallTheme(themeId);
    }
    
    public CompletableFuture<Void> toggleFavorite(String themeId) {
        return repository.toggleFavorite(themeId);
    }
    
    // === СТАТИСТИКА ===
    
    public LiveData<Integer> getTotalThemeCount() {
        return repository.getTotalThemeCount();
    }
    
    public LiveData<Long> getTotalDownloadCount() {
        return repository.getTotalDownloadCount();
    }
    
    public void cleanup() {
        repository.cleanup();
    }
}


package com.example.mrcomic.themes.repository;

import android.content.Context;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;

import com.example.mrcomic.themes.model.Theme;
import com.example.mrcomic.themes.model.ThemeRating;
import com.example.mrcomic.themes.model.ThemeCreator;
import com.example.mrcomic.themes.model.ThemeCategory;

import java.util.Date;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Основной репозиторий для управления темами
 * Единая точка доступа к данным тем, рейтингов и создателей
 */
public class ThemeRepository {
    
    private final ThemeDao themeDao;
    private final ThemeRatingDao ratingDao;
    private final ThemeCreatorDao creatorDao;
    private final ExecutorService executor;
    
    private final MutableLiveData<String> errorLiveData = new MutableLiveData<>();
    private final MutableLiveData<Boolean> loadingLiveData = new MutableLiveData<>(false);
    
    public ThemeRepository(Context context) {
        ThemeDatabase database = ThemeDatabase.getInstance(context);
        this.themeDao = database.themeDao();
        this.ratingDao = database.ratingDao();
        this.creatorDao = database.creatorDao();
        this.executor = Executors.newFixedThreadPool(4);
    }
    
    // Геттеры для состояния
    public LiveData<String> getErrorLiveData() { return errorLiveData; }
    public LiveData<Boolean> getLoadingLiveData() { return loadingLiveData; }
    
    // === ОПЕРАЦИИ С ТЕМАМИ ===
    
    public LiveData<List<Theme>> getAllThemes() {
        return themeDao.getAllThemes();
    }
    
    public LiveData<Theme> getThemeById(String themeId) {
        return themeDao.getThemeById(themeId);
    }
    
    public LiveData<List<Theme>> getThemesByCategory(ThemeCategory category) {
        return themeDao.getThemesByCategory(category);
    }
    
    public LiveData<List<Theme>> getFeaturedThemes() {
        return themeDao.getFeaturedThemes();
    }
    
    public LiveData<List<Theme>> getTrendingThemes(int limit) {
        Date since = new Date(System.currentTimeMillis() - 7 * 24 * 60 * 60 * 1000L); // 7 дней назад
        return themeDao.getTrendingThemes(since, limit);
    }
    
    public LiveData<List<Theme>> getNewThemes(int limit) {
        Date since = new Date(System.currentTimeMillis() - 30 * 24 * 60 * 60 * 1000L); // 30 дней назад
        return themeDao.getNewThemes(since, limit);
    }
    
    public LiveData<List<Theme>> searchThemes(String query) {
        return themeDao.searchThemesAdvanced(query);
    }
    
    public LiveData<List<Theme>> getInstalledThemes() {
        return themeDao.getInstalledThemes();
    }
    
    public LiveData<List<Theme>> getFavoriteThemes() {
        return themeDao.getFavoriteThemes();
    }
    
    public CompletableFuture<Void> insertTheme(Theme theme) {
        return CompletableFuture.runAsync(() -> {
            try {
                loadingLiveData.postValue(true);
                themeDao.insertTheme(theme);
                errorLiveData.postValue(null);
            } catch (Exception e) {
                errorLiveData.postValue("Ошибка при добавлении темы: " + e.getMessage());
            } finally {
                loadingLiveData.postValue(false);
            }
        }, executor);
    }
    
    public CompletableFuture<Void> updateTheme(Theme theme) {
        return CompletableFuture.runAsync(() -> {
            try {
                loadingLiveData.postValue(true);
                theme.setUpdatedAt(new Date());
                themeDao.updateTheme(theme);
                errorLiveData.postValue(null);
            } catch (Exception e) {
                errorLiveData.postValue("Ошибка при обновлении темы: " + e.getMessage());
            } finally {
                loadingLiveData.postValue(false);
            }
        }, executor);
    }
    
    public CompletableFuture<Void> deleteTheme(String themeId) {
        return CompletableFuture.runAsync(() -> {
            try {
                loadingLiveData.postValue(true);
                themeDao.deleteThemeById(themeId);
                ratingDao.deleteAllRatingsForTheme(themeId);
                errorLiveData.postValue(null);
            } catch (Exception e) {
                errorLiveData.postValue("Ошибка при удалении темы: " + e.getMessage());
            } finally {
                loadingLiveData.postValue(false);
            }
        }, executor);
    }
    
    public CompletableFuture<Void> installTheme(String themeId, String version) {
        return CompletableFuture.runAsync(() -> {
            try {
                loadingLiveData.postValue(true);
                Date now = new Date();
                themeDao.updateInstallationStatus(themeId, true, version, now);
                themeDao.incrementDownloadCount(themeId);
                errorLiveData.postValue(null);
            } catch (Exception e) {
                errorLiveData.postValue("Ошибка при установке темы: " + e.getMessage());
            } finally {
                loadingLiveData.postValue(false);
            }
        }, executor);
    }
    
    public CompletableFuture<Void> uninstallTheme(String themeId) {
        return CompletableFuture.runAsync(() -> {
            try {
                loadingLiveData.postValue(true);
                themeDao.updateInstallationStatus(themeId, false, null, null);
                errorLiveData.postValue(null);
            } catch (Exception e) {
                errorLiveData.postValue("Ошибка при удалении темы: " + e.getMessage());
            } finally {
                loadingLiveData.postValue(false);
            }
        }, executor);
    }
    
    public CompletableFuture<Void> toggleFavorite(String themeId) {
        return CompletableFuture.runAsync(() -> {
            try {
                Theme theme = themeDao.getThemeByIdSync(themeId);
                if (theme != null) {
                    boolean newFavoriteStatus = !Boolean.TRUE.equals(theme.getIsFavorite());
                    themeDao.updateFavoriteStatus(themeId, newFavoriteStatus);
                }
                errorLiveData.postValue(null);
            } catch (Exception e) {
                errorLiveData.postValue("Ошибка при изменении избранного: " + e.getMessage());
            }
        }, executor);
    }
    
    // === ОПЕРАЦИИ С РЕЙТИНГАМИ ===
    
    public LiveData<List<ThemeRating>> getRatingsForTheme(String themeId) {
        return ratingDao.getRatingsForThemeSortedByHelpfulness(themeId);
    }
    
    public LiveData<ThemeRating> getUserRatingForTheme(String themeId, String userId) {
        return ratingDao.getUserRatingForTheme(themeId, userId);
    }
    
    public LiveData<Double> getAverageRatingForTheme(String themeId) {
        return ratingDao.getAverageRatingForTheme(themeId);
    }
    
    public LiveData<Integer> getRatingCountForTheme(String themeId) {
        return ratingDao.getRatingCountForTheme(themeId);
    }
    
    public CompletableFuture<Void> submitRating(ThemeRating rating) {
        return CompletableFuture.runAsync(() -> {
            try {
                loadingLiveData.postValue(true);
                
                // Вставляем или обновляем рейтинг
                ratingDao.insertRating(rating);
                
                // Обновляем статистику темы
                updateThemeRatingStats(rating.getThemeId());
                
                // Обновляем статистику автора
                Theme theme = themeDao.getThemeByIdSync(rating.getThemeId());
                if (theme != null) {
                    updateCreatorRatingStats(theme.getAuthorId());
                }
                
                errorLiveData.postValue(null);
            } catch (Exception e) {
                errorLiveData.postValue("Ошибка при отправке рейтинга: " + e.getMessage());
            } finally {
                loadingLiveData.postValue(false);
            }
        }, executor);
    }
    
    public CompletableFuture<Void> markRatingHelpful(long ratingId, boolean helpful) {
        return CompletableFuture.runAsync(() -> {
            try {
                if (helpful) {
                    ratingDao.incrementHelpfulCount(ratingId);
                } else {
                    ratingDao.incrementNotHelpfulCount(ratingId);
                }
                errorLiveData.postValue(null);
            } catch (Exception e) {
                errorLiveData.postValue("Ошибка при оценке отзыва: " + e.getMessage());
            }
        }, executor);
    }
    
    // === ОПЕРАЦИИ С СОЗДАТЕЛЯМИ ===
    
    public LiveData<List<ThemeCreator>> getAllCreators() {
        return creatorDao.getAllCreators();
    }
    
    public LiveData<ThemeCreator> getCreatorById(String creatorId) {
        return creatorDao.getCreatorById(creatorId);
    }
    
    public LiveData<List<ThemeCreator>> getTopCreatorsByDownloads(int limit) {
        return creatorDao.getTopCreatorsByDownloads(limit);
    }
    
    public LiveData<List<ThemeCreator>> getFeaturedCreators() {
        return creatorDao.getFeaturedCreators();
    }
    
    public LiveData<List<ThemeCreator>> searchCreators(String query) {
        return creatorDao.searchCreators(query);
    }
    
    public CompletableFuture<Void> insertCreator(ThemeCreator creator) {
        return CompletableFuture.runAsync(() -> {
            try {
                loadingLiveData.postValue(true);
                creatorDao.insertCreator(creator);
                errorLiveData.postValue(null);
            } catch (Exception e) {
                errorLiveData.postValue("Ошибка при добавлении создателя: " + e.getMessage());
            } finally {
                loadingLiveData.postValue(false);
            }
        }, executor);
    }
    
    public CompletableFuture<Void> followCreator(String creatorId) {
        return CompletableFuture.runAsync(() -> {
            try {
                creatorDao.incrementFollowerCount(creatorId);
                creatorDao.updateLastActive(creatorId, new Date());
                errorLiveData.postValue(null);
            } catch (Exception e) {
                errorLiveData.postValue("Ошибка при подписке: " + e.getMessage());
            }
        }, executor);
    }
    
    public CompletableFuture<Void> unfollowCreator(String creatorId) {
        return CompletableFuture.runAsync(() -> {
            try {
                creatorDao.decrementFollowerCount(creatorId);
                errorLiveData.postValue(null);
            } catch (Exception e) {
                errorLiveData.postValue("Ошибка при отписке: " + e.getMessage());
            }
        }, executor);
    }
    
    // === СТАТИСТИКА И АНАЛИТИКА ===
    
    public LiveData<Integer> getTotalThemeCount() {
        return themeDao.getTotalThemeCount();
    }
    
    public LiveData<Long> getTotalDownloadCount() {
        return themeDao.getTotalDownloadCount();
    }
    
    public LiveData<Double> getAverageRating() {
        return themeDao.getAverageRating();
    }
    
    public LiveData<List<ThemeDao.CategoryCount>> getCategoryStatistics() {
        return themeDao.getCategoryStatistics();
    }
    
    public LiveData<List<ThemeDao.AuthorStatistics>> getTopAuthors(int limit) {
        return themeDao.getTopAuthors(limit);
    }
    
    // === РЕКОМЕНДАЦИИ ===
    
    public LiveData<List<Theme>> getRecommendedThemes(int limit) {
        return themeDao.getRecommendedThemes(limit);
    }
    
    public LiveData<List<Theme>> getSimilarThemes(String themeId, int limit) {
        return themeDao.getSimilarThemes(themeId, limit);
    }
    
    public LiveData<List<Theme>> getThemesByFavoriteAuthors(int limit) {
        return themeDao.getThemesByFavoriteAuthors(limit);
    }
    
    // === ВСПОМОГАТЕЛЬНЫЕ МЕТОДЫ ===
    
    private void updateThemeRatingStats(String themeId) {
        try {
            double avgRating = ratingDao.getAverageRatingForThemeSync(themeId);
            int ratingCount = ratingDao.getRatingCountForThemeSync(themeId);
            Date now = new Date();
            themeDao.updateThemeRating(themeId, avgRating, ratingCount, now);
        } catch (Exception e) {
            // Логируем ошибку, но не прерываем выполнение
        }
    }
    
    private void updateCreatorRatingStats(String creatorId) {
        try {
            // Здесь должна быть логика обновления статистики создателя
            // Пока оставляем заглушку
            creatorDao.updateLastActive(creatorId, new Date());
        } catch (Exception e) {
            // Логируем ошибку, но не прерываем выполнение
        }
    }
    
    // === ОЧИСТКА РЕСУРСОВ ===
    
    public void cleanup() {
        if (executor != null && !executor.isShutdown()) {
            executor.shutdown();
        }
    }
}


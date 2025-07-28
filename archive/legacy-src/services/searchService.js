import { authService } from './authService';

// Сервис для работы с поиском и фильтрацией
class SearchService {
  constructor() {
    this.baseURL = process.env.REACT_APP_API_URL || 'http://localhost:3001/api';
    this.cache = new Map();
    this.cacheTimeout = 5 * 60 * 1000; // 5 минут
  }

  // Генерация ключа кэша
  generateCacheKey(query, filters) {
    return JSON.stringify({ query, filters });
  }

  // Проверка актуальности кэша
  isCacheValid(cacheEntry) {
    return Date.now() - cacheEntry.timestamp < this.cacheTimeout;
  }

  // Получение данных из кэша
  getFromCache(key) {
    const cacheEntry = this.cache.get(key);
    if (cacheEntry && this.isCacheValid(cacheEntry)) {
      return cacheEntry.data;
    }
    return null;
  }

  // Сохранение данных в кэш
  setCache(key, data) {
    this.cache.set(key, {
      data,
      timestamp: Date.now()
    });
  }

  // Очистка устаревшего кэша
  clearExpiredCache() {
    for (const [key, entry] of this.cache.entries()) {
      if (!this.isCacheValid(entry)) {
        this.cache.delete(key);
      }
    }
  }

  // Поиск комиксов с фильтрацией
  async searchComics(query = '', filters = {}, useCache = true) {
    try {
      const cacheKey = this.generateCacheKey(query, filters);
      
      // Проверяем кэш
      if (useCache) {
        const cachedResult = this.getFromCache(cacheKey);
        if (cachedResult) {
          return {
            success: true,
            data: cachedResult,
            fromCache: true
          };
        }
      }

      const queryParams = new URLSearchParams();
      
      // Добавляем поисковый запрос
      if (query) {
        queryParams.append('q', query);
      }
      
      // Добавляем фильтры
      if (filters.genres && filters.genres.length > 0) {
        queryParams.append('genres', filters.genres.join(','));
      }
      
      if (filters.authors && filters.authors.length > 0) {
        queryParams.append('authors', filters.authors.join(','));
      }
      
      if (filters.rating) {
        if (filters.rating.min > 0) {
          queryParams.append('ratingMin', filters.rating.min);
        }
        if (filters.rating.max < 10) {
          queryParams.append('ratingMax', filters.rating.max);
        }
      }
      
      if (filters.status) {
        queryParams.append('status', filters.status);
      }
      
      if (filters.sortBy) {
        queryParams.append('sortBy', filters.sortBy);
      }
      
      if (filters.sortOrder) {
        queryParams.append('sortOrder', filters.sortOrder);
      }
      
      if (filters.page) {
        queryParams.append('page', filters.page);
      }
      
      if (filters.limit) {
        queryParams.append('limit', filters.limit);
      }

      const response = await authService.apiRequest(`/search/comics?${queryParams.toString()}`);
      const data = await response.json();

      if (response.ok) {
        // Сохраняем в кэш
        if (useCache) {
          this.setCache(cacheKey, data);
        }
        
        return {
          success: true,
          data: data,
          fromCache: false
        };
      } else {
        return {
          success: false,
          message: data.message || 'Ошибка поиска'
        };
      }
    } catch (error) {
      console.error('Search error:', error);
      return {
        success: false,
        message: 'Ошибка сети. Проверьте подключение к интернету.'
      };
    }
  }

  // Получение подсказок для автодополнения
  async getSuggestions(query, limit = 10) {
    try {
      if (!query || query.length < 2) {
        return {
          success: true,
          data: []
        };
      }

      const cacheKey = `suggestions_${query}_${limit}`;
      const cachedResult = this.getFromCache(cacheKey);
      if (cachedResult) {
        return {
          success: true,
          data: cachedResult,
          fromCache: true
        };
      }

      const queryParams = new URLSearchParams({
        q: query,
        limit: limit.toString()
      });

      const response = await authService.apiRequest(`/search/suggestions?${queryParams.toString()}`);
      const data = await response.json();

      if (response.ok) {
        this.setCache(cacheKey, data);
        return {
          success: true,
          data: data,
          fromCache: false
        };
      } else {
        return {
          success: false,
          message: data.message || 'Ошибка получения подсказок'
        };
      }
    } catch (error) {
      console.error('Suggestions error:', error);
      return {
        success: false,
        message: 'Ошибка сети. Проверьте подключение к интернету.'
      };
    }
  }

  // Получение популярных поисковых запросов
  async getPopularSearches(limit = 10) {
    try {
      const cacheKey = `popular_searches_${limit}`;
      const cachedResult = this.getFromCache(cacheKey);
      if (cachedResult) {
        return {
          success: true,
          data: cachedResult,
          fromCache: true
        };
      }

      const response = await authService.apiRequest(`/search/popular?limit=${limit}`);
      const data = await response.json();

      if (response.ok) {
        this.setCache(cacheKey, data);
        return {
          success: true,
          data: data,
          fromCache: false
        };
      } else {
        return {
          success: false,
          message: data.message || 'Ошибка получения популярных запросов'
        };
      }
    } catch (error) {
      console.error('Popular searches error:', error);
      return {
        success: false,
        message: 'Ошибка сети. Проверьте подключение к интернету.'
      };
    }
  }

  // Получение доступных жанров
  async getGenres() {
    try {
      const cacheKey = 'genres';
      const cachedResult = this.getFromCache(cacheKey);
      if (cachedResult) {
        return {
          success: true,
          data: cachedResult,
          fromCache: true
        };
      }

      const response = await authService.apiRequest('/search/genres');
      const data = await response.json();

      if (response.ok) {
        this.setCache(cacheKey, data);
        return {
          success: true,
          data: data,
          fromCache: false
        };
      } else {
        return {
          success: false,
          message: data.message || 'Ошибка получения жанров'
        };
      }
    } catch (error) {
      console.error('Genres error:', error);
      return {
        success: false,
        message: 'Ошибка сети. Проверьте подключение к интернету.'
      };
    }
  }

  // Получение доступных авторов
  async getAuthors(limit = 50) {
    try {
      const cacheKey = `authors_${limit}`;
      const cachedResult = this.getFromCache(cacheKey);
      if (cachedResult) {
        return {
          success: true,
          data: cachedResult,
          fromCache: true
        };
      }

      const response = await authService.apiRequest(`/search/authors?limit=${limit}`);
      const data = await response.json();

      if (response.ok) {
        this.setCache(cacheKey, data);
        return {
          success: true,
          data: data,
          fromCache: false
        };
      } else {
        return {
          success: false,
          message: data.message || 'Ошибка получения авторов'
        };
      }
    } catch (error) {
      console.error('Authors error:', error);
      return {
        success: false,
        message: 'Ошибка сети. Проверьте подключение к интернету.'
      };
    }
  }

  // Сохранение поискового запроса в историю
  async saveSearchHistory(query, filters = {}) {
    try {
      const response = await authService.apiRequest('/search/history', {
        method: 'POST',
        body: JSON.stringify({ query, filters })
      });

      if (response.ok) {
        return { success: true };
      } else {
        const data = await response.json();
        return {
          success: false,
          message: data.message || 'Ошибка сохранения истории поиска'
        };
      }
    } catch (error) {
      console.error('Save search history error:', error);
      return {
        success: false,
        message: 'Ошибка сети. Проверьте подключение к интернету.'
      };
    }
  }

  // Получение истории поиска пользователя
  async getSearchHistory(limit = 20) {
    try {
      const response = await authService.apiRequest(`/search/history?limit=${limit}`);
      const data = await response.json();

      if (response.ok) {
        return {
          success: true,
          data: data
        };
      } else {
        return {
          success: false,
          message: data.message || 'Ошибка получения истории поиска'
        };
      }
    } catch (error) {
      console.error('Get search history error:', error);
      return {
        success: false,
        message: 'Ошибка сети. Проверьте подключение к интернету.'
      };
    }
  }

  // Очистка истории поиска
  async clearSearchHistory() {
    try {
      const response = await authService.apiRequest('/search/history', {
        method: 'DELETE'
      });

      if (response.ok) {
        return { success: true };
      } else {
        const data = await response.json();
        return {
          success: false,
          message: data.message || 'Ошибка очистки истории поиска'
        };
      }
    } catch (error) {
      console.error('Clear search history error:', error);
      return {
        success: false,
        message: 'Ошибка сети. Проверьте подключение к интернету.'
      };
    }
  }

  // Очистка всего кэша
  clearCache() {
    this.cache.clear();
  }

  // Получение статистики кэша
  getCacheStats() {
    this.clearExpiredCache();
    return {
      size: this.cache.size,
      keys: Array.from(this.cache.keys())
    };
  }
}

// Экспортируем единственный экземпляр сервиса
export const searchService = new SearchService();


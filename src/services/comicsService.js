import { authService } from './authService';

// Сервис для работы с комиксами
class ComicsService {
  constructor() {
    this.baseURL = process.env.REACT_APP_API_URL || 'http://localhost:3001/api';
  }

  // Получение списка комиксов с фильтрацией и пагинацией
  async getComics(params = {}) {
    try {
      const queryParams = new URLSearchParams();
      
      // Добавляем параметры запроса
      if (params.page) queryParams.append('page', params.page);
      if (params.limit) queryParams.append('limit', params.limit);
      if (params.search) queryParams.append('search', params.search);
      if (params.genre) queryParams.append('genre', params.genre);
      if (params.author) queryParams.append('author', params.author);
      if (params.sortBy) queryParams.append('sortBy', params.sortBy);
      if (params.sortOrder) queryParams.append('sortOrder', params.sortOrder);

      const response = await authService.apiRequest(`/comics?${queryParams.toString()}`);
      const data = await response.json();

      if (response.ok) {
        return {
          success: true,
          data: data
        };
      } else {
        return {
          success: false,
          message: data.message || 'Ошибка загрузки комиксов'
        };
      }
    } catch (error) {
      console.error('Error fetching comics:', error);
      return {
        success: false,
        message: 'Ошибка сети. Проверьте подключение к интернету.'
      };
    }
  }

  // Получение информации о конкретном комиксе
  async getComicById(comicId) {
    try {
      const response = await authService.apiRequest(`/comics/${comicId}`);
      const data = await response.json();

      if (response.ok) {
        return {
          success: true,
          data: data
        };
      } else {
        return {
          success: false,
          message: data.message || 'Комикс не найден'
        };
      }
    } catch (error) {
      console.error('Error fetching comic:', error);
      return {
        success: false,
        message: 'Ошибка сети. Проверьте подключение к интернету.'
      };
    }
  }

  // Получение глав комикса
  async getComicChapters(comicId) {
    try {
      const response = await authService.apiRequest(`/comics/${comicId}/chapters`);
      const data = await response.json();

      if (response.ok) {
        return {
          success: true,
          data: data
        };
      } else {
        return {
          success: false,
          message: data.message || 'Ошибка загрузки глав'
        };
      }
    } catch (error) {
      console.error('Error fetching chapters:', error);
      return {
        success: false,
        message: 'Ошибка сети. Проверьте подключение к интернету.'
      };
    }
  }

  // Получение страниц главы
  async getChapterPages(comicId, chapterId) {
    try {
      const response = await authService.apiRequest(`/comics/${comicId}/chapters/${chapterId}/pages`);
      const data = await response.json();

      if (response.ok) {
        return {
          success: true,
          data: data
        };
      } else {
        return {
          success: false,
          message: data.message || 'Ошибка загрузки страниц'
        };
      }
    } catch (error) {
      console.error('Error fetching pages:', error);
      return {
        success: false,
        message: 'Ошибка сети. Проверьте подключение к интернету.'
      };
    }
  }

  // Поиск комиксов
  async searchComics(query, filters = {}) {
    try {
      const params = {
        search: query,
        ...filters
      };
      
      return await this.getComics(params);
    } catch (error) {
      console.error('Error searching comics:', error);
      return {
        success: false,
        message: 'Ошибка поиска. Попробуйте снова.'
      };
    }
  }

  // Получение популярных комиксов
  async getPopularComics(limit = 10) {
    try {
      const params = {
        sortBy: 'popularity',
        sortOrder: 'desc',
        limit: limit
      };
      
      return await this.getComics(params);
    } catch (error) {
      console.error('Error fetching popular comics:', error);
      return {
        success: false,
        message: 'Ошибка загрузки популярных комиксов.'
      };
    }
  }

  // Получение новых комиксов
  async getNewComics(limit = 10) {
    try {
      const params = {
        sortBy: 'publishDate',
        sortOrder: 'desc',
        limit: limit
      };
      
      return await this.getComics(params);
    } catch (error) {
      console.error('Error fetching new comics:', error);
      return {
        success: false,
        message: 'Ошибка загрузки новых комиксов.'
      };
    }
  }

  // Получение рекомендованных комиксов
  async getRecommendedComics(limit = 10) {
    try {
      const response = await authService.apiRequest(`/comics/recommended?limit=${limit}`);
      const data = await response.json();

      if (response.ok) {
        return {
          success: true,
          data: data
        };
      } else {
        return {
          success: false,
          message: data.message || 'Ошибка загрузки рекомендаций'
        };
      }
    } catch (error) {
      console.error('Error fetching recommended comics:', error);
      return {
        success: false,
        message: 'Ошибка загрузки рекомендаций.'
      };
    }
  }

  // Добавление/удаление комикса из избранного
  async toggleFavorite(comicId) {
    try {
      const response = await authService.apiRequest(`/comics/${comicId}/favorite`, {
        method: 'POST'
      });
      const data = await response.json();

      if (response.ok) {
        return {
          success: true,
          data: data
        };
      } else {
        return {
          success: false,
          message: data.message || 'Ошибка изменения избранного'
        };
      }
    } catch (error) {
      console.error('Error toggling favorite:', error);
      return {
        success: false,
        message: 'Ошибка сети. Попробуйте снова.'
      };
    }
  }

  // Получение избранных комиксов пользователя
  async getFavoriteComics(params = {}) {
    try {
      const queryParams = new URLSearchParams();
      
      if (params.page) queryParams.append('page', params.page);
      if (params.limit) queryParams.append('limit', params.limit);

      const response = await authService.apiRequest(`/user/favorites?${queryParams.toString()}`);
      const data = await response.json();

      if (response.ok) {
        return {
          success: true,
          data: data
        };
      } else {
        return {
          success: false,
          message: data.message || 'Ошибка загрузки избранного'
        };
      }
    } catch (error) {
      console.error('Error fetching favorites:', error);
      return {
        success: false,
        message: 'Ошибка сети. Проверьте подключение к интернету.'
      };
    }
  }

  // Оценка комикса
  async rateComic(comicId, rating) {
    try {
      const response = await authService.apiRequest(`/comics/${comicId}/rate`, {
        method: 'POST',
        body: JSON.stringify({ rating })
      });
      const data = await response.json();

      if (response.ok) {
        return {
          success: true,
          data: data
        };
      } else {
        return {
          success: false,
          message: data.message || 'Ошибка оценки комикса'
        };
      }
    } catch (error) {
      console.error('Error rating comic:', error);
      return {
        success: false,
        message: 'Ошибка сети. Попробуйте снова.'
      };
    }
  }

  // Получение жанров
  async getGenres() {
    try {
      const response = await authService.apiRequest('/genres');
      const data = await response.json();

      if (response.ok) {
        return {
          success: true,
          data: data
        };
      } else {
        return {
          success: false,
          message: data.message || 'Ошибка загрузки жанров'
        };
      }
    } catch (error) {
      console.error('Error fetching genres:', error);
      return {
        success: false,
        message: 'Ошибка сети. Проверьте подключение к интернету.'
      };
    }
  }

  // Отметка о прочтении главы
  async markChapterAsRead(comicId, chapterId) {
    try {
      const response = await authService.apiRequest(`/comics/${comicId}/chapters/${chapterId}/read`, {
        method: 'POST'
      });
      const data = await response.json();

      if (response.ok) {
        return {
          success: true,
          data: data
        };
      } else {
        return {
          success: false,
          message: data.message || 'Ошибка отметки о прочтении'
        };
      }
    } catch (error) {
      console.error('Error marking chapter as read:', error);
      return {
        success: false,
        message: 'Ошибка сети. Попробуйте снова.'
      };
    }
  }

  // Получение истории чтения пользователя
  async getReadingHistory(params = {}) {
    try {
      const queryParams = new URLSearchParams();
      
      if (params.page) queryParams.append('page', params.page);
      if (params.limit) queryParams.append('limit', params.limit);

      const response = await authService.apiRequest(`/user/reading-history?${queryParams.toString()}`);
      const data = await response.json();

      if (response.ok) {
        return {
          success: true,
          data: data
        };
      } else {
        return {
          success: false,
          message: data.message || 'Ошибка загрузки истории чтения'
        };
      }
    } catch (error) {
      console.error('Error fetching reading history:', error);
      return {
        success: false,
        message: 'Ошибка сети. Проверьте подключение к интернету.'
      };
    }
  }
}

// Экспортируем единственный экземпляр сервиса
export const comicsService = new ComicsService();


import { authService } from './authService';

const API_BASE_URL = 'https://api.mrcomic.com/favorites'; // Замените на реальный URL вашего API

export const favoriteService = {
  async getFavorites() {
    try {
      const token = authService.getToken();
      if (!token) {
        throw new Error('User not authenticated');
      }
      const response = await fetch(API_BASE_URL, {
        headers: {
          'Authorization': `Bearer ${token}`,
          'Content-Type': 'application/json',
        },
      });
      if (!response.ok) {
        throw new Error(`Failed to fetch favorites: ${response.statusText}`);
      }
      return response.json();
    } catch (error) {
      console.error('Error fetching favorites:', error);
      throw error;
    }
  },

  async addFavorite(comicId) {
    try {
      const token = authService.getToken();
      if (!token) {
        throw new Error('User not authenticated');
      }
      const response = await fetch(`${API_BASE_URL}/${comicId}`, {
        method: 'POST',
        headers: {
          'Authorization': `Bearer ${token}`,
          'Content-Type': 'application/json',
        },
      });
      if (!response.ok) {
        throw new Error(`Failed to add favorite: ${response.statusText}`);
      }
      return response.json();
    } catch (error) {
      console.error('Error adding favorite:', error);
      throw error;
    }
  },

  async removeFavorite(comicId) {
    try {
      const token = authService.getToken();
      if (!token) {
        throw new Error('User not authenticated');
      }
      const response = await fetch(`${API_BASE_URL}/${comicId}`, {
        method: 'DELETE',
        headers: {
          'Authorization': `Bearer ${token}`,
          'Content-Type': 'application/json',
        },
      });
      if (!response.ok) {
        throw new Error(`Failed to remove favorite: ${response.statusText}`);
      }
      return response.json();
    } catch (error) {
      console.error('Error removing favorite:', error);
      throw error;
    }
  },

  // Дополнительные функции для работы с категориями/папками избранного
  async getFavoriteCategories() {
    // Реализация получения категорий
    return [];
  },

  async addComicToCategory(comicId, categoryId) {
    // Реализация добавления комикса в категорию
    return {};
  },

  async removeComicFromCategory(comicId, categoryId) {
    // Реализация удаления комикса из категории
    return {};
  },
};



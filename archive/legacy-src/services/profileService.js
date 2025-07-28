import { authService } from 
'./authService';

const API_BASE_URL = 'https://api.mrcomic.com'; // Замените на реальный URL вашего API

export const profileService = {
  async getUserProfile() {
    const token = authService.getToken();
    if (!token) {
      throw new Error('Пользователь не авторизован.');
    }
    const response = await fetch(`${API_BASE_URL}/profile`, {
      headers: {
        'Authorization': `Bearer ${token}`,
        'Content-Type': 'application/json',
      },
    });
    if (!response.ok) {
      throw new Error('Не удалось получить профиль пользователя.');
    }
    return response.json();
  },

  async updateUserProfile(profileData) {
    const token = authService.getToken();
    if (!token) {
      throw new Error('Пользователь не авторизован.');
    }
    const response = await fetch(`${API_BASE_URL}/profile`, {
      method: 'PUT',
      headers: {
        'Authorization': `Bearer ${token}`,
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(profileData),
    });
    if (!response.ok) {
      throw new Error('Не удалось обновить профиль пользователя.');
    }
    return response.json();
  },

  async uploadAvatar(file) {
    const token = authService.getToken();
    if (!token) {
      throw new Error('Пользователь не авторизован.');
    }
    const formData = new FormData();
    formData.append('avatar', file);

    const response = await fetch(`${API_BASE_URL}/profile/avatar`, {
      method: 'POST',
      headers: {
        'Authorization': `Bearer ${token}`,
      },
      body: formData,
    });
    if (!response.ok) {
      throw new Error('Не удалось загрузить аватар.');
    }
    return response.json();
  },
};



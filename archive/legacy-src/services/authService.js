// Сервис для работы с аутентификацией
class AuthService {
  constructor() {
    this.baseURL = process.env.REACT_APP_API_URL || 'http://localhost:3001/api';
    this.tokenKey = 'mr_comic_token';
  }

  // Получение токена из localStorage
  getToken() {
    return localStorage.getItem(this.tokenKey);
  }

  // Сохранение токена в localStorage
  setToken(token) {
    localStorage.setItem(this.tokenKey, token);
  }

  // Удаление токена из localStorage
  removeToken() {
    localStorage.removeItem(this.tokenKey);
  }

  // Проверка авторизации пользователя
  isAuthenticated() {
    const token = this.getToken();
    if (!token) return false;
    
    try {
      // Простая проверка срока действия токена (если используется JWT)
      const payload = JSON.parse(atob(token.split('.')[1]));
      return payload.exp > Date.now() / 1000;
    } catch (error) {
      return false;
    }
  }

  // Получение данных текущего пользователя
  getCurrentUser() {
    const token = this.getToken();
    if (!token) return null;
    
    try {
      const payload = JSON.parse(atob(token.split('.')[1]));
      return payload.user;
    } catch (error) {
      return null;
    }
  }

  // Вход пользователя
  async login(credentials) {
    try {
      const response = await fetch(`${this.baseURL}/auth/login`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(credentials),
      });

      const data = await response.json();

      if (response.ok) {
        this.setToken(data.token);
        return {
          success: true,
          user: data.user,
          token: data.token
        };
      } else {
        return {
          success: false,
          message: data.message || 'Ошибка входа'
        };
      }
    } catch (error) {
      console.error('Login error:', error);
      return {
        success: false,
        message: 'Ошибка сети. Проверьте подключение к интернету.'
      };
    }
  }

  // Регистрация пользователя
  async register(userData) {
    try {
      const response = await fetch(`${this.baseURL}/auth/register`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(userData),
      });

      const data = await response.json();

      if (response.ok) {
        this.setToken(data.token);
        return {
          success: true,
          user: data.user,
          token: data.token
        };
      } else {
        return {
          success: false,
          message: data.message || 'Ошибка регистрации'
        };
      }
    } catch (error) {
      console.error('Registration error:', error);
      return {
        success: false,
        message: 'Ошибка сети. Проверьте подключение к интернету.'
      };
    }
  }

  // Выход пользователя
  async logout() {
    try {
      const token = this.getToken();
      if (token) {
        await fetch(`${this.baseURL}/auth/logout`, {
          method: 'POST',
          headers: {
            'Authorization': `Bearer ${token}`,
            'Content-Type': 'application/json',
          },
        });
      }
    } catch (error) {
      console.error('Logout error:', error);
    } finally {
      this.removeToken();
    }
  }

  // Обновление токена
  async refreshToken() {
    try {
      const token = this.getToken();
      if (!token) return false;

      const response = await fetch(`${this.baseURL}/auth/refresh`, {
        method: 'POST',
        headers: {
          'Authorization': `Bearer ${token}`,
          'Content-Type': 'application/json',
        },
      });

      if (response.ok) {
        const data = await response.json();
        this.setToken(data.token);
        return true;
      } else {
        this.removeToken();
        return false;
      }
    } catch (error) {
      console.error('Token refresh error:', error);
      this.removeToken();
      return false;
    }
  }

  // Получение заголовков с авторизацией
  getAuthHeaders() {
    const token = this.getToken();
    return {
      'Content-Type': 'application/json',
      ...(token && { 'Authorization': `Bearer ${token}` })
    };
  }

  // Универсальный метод для API запросов с автоматической обработкой авторизации
  async apiRequest(url, options = {}) {
    const config = {
      ...options,
      headers: {
        ...this.getAuthHeaders(),
        ...options.headers
      }
    };

    try {
      let response = await fetch(`${this.baseURL}${url}`, config);
      
      // Если токен истек, пытаемся обновить его
      if (response.status === 401 && this.getToken()) {
        const refreshed = await this.refreshToken();
        if (refreshed) {
          // Повторяем запрос с новым токеном
          config.headers = {
            ...this.getAuthHeaders(),
            ...options.headers
          };
          response = await fetch(`${this.baseURL}${url}`, config);
        }
      }

      return response;
    } catch (error) {
      console.error('API request error:', error);
      throw error;
    }
  }
}

// Экспортируем единственный экземпляр сервиса
export const authService = new AuthService();


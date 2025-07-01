const express = require('express');
const router = express.Router();
const passport = require('passport');
const authUtils = require('../utils/auth');
const User = require('../models/User');
const Application = require('../models/Application');
const Token = require('../models/Token');

/**
 * @route   POST /api/auth/register
 * @desc    Регистрация нового пользователя
 * @access  Public
 */
router.post('/register', async (req, res) => {
  try {
    const { username, email, password } = req.body;

    // Проверка существования пользователя
    let user = await User.findOne({ $or: [{ email }, { username }] });
    if (user) {
      return res.status(400).json({ 
        code: 'user_exists',
        message: 'Пользователь с таким email или username уже существует' 
      });
    }

    // Создание нового пользователя
    user = new User({
      username,
      email,
      password
    });

    await user.save();

    res.status(201).json({
      message: 'Пользователь успешно зарегистрирован',
      userId: user._id
    });
  } catch (error) {
    console.error('Ошибка при регистрации:', error);
    res.status(500).json({ 
      code: 'server_error',
      message: 'Ошибка сервера при регистрации' 
    });
  }
});

/**
 * @route   POST /api/auth/login
 * @desc    Аутентификация пользователя
 * @access  Public
 */
router.post('/login', async (req, res) => {
  try {
    const { email, password } = req.body;

    // Поиск пользователя
    const user = await User.findOne({ email });
    if (!user) {
      return res.status(401).json({ 
        code: 'invalid_credentials',
        message: 'Неверные учетные данные' 
      });
    }

    // Проверка пароля
    const isMatch = await user.comparePassword(password);
    if (!isMatch) {
      return res.status(401).json({ 
        code: 'invalid_credentials',
        message: 'Неверные учетные данные' 
      });
    }

    // Создание токенов для внутреннего использования (не для API)
    const accessToken = authUtils.generateAccessToken(
      user._id, 
      null, 
      ['comics:read', 'comics:write', 'themes:read', 'themes:write', 'user:read', 'user:write', 'analytics:read']
    );
    
    const refreshToken = await authUtils.generateRefreshToken(
      user._id, 
      null, 
      ['comics:read', 'comics:write', 'themes:read', 'themes:write', 'user:read', 'user:write', 'analytics:read']
    );

    res.json({
      message: 'Успешная аутентификация',
      accessToken,
      refreshToken,
      user: {
        id: user._id,
        username: user.username,
        email: user.email,
        role: user.role
      }
    });
  } catch (error) {
    console.error('Ошибка при аутентификации:', error);
    res.status(500).json({ 
      code: 'server_error',
      message: 'Ошибка сервера при аутентификации' 
    });
  }
});

/**
 * @route   POST /api/auth/refresh
 * @desc    Обновление токена доступа
 * @access  Public
 */
router.post('/refresh', async (req, res) => {
  try {
    const { refreshToken } = req.body;
    
    if (!refreshToken) {
      return res.status(400).json({ 
        code: 'missing_token',
        message: 'Отсутствует токен обновления' 
      });
    }

    // Проверка токена обновления
    const tokenData = await authUtils.verifyRefreshToken(refreshToken);
    if (!tokenData) {
      return res.status(401).json({ 
        code: 'invalid_token',
        message: 'Недействительный токен обновления' 
      });
    }

    // Создание нового токена доступа
    const accessToken = authUtils.generateAccessToken(
      tokenData.userId, 
      tokenData.applicationId, 
      tokenData.scopes
    );

    res.json({
      message: 'Токен успешно обновлен',
      accessToken
    });
  } catch (error) {
    console.error('Ошибка при обновлении токена:', error);
    res.status(500).json({ 
      code: 'server_error',
      message: 'Ошибка сервера при обновлении токена' 
    });
  }
});

/**
 * @route   POST /api/auth/logout
 * @desc    Выход пользователя (отзыв токена)
 * @access  Private
 */
router.post('/logout', passport.authenticate('jwt', { session: false }), async (req, res) => {
  try {
    const { refreshToken } = req.body;
    
    if (!refreshToken) {
      return res.status(400).json({ 
        code: 'missing_token',
        message: 'Отсутствует токен обновления' 
      });
    }

    // Отзыв токена обновления
    await authUtils.revokeRefreshToken(refreshToken);

    res.json({
      message: 'Успешный выход из системы'
    });
  } catch (error) {
    console.error('Ошибка при выходе из системы:', error);
    res.status(500).json({ 
      code: 'server_error',
      message: 'Ошибка сервера при выходе из системы' 
    });
  }
});

/**
 * @route   POST /api/auth/applications
 * @desc    Регистрация нового приложения
 * @access  Private
 */
router.post('/applications', passport.authenticate('jwt', { session: false }), async (req, res) => {
  try {
    const { name, description, redirectUris, allowedScopes } = req.body;
    const userId = req.user._id;

    // Генерация clientId и clientSecret
    const clientId = crypto.randomBytes(16).toString('hex');
    const clientSecret = crypto.randomBytes(32).toString('hex');

    // Создание нового приложения
    const application = new Application({
      name,
      description,
      clientId,
      clientSecret,
      redirectUris,
      allowedScopes,
      userId,
      status: req.user.role === 'admin' ? 'approved' : 'pending'
    });

    await application.save();

    res.status(201).json({
      message: 'Приложение успешно зарегистрировано',
      application: {
        id: application._id,
        name: application.name,
        clientId: application.clientId,
        clientSecret: application.clientSecret,
        status: application.status
      }
    });
  } catch (error) {
    console.error('Ошибка при регистрации приложения:', error);
    res.status(500).json({ 
      code: 'server_error',
      message: 'Ошибка сервера при регистрации приложения' 
    });
  }
});

/**
 * @route   GET /api/auth/applications
 * @desc    Получение списка приложений пользователя
 * @access  Private
 */
router.get('/applications', passport.authenticate('jwt', { session: false }), async (req, res) => {
  try {
    const userId = req.user._id;
    
    // Поиск приложений пользователя
    const applications = await Application.find({ userId });

    res.json({
      applications: applications.map(app => ({
        id: app._id,
        name: app.name,
        description: app.description,
        clientId: app.clientId,
        redirectUris: app.redirectUris,
        allowedScopes: app.allowedScopes,
        status: app.status,
        createdAt: app.createdAt
      }))
    });
  } catch (error) {
    console.error('Ошибка при получении списка приложений:', error);
    res.status(500).json({ 
      code: 'server_error',
      message: 'Ошибка сервера при получении списка приложений' 
    });
  }
});

/**
 * @route   GET /api/auth/authorize
 * @desc    Страница авторизации OAuth 2.0
 * @access  Public
 */
router.get('/authorize', async (req, res) => {
  try {
    const { client_id, redirect_uri, response_type, scope, state } = req.query;
    
    // Проверка параметров
    if (!client_id || !redirect_uri || response_type !== 'code') {
      return res.status(400).json({ 
        code: 'invalid_request',
        message: 'Неверные параметры запроса' 
      });
    }
    
    // Поиск приложения
    const application = await Application.findOne({ clientId: client_id });
    if (!application) {
      return res.status(404).json({ 
        code: 'invalid_client',
        message: 'Приложение не найдено' 
      });
    }
    
    // Проверка статуса приложения
    if (application.status !== 'approved') {
      return res.status(403).json({ 
        code: 'unauthorized_client',
        message: 'Приложение не авторизовано' 
      });
    }
    
    // Проверка redirect_uri
    if (!application.redirectUris.includes(redirect_uri)) {
      return res.status(400).json({ 
        code: 'invalid_redirect_uri',
        message: 'Недопустимый URI перенаправления' 
      });
    }
    
    // Здесь должен быть рендеринг страницы авторизации
    // В данном примере просто возвращаем информацию о приложении
    res.json({
      message: 'Страница авторизации',
      application: {
        name: application.name,
        description: application.description
      },
      scopes: scope ? scope.split(' ') : [],
      state
    });
  } catch (error) {
    console.error('Ошибка при авторизации:', error);
    res.status(500).json({ 
      code: 'server_error',
      message: 'Ошибка сервера при авторизации' 
    });
  }
});

/**
 * @route   POST /api/auth/token
 * @desc    Получение токена OAuth 2.0
 * @access  Public
 */
router.post('/token', async (req, res) => {
  try {
    const { grant_type, code, redirect_uri, client_id, client_secret, refresh_token } = req.body;
    
    // Проверка типа запроса
    if (grant_type === 'authorization_code') {
      // Здесь должна быть логика обработки кода авторизации
      // В данном примере просто возвращаем токены
      
      // Проверка параметров
      if (!code || !redirect_uri || !client_id || !client_secret) {
        return res.status(400).json({ 
          code: 'invalid_request',
          message: 'Неверные параметры запроса' 
        });
      }
      
      // Поиск приложения
      const application = await Application.findOne({ 
        clientId: client_id,
        clientSecret: client_secret
      });
      
      if (!application) {
        return res.status(401).json({ 
          code: 'invalid_client',
          message: 'Неверные учетные данные клиента' 
        });
      }
      
      // В реальном приложении здесь должна быть проверка кода авторизации
      // и получение информации о пользователе и разрешенных областях
      
      // Для примера используем фиктивные данные
      const userId = '60d5ec9c1c9d440000000000';
      const scopes = ['comics:read', 'themes:read', 'user:read'];
      
      // Создание токенов
      const accessToken = authUtils.generateAccessToken(userId, application._id, scopes);
      const refreshToken = await authUtils.generateRefreshToken(userId, application._id, scopes);
      
      res.json({
        access_token: accessToken,
        token_type: 'Bearer',
        expires_in: 3600, // 1 час
        refresh_token: refreshToken,
        scope: scopes.join(' ')
      });
    } else if (grant_type === 'refresh_token') {
      // Проверка параметров
      if (!refresh_token || !client_id || !client_secret) {
        return res.status(400).json({ 
          code: 'invalid_request',
          message: 'Неверные параметры запроса' 
        });
      }
      
      // Поиск приложения
      const application = await Application.findOne({ 
        clientId: client_id,
        clientSecret: client_secret
      });
      
      if (!application) {
        return res.status(401).json({ 
          code: 'invalid_client',
          message: 'Неверные учетные данные клиента' 
        });
      }
      
      // Проверка токена обновления
      const tokenData = await authUtils.verifyRefreshToken(refresh_token);
      if (!tokenData) {
        return res.status(401).json({ 
          code: 'invalid_grant',
          message: 'Недействительный токен обновления' 
        });
      }
      
      // Проверка соответствия приложения
      if (tokenData.applicationId.toString() !== application._id.toString()) {
        return res.status(401).json({ 
          code: 'invalid_grant',
          message: 'Токен обновления не соответствует клиенту' 
        });
      }
      
      // Создание нового токена доступа
      const accessToken = authUtils.generateAccessToken(
        tokenData.userId, 
        tokenData.applicationId, 
        tokenData.scopes
      );
      
      res.json({
        access_token: accessToken,
        token_type: 'Bearer',
        expires_in: 3600, // 1 час
        scope: tokenData.scopes.join(' ')
      });
    } else {
      res.status(400).json({ 
        code: 'unsupported_grant_type',
        message: 'Неподдерживаемый тип запроса' 
      });
    }
  } catch (error) {
    console.error('Ошибка при получении токена:', error);
    res.status(500).json({ 
      code: 'server_error',
      message: 'Ошибка сервера при получении токена' 
    });
  }
});

module.exports = router;

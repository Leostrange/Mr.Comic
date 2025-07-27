const express = require('express');
const router = express.Router();
const passport = require('passport');
const User = require('../models/User');
const authUtils = require('../utils/auth');

/**
 * @route   GET /api/user/profile
 * @desc    Получение профиля пользователя
 * @access  Private
 */
router.get('/profile', passport.authenticate('jwt', { session: false }), async (req, res) => {
  try {
    // Проверка разрешений
    if (!authUtils.checkScopes(['user:read'], req.user.scopes)) {
      return res.status(403).json({
        code: 'insufficient_scope',
        message: 'Недостаточно прав для доступа к этому ресурсу'
      });
    }

    const user = await User.findById(req.user.userId).select('-password');
    
    if (!user) {
      return res.status(404).json({
        code: 'not_found',
        message: 'Пользователь не найден'
      });
    }
    
    res.json({
      id: user._id,
      username: user.username,
      email: user.email,
      avatarUrl: user.avatarUrl,
      bio: user.bio,
      role: user.role,
      preferences: user.preferences
    });
  } catch (error) {
    console.error('Ошибка при получении профиля пользователя:', error);
    res.status(500).json({
      code: 'server_error',
      message: 'Ошибка сервера при получении профиля пользователя'
    });
  }
});

/**
 * @route   GET /api/user/bookmarks
 * @desc    Получение закладок пользователя
 * @access  Private
 */
router.get('/bookmarks', passport.authenticate('jwt', { session: false }), async (req, res) => {
  try {
    // Проверка разрешений
    if (!authUtils.checkScopes(['user:read'], req.user.scopes)) {
      return res.status(403).json({
        code: 'insufficient_scope',
        message: 'Недостаточно прав для доступа к этому ресурсу'
      });
    }

    // Параметры пагинации
    const page = parseInt(req.query.page) || 1;
    const limit = parseInt(req.query.limit) || 20;
    const skip = (page - 1) * limit;
    
    // В реальном приложении здесь был бы запрос к модели Bookmark
    // Для примера используем фиктивные данные
    const bookmarks = [];
    const total = 25; // Фиктивное общее количество закладок
    
    // Генерация фиктивных данных для примера
    for (let i = skip + 1; i <= Math.min(skip + limit, total); i++) {
      bookmarks.push({
        id: `bookmark_${i}`,
        userId: req.user.userId,
        comicId: `comic_${i}`,
        chapterId: `chapter_${i % 10 + 1}`,
        page: i % 20 + 1,
        note: `Заметка к закладке ${i}`,
        createdAt: new Date(Date.now() - i * 86400000), // Каждая закладка на день раньше
        updatedAt: new Date(Date.now() - i * 86400000),
        comic: {
          id: `comic_${i}`,
          title: `Тестовый комикс ${i}`,
          coverUrl: `https://example.com/comics/comic_${i}/cover.jpg`
        }
      });
    }
    
    res.json({
      bookmarks,
      pagination: {
        total,
        page,
        limit,
        pages: Math.ceil(total / limit)
      }
    });
  } catch (error) {
    console.error('Ошибка при получении закладок пользователя:', error);
    res.status(500).json({
      code: 'server_error',
      message: 'Ошибка сервера при получении закладок пользователя'
    });
  }
});

/**
 * @route   POST /api/user/bookmarks
 * @desc    Добавление закладки
 * @access  Private
 */
router.post('/bookmarks', passport.authenticate('jwt', { session: false }), async (req, res) => {
  try {
    // Проверка разрешений
    if (!authUtils.checkScopes(['user:write'], req.user.scopes)) {
      return res.status(403).json({
        code: 'insufficient_scope',
        message: 'Недостаточно прав для доступа к этому ресурсу'
      });
    }

    const { comicId, chapterId, page, note } = req.body;
    
    // Проверка параметров
    if (!comicId) {
      return res.status(400).json({
        code: 'invalid_request',
        message: 'Отсутствует обязательный параметр comicId'
      });
    }
    
    // В реальном приложении здесь была бы логика сохранения закладки
    // Для примера просто возвращаем фиктивные данные
    
    res.status(201).json({
      id: `bookmark_${Date.now()}`,
      userId: req.user.userId,
      comicId,
      chapterId,
      page,
      note,
      createdAt: new Date(),
      updatedAt: new Date()
    });
  } catch (error) {
    console.error('Ошибка при добавлении закладки:', error);
    res.status(500).json({
      code: 'server_error',
      message: 'Ошибка сервера при добавлении закладки'
    });
  }
});

/**
 * @route   DELETE /api/user/bookmarks/:id
 * @desc    Удаление закладки
 * @access  Private
 */
router.delete('/bookmarks/:id', passport.authenticate('jwt', { session: false }), async (req, res) => {
  try {
    // Проверка разрешений
    if (!authUtils.checkScopes(['user:write'], req.user.scopes)) {
      return res.status(403).json({
        code: 'insufficient_scope',
        message: 'Недостаточно прав для доступа к этому ресурсу'
      });
    }

    // В реальном приложении здесь была бы логика удаления закладки
    // Для примера просто возвращаем успешный результат
    
    res.json({
      message: 'Закладка успешно удалена'
    });
  } catch (error) {
    console.error('Ошибка при удалении закладки:', error);
    res.status(500).json({
      code: 'server_error',
      message: 'Ошибка сервера при удалении закладки'
    });
  }
});

/**
 * @route   GET /api/user/reading-progress
 * @desc    Получение прогресса чтения
 * @access  Private
 */
router.get('/reading-progress', passport.authenticate('jwt', { session: false }), async (req, res) => {
  try {
    // Проверка разрешений
    if (!authUtils.checkScopes(['user:read'], req.user.scopes)) {
      return res.status(403).json({
        code: 'insufficient_scope',
        message: 'Недостаточно прав для доступа к этому ресурсу'
      });
    }

    // В реальном приложении здесь был бы запрос к модели ReadingProgress
    // Для примера используем фиктивные данные
    
    const progress = [];
    
    // Генерация фиктивных данных для примера
    for (let i = 1; i <= 5; i++) {
      progress.push({
        comicId: `comic_${i}`,
        title: `Тестовый комикс ${i}`,
        coverUrl: `https://example.com/comics/comic_${i}/cover.jpg`,
        lastChapterId: `chapter_${i * 2}`,
        lastChapterNumber: i * 2,
        lastPage: i * 5,
        totalChapters: i * 3,
        percentComplete: Math.round((i * 2) / (i * 3) * 100),
        lastReadAt: new Date(Date.now() - i * 86400000) // Каждый комикс читался на день раньше
      });
    }
    
    res.json({
      progress
    });
  } catch (error) {
    console.error('Ошибка при получении прогресса чтения:', error);
    res.status(500).json({
      code: 'server_error',
      message: 'Ошибка сервера при получении прогресса чтения'
    });
  }
});

module.exports = router;

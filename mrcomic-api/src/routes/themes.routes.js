const express = require('express');
const router = express.Router();
const passport = require('passport');
const Theme = require('../models/Theme');
const authUtils = require('../utils/auth');

/**
 * @route   GET /api/themes
 * @desc    Получение списка тем
 * @access  Private
 */
router.get('/', passport.authenticate('jwt', { session: false }), async (req, res) => {
  try {
    // Проверка разрешений
    if (!authUtils.checkScopes(['themes:read'], req.user.scopes)) {
      return res.status(403).json({
        code: 'insufficient_scope',
        message: 'Недостаточно прав для доступа к этому ресурсу'
      });
    }

    // Параметры пагинации и фильтрации
    const page = parseInt(req.query.page) || 1;
    const limit = parseInt(req.query.limit) || 20;
    const skip = (page - 1) * limit;
    
    // Параметры фильтрации
    const filter = { isPublic: true }; // По умолчанию показываем только публичные темы
    
    // Параметры поиска
    if (req.query.search) {
      filter.$text = { $search: req.query.search };
    }
    
    // Параметры сортировки
    let sort = {};
    const sortField = req.query.sort || 'rating';
    const sortOrder = req.query.order === 'asc' ? 1 : -1;
    
    switch (sortField) {
      case 'name':
        sort.name = sortOrder;
        break;
      case 'createdAt':
        sort.createdAt = sortOrder;
        break;
      case 'downloads':
        sort.downloads = sortOrder;
        break;
      case 'rating':
      default:
        sort['rating.average'] = sortOrder;
        break;
    }

    // Получение тем
    const themes = await Theme.find(filter)
      .populate('authorId', 'username email avatarUrl')
      .sort(sort)
      .skip(skip)
      .limit(limit);
    
    // Получение общего количества тем
    const total = await Theme.countDocuments(filter);
    
    res.json({
      themes: themes.map(theme => ({
        id: theme._id,
        name: theme.name,
        description: theme.description,
        version: theme.version,
        previewImageUrl: theme.previewImageUrl,
        author: theme.authorId,
        rating: theme.rating,
        downloads: theme.downloads,
        createdAt: theme.createdAt,
        updatedAt: theme.updatedAt,
        themeData: theme.themeData,
        tags: theme.tags
      })),
      pagination: {
        total,
        page,
        limit,
        pages: Math.ceil(total / limit)
      }
    });
  } catch (error) {
    console.error('Ошибка при получении списка тем:', error);
    res.status(500).json({
      code: 'server_error',
      message: 'Ошибка сервера при получении списка тем'
    });
  }
});

/**
 * @route   GET /api/themes/:id
 * @desc    Получение информации о теме
 * @access  Private
 */
router.get('/:id', passport.authenticate('jwt', { session: false }), async (req, res) => {
  try {
    // Проверка разрешений
    if (!authUtils.checkScopes(['themes:read'], req.user.scopes)) {
      return res.status(403).json({
        code: 'insufficient_scope',
        message: 'Недостаточно прав для доступа к этому ресурсу'
      });
    }

    const theme = await Theme.findById(req.params.id)
      .populate('authorId', 'username email avatarUrl');
    
    if (!theme) {
      return res.status(404).json({
        code: 'not_found',
        message: 'Тема не найдена'
      });
    }
    
    // Проверка доступа к непубличным темам
    if (!theme.isPublic && (!req.user.userId || theme.authorId._id.toString() !== req.user.userId.toString())) {
      return res.status(403).json({
        code: 'forbidden',
        message: 'У вас нет доступа к этой теме'
      });
    }
    
    res.json({
      id: theme._id,
      name: theme.name,
      description: theme.description,
      version: theme.version,
      previewImageUrl: theme.previewImageUrl,
      author: theme.authorId,
      rating: theme.rating,
      downloads: theme.downloads,
      createdAt: theme.createdAt,
      updatedAt: theme.updatedAt,
      themeData: theme.themeData,
      tags: theme.tags
    });
  } catch (error) {
    console.error('Ошибка при получении информации о теме:', error);
    res.status(500).json({
      code: 'server_error',
      message: 'Ошибка сервера при получении информации о теме'
    });
  }
});

/**
 * @route   GET /api/themes/trending
 * @desc    Получение популярных тем
 * @access  Private
 */
router.get('/trending', passport.authenticate('jwt', { session: false }), async (req, res) => {
  try {
    // Проверка разрешений
    if (!authUtils.checkScopes(['themes:read'], req.user.scopes)) {
      return res.status(403).json({
        code: 'insufficient_scope',
        message: 'Недостаточно прав для доступа к этому ресурсу'
      });
    }

    // Параметры пагинации
    const limit = parseInt(req.query.limit) || 10;
    
    // Получение популярных тем (по количеству загрузок)
    const themes = await Theme.find({ isPublic: true })
      .populate('authorId', 'username email avatarUrl')
      .sort({ downloads: -1 })
      .limit(limit);
    
    res.json({
      themes: themes.map(theme => ({
        id: theme._id,
        name: theme.name,
        description: theme.description,
        version: theme.version,
        previewImageUrl: theme.previewImageUrl,
        author: theme.authorId,
        rating: theme.rating,
        downloads: theme.downloads,
        createdAt: theme.createdAt,
        updatedAt: theme.updatedAt,
        themeData: theme.themeData,
        tags: theme.tags
      }))
    });
  } catch (error) {
    console.error('Ошибка при получении популярных тем:', error);
    res.status(500).json({
      code: 'server_error',
      message: 'Ошибка сервера при получении популярных тем'
    });
  }
});

/**
 * @route   POST /api/themes/:id/rate
 * @desc    Оценка темы
 * @access  Private
 */
router.post('/:id/rate', passport.authenticate('jwt', { session: false }), async (req, res) => {
  try {
    // Проверка разрешений
    if (!authUtils.checkScopes(['themes:write'], req.user.scopes)) {
      return res.status(403).json({
        code: 'insufficient_scope',
        message: 'Недостаточно прав для доступа к этому ресурсу'
      });
    }

    const { rating } = req.body;
    
    // Проверка параметров
    if (!rating || rating < 1 || rating > 5) {
      return res.status(400).json({
        code: 'invalid_request',
        message: 'Оценка должна быть от 1 до 5'
      });
    }
    
    const theme = await Theme.findById(req.params.id);
    
    if (!theme) {
      return res.status(404).json({
        code: 'not_found',
        message: 'Тема не найдена'
      });
    }
    
    // В реальном приложении здесь была бы логика сохранения оценки пользователя
    // и пересчета средней оценки
    
    // Для примера просто обновляем среднюю оценку
    const newAverage = (theme.rating.average * theme.rating.count + rating) / (theme.rating.count + 1);
    
    theme.rating.average = parseFloat(newAverage.toFixed(1));
    theme.rating.count += 1;
    
    await theme.save();
    
    res.json({
      message: 'Оценка успешно сохранена',
      theme: {
        id: theme._id,
        rating: theme.rating
      }
    });
  } catch (error) {
    console.error('Ошибка при оценке темы:', error);
    res.status(500).json({
      code: 'server_error',
      message: 'Ошибка сервера при оценке темы'
    });
  }
});

module.exports = router;

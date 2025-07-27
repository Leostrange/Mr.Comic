const express = require('express');
const router = express.Router();
const passport = require('passport');
const authUtils = require('../utils/auth');

/**
 * @route   GET /api/analytics/reading-stats
 * @desc    Получение статистики чтения
 * @access  Private
 */
router.get('/reading-stats', passport.authenticate('jwt', { session: false }), async (req, res) => {
  try {
    // Проверка разрешений
    if (!authUtils.checkScopes(['analytics:read'], req.user.scopes)) {
      return res.status(403).json({
        code: 'insufficient_scope',
        message: 'Недостаточно прав для доступа к этому ресурсу'
      });
    }

    // Параметр периода
    const period = req.query.period || 'month';
    
    // В реальном приложении здесь был бы запрос к моделям ReadingStats, Comic и т.д.
    // Для примера используем фиктивные данные
    
    // Генерация фиктивных данных для статистики чтения
    const readingStats = {
      totalReadingTime: 1250, // минуты
      comicsRead: 15,
      chaptersRead: 87,
      pagesRead: 1432,
      averageReadingSpeed: 1.15, // страниц в минуту
      mostReadGenres: [
        { genre: 'Фэнтези', count: 42 },
        { genre: 'Научная фантастика', count: 28 },
        { genre: 'Приключения', count: 17 }
      ],
      readingByDay: []
    };
    
    // Генерация данных по дням
    const now = new Date();
    let daysToGenerate = 0;
    
    switch (period) {
      case 'day':
        daysToGenerate = 1;
        break;
      case 'week':
        daysToGenerate = 7;
        break;
      case 'month':
        daysToGenerate = 30;
        break;
      case 'year':
        daysToGenerate = 365;
        break;
      case 'all':
      default:
        daysToGenerate = 90; // Для примера ограничимся 90 днями
        break;
    }
    
    for (let i = 0; i < daysToGenerate; i++) {
      const date = new Date(now);
      date.setDate(date.getDate() - i);
      
      readingStats.readingByDay.push({
        date: date.toISOString().split('T')[0],
        minutes: Math.floor(Math.random() * 120) + 10,
        pages: Math.floor(Math.random() * 100) + 5
      });
    }
    
    res.json(readingStats);
  } catch (error) {
    console.error('Ошибка при получении статистики чтения:', error);
    res.status(500).json({
      code: 'server_error',
      message: 'Ошибка сервера при получении статистики чтения'
    });
  }
});

/**
 * @route   GET /api/analytics/recommendations
 * @desc    Получение рекомендаций
 * @access  Private
 */
router.get('/recommendations', passport.authenticate('jwt', { session: false }), async (req, res) => {
  try {
    // Проверка разрешений
    if (!authUtils.checkScopes(['analytics:read'], req.user.scopes)) {
      return res.status(403).json({
        code: 'insufficient_scope',
        message: 'Недостаточно прав для доступа к этому ресурсу'
      });
    }

    // Параметр количества рекомендаций
    const limit = parseInt(req.query.limit) || 10;
    
    // В реальном приложении здесь была бы логика получения рекомендаций
    // на основе истории чтения пользователя, предпочтений и т.д.
    // Для примера используем фиктивные данные
    
    const recommendations = [];
    
    // Генерация фиктивных рекомендаций
    for (let i = 1; i <= limit; i++) {
      recommendations.push({
        comic: {
          id: `comic_rec_${i}`,
          title: `Рекомендуемый комикс ${i}`,
          description: `Описание рекомендуемого комикса ${i}`,
          author: `Автор ${i}`,
          coverUrl: `https://example.com/comics/rec_${i}/cover.jpg`,
          genres: ['Фэнтези', 'Приключения'],
          releaseDate: new Date(Date.now() - i * 30 * 86400000),
          rating: 4.0 + (Math.random() * 1.0),
          chaptersCount: 10 + i,
          status: i % 3 === 0 ? 'completed' : 'ongoing',
          tags: ['популярное', 'новинка'],
          publisher: `Издательство ${i % 5 + 1}`
        },
        score: 0.95 - (i * 0.05),
        reason: i % 3 === 0 ? 'На основе ваших предпочтений' : 
                i % 3 === 1 ? 'Популярно среди похожих пользователей' : 
                'Вам может понравиться этот жанр'
      });
    }
    
    res.json({
      recommendations
    });
  } catch (error) {
    console.error('Ошибка при получении рекомендаций:', error);
    res.status(500).json({
      code: 'server_error',
      message: 'Ошибка сервера при получении рекомендаций'
    });
  }
});

module.exports = router;

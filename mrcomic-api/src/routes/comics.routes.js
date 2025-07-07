const express = require('express');
const router = express.Router();
const passport = require('passport');
const Comic = require('../models/Comic');
const Chapter = require('../models/Chapter'); // Импортируем модель Chapter
const authUtils = require('../utils/auth');

/**
 * @route   GET /api/comics
 * @desc    Получение списка комиксов
 * @access  Private
 */
router.get('/', passport.authenticate('jwt', { session: false }), async (req, res) => {
  try {
    // Проверка разрешений
    if (!authUtils.checkScopes(['comics:read'], req.user.scopes)) {
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
    const filter = {};
    if (req.query.genre) {
      filter.genres = req.query.genre;
    }

    // Параметры поиска
    if (req.query.search) {
      filter.$text = { $search: req.query.search };
    }

    // Параметры сортировки
    let sort = {};
    const sortField = req.query.sort || 'popularity';
    const sortOrder = req.query.order === 'asc' ? 1 : -1;

    switch (sortField) {
      case 'title':
        sort.title = sortOrder;
        break;
      case 'releaseDate':
        sort.releaseDate = sortOrder;
        break;
      case 'rating':
        sort.rating = sortOrder;
        break;
      case 'popularity':
      default:
        // Для популярности используем рейтинг как приближение
        sort.rating = sortOrder;
        break;
    }

    // Получение комиксов
    const comics = await Comic.find(filter)
      .sort(sort)
      .skip(skip)
      .limit(limit);

    // Получение общего количества комиксов
    const total = await Comic.countDocuments(filter);

    res.json({
      comics: comics.map(comic => ({
        id: comic._id,
        title: comic.title,
        description: comic.description,
        author: comic.author,
        coverUrl: comic.coverUrl,
        genres: comic.genres,
        releaseDate: comic.releaseDate,
        rating: comic.rating,
        chaptersCount: comic.chaptersCount,
        status: comic.status,
        tags: comic.tags,
        publisher: comic.publisher
      })),
      pagination: {
        total,
        page,
        limit,
        pages: Math.ceil(total / limit)
      }
    });
  } catch (error) {
    console.error('Ошибка при получении списка комиксов:', error);
    res.status(500).json({
      code: 'server_error',
      message: 'Ошибка сервера при получении списка комиксов'
    });
  }
});

/**
 * @route   GET /api/comics/:id
 * @desc    Получение информации о комиксе
 * @access  Private
 */
router.get('/:id', passport.authenticate('jwt', { session: false }), async (req, res) => {
  try {
    // Проверка разрешений
    if (!authUtils.checkScopes(['comics:read'], req.user.scopes)) {
      return res.status(403).json({
        code: 'insufficient_scope',
        message: 'Недостаточно прав для доступа к этому ресурсу'
      });
    }

    const comic = await Comic.findById(req.params.id);
    if (!comic) {
      return res.status(404).json({
        code: 'not_found',
        message: 'Комикс не найден'
      });
    }

    res.json({
      id: comic._id,
      title: comic.title,
      description: comic.description,
      author: comic.author,
      coverUrl: comic.coverUrl,
      genres: comic.genres,
      releaseDate: comic.releaseDate,
      rating: comic.rating,
      chaptersCount: comic.chaptersCount,
      status: comic.status,
      tags: comic.tags,
      publisher: comic.publisher
    });
  } catch (error) {
    console.error('Ошибка при получении информации о комиксе:', error);
    res.status(500).json({
      code: 'server_error',
      message: 'Ошибка сервера при получении информации о комиксе'
    });
  }
});

/**
 * @route   GET /api/comics/:id/chapters
 * @desc    Получение списка глав комикса
 * @access  Private
 */
router.get('/:id/chapters', passport.authenticate('jwt', { session: false }), async (req, res) => {
  try {
    // Проверка разрешений
    if (!authUtils.checkScopes(['comics:read'], req.user.scopes)) {
      return res.status(403).json({
        code: 'insufficient_scope',
        message: 'Недостаточно прав для доступа к этому ресурсу'
      });
    }

    // Проверка существования комикса
    const comic = await Comic.findById(req.params.id);
    if (!comic) {
      return res.status(404).json({
        code: 'not_found',
        message: 'Комикс не найден'
      });
    }

    // Параметры пагинации
    const page = parseInt(req.query.page) || 1;
    const limit = parseInt(req.query.limit) || 20;
    const skip = (page - 1) * limit;

    // Получение глав комикса
    const chaptersData = await Chapter.find({ comicId: req.params.id })
      .sort({ number: 1 }) // Сортировка по номеру главы
      .skip(skip)
      .limit(limit);

    // Получение общего количества глав
    const totalChapters = await Chapter.countDocuments({ comicId: req.params.id });

    res.json({
      chapters: chaptersData.map(chapter => ({
        id: chapter._id,
        comicId: chapter.comicId,
        title: chapter.title,
        number: chapter.number,
        releaseDate: chapter.releaseDate,
        pagesCount: chapter.pagesCount,
        thumbnailUrl: chapter.thumbnailUrl
      })),
      pagination: {
        total: totalChapters,
        page,
        limit,
        pages: Math.ceil(totalChapters / limit)
      }
    });
  } catch (error) {
    console.error('Ошибка при получении списка глав:', error);
    res.status(500).json({
      code: 'server_error',
      message: 'Ошибка сервера при получении списка глав'
    });
  }
});

module.exports = router;

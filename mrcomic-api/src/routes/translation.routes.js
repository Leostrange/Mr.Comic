const express = require('express');
const router = express.Router();
const passport = require('passport');

/**
 * @route   POST /api/translation/translate_text
 * @desc    Перевод текста
 * @access  Private (защищено JWT)
 */
router.post(
  '/translate_text',
  passport.authenticate('jwt', { session: false }),
  async (req, res) => {
    try {
      const { texts, sourceLanguage, targetLanguage, translationParams } = req.body;

      if (!texts || !Array.isArray(texts) || texts.length === 0) {
        return res.status(400).json({
          success: false,
          error: { code: 'missing_texts', message: 'Массив текстов для перевода не предоставлен или пуст.' }
        });
      }
      if (!targetLanguage) {
        return res.status(400).json({
          success: false,
          error: { code: 'missing_target_language', message: 'Целевой язык не указан.' }
        });
      }

      // *** Логика вызова Python-скрипта перевода будет здесь ***
      // Сейчас возвращаем заглушку

      console.log('Translation Request Body:', req.body);

      // Пример заглушки ответа
      const mockTranslationResults = texts.map(item => ({
        id: item.id,
        originalText: item.text,
        translatedText: `[${targetLanguage.toUpperCase()}] Перевод для: ${item.text.substring(0, 20)}...`,
        detectedSourceLanguage: sourceLanguage === 'auto' ? 'en' : sourceLanguage, // Пример
        engineUsed: translationParams && translationParams.engine ? translationParams.engine : "default_engine"
      }));

      res.json({
        success: true,
        processingTimeMs: Math.floor(Math.random() * 500) + 100,
        results: mockTranslationResults
      });

    } catch (error) {
      console.error('Ошибка перевода:', error);
      res.status(500).json({
        success: false,
        error: { code: 'server_error', message: 'Внутренняя ошибка сервера при выполнении перевода.' }
      });
    }
  }
);

module.exports = router;

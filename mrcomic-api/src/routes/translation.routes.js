const express = require('express');
const router = express.Router();
const passport = require('passport');
const authUtils = require('../../utils/auth');
const { spawn } = require('child_process');
const path = require('path');

/**
 * @route   POST /api/translation/translate_text
 * @desc    Перевод текста
 * @access  Private (JWT)
 */
router.post(
  '/translate_text',
  passport.authenticate('jwt', { session: false }),
  async (req, res) => {
    try {
      if (!authUtils.checkScopes(['translate:text'], req.user.scopes)) {
        return res.status(403).json({
          code: 'insufficient_scope',
          message: 'Недостаточно прав для перевода текста',
        });
      }

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

      const pythonScriptPath = path.resolve(__dirname, '../../../mrcomic-ocr-translation/src/integrated_system.py');
      const scriptArgs = [
        pythonScriptPath,
        '--mode', 'translate',
        '--texts', JSON.stringify(texts),
        '--target_language', targetLanguage
      ];

      if (sourceLanguage) {
        scriptArgs.push('--source_language', sourceLanguage);
      }
      if (translationParams) {
        scriptArgs.push('--translation_params', JSON.stringify(translationParams));
      }

      console.log('Executing Python translation script with args:', scriptArgs);

      const pythonProcess = spawn('python3', scriptArgs);

      let stdoutData = '';
      let stderrData = '';

      pythonProcess.stdout.on('data', (data) => {
        stdoutData += data.toString();
      });

      pythonProcess.stderr.on('data', (data) => {
        stderrData += data.toString();
      });

      pythonProcess.on('close', (code) => {
        if (stderrData) {
          console.error(`Python stderr (code ${code}):`, stderrData);
          try {
            const errorJson = JSON.parse(stderrData);
            return res.status(500).json({
              success: false,
              error: errorJson.errors ? errorJson.errors[0] : 'Ошибка выполнения Python скрипта',
              details: stderrData
            });
          } catch {
            return res.status(500).json({
              success: false,
              error: 'Ошибка выполнения Python скрипта и парсинга stderr',
              details: stderrData
            });
          }
        }

        if (code !== 0) {
          console.error(`Python script exited with code ${code}`);
          return res.status(500).json({
            success: false,
            error: `Python script exited with code ${code}`,
            details: stdoutData
          });
        }

        try {
          const result = JSON.parse(stdoutData);
          if (result.success && result.data && result.data.results) {
            res.json({
              success: true,
              processingTimeMs: result.data.processingTimeMs || 0,
              results: result.data.results
            });
          } else {
            res.status(500).json({
              success: false,
              error: 'Ошибка обработки перевода в Python скрипте',
              details: result.errors || stdoutData
            });
          }
        } catch (parseError) {
          console.error('Ошибка парсинга вывода Python скрипта:', parseError, stdoutData);
          res.status(500).json({
            success: false,
            error: 'Ошибка парсинга ответа Python скрипта',
            details: stdoutData
          });
        }
      });

      pythonProcess.on('error', (err) => {
        console.error('Не удалось запустить Python скрипт перевода:', err);
        res.status(500).json({
          success: false,
          error: 'Не удалось запустить Python скрипт',
          details: err.message
        });
      });

    } catch (error) {
      console.error('Ошибка перевода текста:', error);
      res.status(500).json({
        success: false,
        error: { code: 'server_error', message: 'Внутренняя ошибка сервера при выполнении перевода.' }
      });
    }
  }
);

module.exports = router;

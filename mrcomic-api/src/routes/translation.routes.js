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

      const { spawn } = require('child_process');
      const path = require('path');

      // 1. Сформировать аргументы для Python-скрипта
      const pythonScriptPath = path.resolve(__dirname, '../../../mrcomic-ocr-translation/src/integrated_system.py');
      const scriptArgs = [
        pythonScriptPath,
        '--mode', 'translate',
        '--texts', JSON.stringify(texts), // Передаем массив текстов как JSON-строку
        '--target_language', targetLanguage
      ];

      if (sourceLanguage) {
        scriptArgs.push('--source_language', sourceLanguage);
      }
      if (translationParams) {
        scriptArgs.push('--translation_params', JSON.stringify(translationParams));
      }

      // Путь к конфигурационному файлу Python системы (если он нужен)
      // const pythonConfigPath = path.resolve(__dirname, '../../../mrcomic-ocr-translation/config.json'); // Пример
      // if (/* fs.existsSync(pythonConfigPath) */ false) { // Проверка существования файла
      //   scriptArgs.push('--config_file', pythonConfigPath);
      // }

      console.log('Executing Python translation script with args:', scriptArgs);

      // 2. Запустить Python-процесс
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
          console.error(`Python translation script stderr (code ${code}):`, stderrData);
           try {
            const errorJson = JSON.parse(stderrData);
            return res.status(500).json({ success: false, error: errorJson.errors ? errorJson.errors[0] : "Python script execution error", details: stderrData });
          } catch (e) {
            return res.status(500).json({ success: false, error: 'Python script execution error and failed to parse stderr.', details: stderrData });
          }
        }

        if (code !== 0) {
          console.error(`Python translation script exited with code ${code}`);
          return res.status(500).json({ success: false, error: `Python script exited with code ${code}.`, details: stdoutData });
        }

        try {
          const result = JSON.parse(stdoutData);
           if (result.success && result.data && result.data.results) {
            res.json({
              success: true,
              processingTimeMs: result.data.processingTimeMs || 0, // Python скрипт должен вернуть это
              results: result.data.results
            });
          } else {
             res.status(500).json({ success: false, error: 'Translation processing failed in Python script.', details: result.errors || stdoutData });
          }
        } catch (parseError) {
          console.error('Error parsing Python translation script output:', parseError, "Raw output:", stdoutData);
          res.status(500).json({ success: false, error: 'Error parsing Python script output.', details: stdoutData });
        }
      });

      pythonProcess.on('error', (err) => {
        console.error('Failed to start Python translation script:', err);
        res.status(500).json({ success: false, error: 'Failed to start Python script.', details: err.message });
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

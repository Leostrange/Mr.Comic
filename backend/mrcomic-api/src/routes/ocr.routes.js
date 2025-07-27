const express = require('express');
const router = express.Router();
const passport = require('passport');
const multer = require('multer');
const { spawn } = require('child_process');
const fs = require('fs').promises;
const path = require('path');
const os = require('os');
const authUtils = require('../../utils/auth');

// Настройка multer для загрузки изображения в память
const storage = multer.memoryStorage();
const upload = multer({
  storage,
  limits: { fileSize: 10 * 1024 * 1024 }, // макс 10МБ
  fileFilter: (req, file, cb) => {
    if (file.mimetype.startsWith('image/')) cb(null, true);
    else cb(new Error('Not an image! Please upload an image file.'), false);
  }
});

/**
 * @route   POST /api/ocr/process_image
 * @desc    Обработка изображения для OCR
 * @access  Private
 */
router.post(
  '/process_image',
  passport.authenticate('jwt', { session: false }),
  upload.single('image'),
  async (req, res) => {
    try {
      if (!authUtils.checkScopes(['ocr:process'], req.user.scopes)) {
        return res.status(403).json({
          code: 'insufficient_scope',
          message: 'Недостаточно прав для выполнения OCR',
        });
      }

      if (!req.file) {
        return res.status(400).json({
          success: false,
          error: { code: 'missing_image', message: 'Файл изображения не предоставлен.' }
        });
      }

      // Сохраняем файл во временную папку
      const tempFileName = `ocr_temp_${Date.now()}_${req.file.originalname}`;
      const tempFilePath = path.join(os.tmpdir(), tempFileName);
      await fs.writeFile(tempFilePath, req.file.buffer);

      // Опциональные параметры (если передаются в теле запроса)
      const regions = req.body.regions ? JSON.parse(req.body.regions) : undefined;
      const languages = req.body.languages ? JSON.parse(req.body.languages) : undefined;
      const ocrParams = req.body.ocrParams ? JSON.parse(req.body.ocrParams) : undefined;

      // Путь к Python скрипту - настройте под ваш проект
      const pythonScriptPath = path.resolve(__dirname, '../../../mrcomic-ocr-translation/src/integrated_system.py');
      const scriptArgs = [
        pythonScriptPath,
        '--mode', 'ocr',
        '--image_path', tempFilePath,
      ];

      if (regions) scriptArgs.push('--regions', JSON.stringify(regions));
      if (languages) scriptArgs.push('--ocr_languages', JSON.stringify(languages));
      if (ocrParams) scriptArgs.push('--ocr_params', JSON.stringify(ocrParams));

      const pythonProcess = spawn('python3', scriptArgs);

      let stdoutData = '';
      let stderrData = '';

      pythonProcess.stdout.on('data', data => {
        stdoutData += data.toString();
      });

      pythonProcess.stderr.on('data', data => {
        stderrData += data.toString();
      });

      pythonProcess.on('close', async (code) => {
        // Удаляем временный файл
        try {
          await fs.unlink(tempFilePath);
        } catch (err) {
          console.error('Ошибка удаления временного файла OCR:', err);
        }

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
          console.error(`Python скрипт завершился с кодом ${code}`);
          return res.status(500).json({
            success: false,
            error: `Python скрипт завершился с кодом ${code}`,
            details: stdoutData
          });
        }

        try {
          const result = JSON.parse(stdoutData);
          if (result.success && result.data) {
            return res.json({
              success: true,
              processingTimeMs: result.data.processing_time || 0,
              results: result.data.ocr_results || result.data
            });
          } else {
            return res.status(500).json({
              success: false,
              error: 'Ошибка в OCR обработке Python скрипта',
              details: result.errors || stdoutData
            });
          }
        } catch (parseError) {
          console.error('Ошибка парсинга JSON из Python:', parseError, stdoutData);
          return res.status(500).json({
            success: false,
            error: 'Ошибка парсинга ответа Python скрипта',
            details: stdoutData
          });
        }
      });

      pythonProcess.on('error', async err => {
        console.error('Не удалось запустить Python скрипт OCR:', err);
        try {
          await fs.unlink(tempFilePath);
        } catch (unlinkErr) {
          console.error('Ошибка удаления временного файла при ошибке запуска:', unlinkErr);
        }
        res.status(500).json({
          success: false,
          error: 'Не удалось запустить Python скрипт',
          details: err.message
        });
      });

    } catch (error) {
      console.error('Ошибка OCR:', error);
      if (error.message.startsWith('Not an image!')) {
        return res.status(400).json({
          success: false,
          error: { code: 'invalid_file_type', message: error.message }
        });
      }
      res.status(500).json({
        success: false,
        error: { code: 'server_error', message: 'Внутренняя ошибка сервера при обработке OCR.' }
      });
    }
  }
);

module.exports = router;

const express = require('express');
const router = express.Router();
const passport = require('passport');
const multer = require('multer'); // Для обработки multipart/form-data (загрузки файлов)

// Настройка multer для загрузки изображений (можно вынести в отдельный middleware/config)
const storage = multer.memoryStorage(); // Храним файл в памяти (можно изменить на diskStorage)
const upload = multer({
  storage: storage,
  limits: { fileSize: 10 * 1024 * 1024 }, // Ограничение размера файла (например, 10MB)
  fileFilter: (req, file, cb) => {
    if (file.mimetype.startsWith('image/')) {
      cb(null, true);
    } else {
      cb(new Error('Not an image! Please upload an image file.'), false);
    }
  }
});

/**
 * @route   POST /api/ocr/process_image
 * @desc    Распознавание текста на изображении
 * @access  Private (защищено JWT)
 */
router.post(
  '/process_image',
  passport.authenticate('jwt', { session: false }),
  upload.single('image'), // Middleware для загрузки одного файла с именем 'image'
  async (req, res) => {
    try {
      if (!req.file) {
        return res.status(400).json({
          success: false,
          error: { code: 'missing_image', message: 'Файл изображения не предоставлен.' }
        });
      }

      const imageBuffer = req.file.buffer;
      const regions = req.body.regions ? JSON.parse(req.body.regions) : undefined;
      const languages = req.body.languages ? JSON.parse(req.body.languages) : undefined;
      const ocrParams = req.body.ocrParams ? JSON.parse(req.body.ocrParams) : undefined;

      const { spawn } = require('child_process');
      const fs = require('fs').promises;
      const path = require('path');
      const os = require('os');

      // 1. Сохранить буфер изображения во временный файл
      const tempFileName = `ocr_temp_${Date.now()}_${req.file.originalname}`;
      const tempFilePath = path.join(os.tmpdir(), tempFileName);
      await fs.writeFile(tempFilePath, imageBuffer);

      // 2. Сформировать аргументы для Python-скрипта
      const pythonScriptPath = path.resolve(__dirname, '../../../mrcomic-ocr-translation/src/integrated_system.py');
      const scriptArgs = [
        pythonScriptPath,
        '--mode', 'ocr',
        '--image_path', tempFilePath
      ];

      if (regions) {
        scriptArgs.push('--regions', JSON.stringify(regions));
      }
      if (languages) {
        scriptArgs.push('--ocr_languages', JSON.stringify(languages));
      }
      if (ocrParams) {
        scriptArgs.push('--ocr_params', JSON.stringify(ocrParams));
      }

      // Путь к конфигурационному файлу Python системы (если он нужен и его путь известен)
      // const pythonConfigPath = path.resolve(__dirname, '../../../mrcomic-ocr-translation/config.json'); // Пример
      // if (await fs.access(pythonConfigPath).then(() => true).catch(() => false)) {
      // scriptArgs.push('--config_file', pythonConfigPath);
      // }

      console.log('Executing Python OCR script with args:', scriptArgs);

      // 3. Запустить Python-процесс
      const pythonProcess = spawn('python3', scriptArgs);

      let stdoutData = '';
      let stderrData = '';

      pythonProcess.stdout.on('data', (data) => {
        stdoutData += data.toString();
      });

      pythonProcess.stderr.on('data', (data) => {
        stderrData += data.toString();
      });

      pythonProcess.on('close', async (code) => {
        // 4. Удалить временный файл
        try {
          await fs.unlink(tempFilePath);
        } catch (unlinkError) {
          console.error('Error deleting temp OCR image file:', unlinkError);
        }

        if (stderrData) {
          console.error(`Python OCR script stderr (code ${code}):`, stderrData);
          try {
            const errorJson = JSON.parse(stderrData);
            return res.status(500).json({ success: false, error: errorJson.errors ? errorJson.errors[0] : "Python script execution error", details: stderrData });
          } catch (e) {
            return res.status(500).json({ success: false, error: 'Python script execution error and failed to parse stderr.', details: stderrData });
          }
        }

        if (code !== 0) {
          console.error(`Python OCR script exited with code ${code}`);
          return res.status(500).json({ success: false, error: `Python script exited with code ${code}.`, details: stdoutData });
        }

        try {
          const result = JSON.parse(stdoutData);
          if (result.success && result.data) {
            // Обогащаем ответ API дополнительной информацией, если нужно
            res.json({
              success: true,
              processingTimeMs: result.data.processing_time || 0, // Python скрипт должен вернуть это
              results: result.data.ocr_results || result.data // В зависимости от структуры ответа Python
            });
          } else {
            res.status(500).json({ success: false, error: 'OCR processing failed in Python script.', details: result.errors || stdoutData });
          }
        } catch (parseError) {
          console.error('Error parsing Python OCR script output:', parseError, "Raw output:", stdoutData);
          res.status(500).json({ success: false, error: 'Error parsing Python script output.', details: stdoutData });
        }
      });

      pythonProcess.on('error', async (err) => {
        console.error('Failed to start Python OCR script:', err);
        try {
          await fs.unlink(tempFilePath);
        } catch (unlinkError) {
          console.error('Error deleting temp OCR image file on spawn error:', unlinkError);
        }
        res.status(500).json({ success: false, error: 'Failed to start Python script.', details: err.message });
      });

    } catch (error) {
      console.error('Ошибка OCR:', error);
      if (error.message.startsWith('Not an image!')) {
          return res.status(400).json({ success: false, error: { code: 'invalid_file_type', message: error.message } });
      }
      try { // Пытаемся распарсить JSON ошибки, если они есть
        const bodyError = JSON.parse(error.message); // Если ошибка из-за парсинга JSON
        if(bodyError && bodyError.code) return res.status(400).json({ success: false, error: bodyError });
      } catch (e) {
        // Ошибка не JSON, возвращаем стандартную
      }
      res.status(500).json({
        success: false,
        error: { code: 'server_error', message: 'Внутренняя ошибка сервера при обработке OCR.' }
      });
    }
  }
);

module.exports = router;

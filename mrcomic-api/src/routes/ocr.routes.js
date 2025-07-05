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

      // *** Логика вызова Python-скрипта OCR будет здесь ***
      // Сейчас возвращаем заглушку

      console.log('OCR Request Body:', { regions, languages, ocrParams });
      console.log('OCR Image File:', { name: req.file.originalname, size: req.file.size, mimetype: req.file.mimetype });


      // Пример заглушки ответа
      const mockOcrResult = {
        success: true,
        processingTimeMs: Math.floor(Math.random() * 1000) + 500,
        results: [
          {
            regionId: regions && regions[0] ? regions[0].id : "full_image_scan",
            text: "Пример распознанного текста из области.",
            confidence: 0.92,
            language: languages ? languages[0] : "rus",
            bbox: regions && regions[0] ? regions[0] : { x: 10, y: 20, width: 280, height: 40 },
            words: [
              { text: "Пример", confidence: 0.95, bbox: { x:10, y:20, width:50, height:10 } },
              { text: "распознанного", confidence: 0.90, bbox: { x:65, y:20, width:100, height:10 } },
              { text: "текста", confidence: 0.88, bbox: { x:170, y:20, width:50, height:10 } }
            ]
          }
        ]
      };

      res.json(mockOcrResult);

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

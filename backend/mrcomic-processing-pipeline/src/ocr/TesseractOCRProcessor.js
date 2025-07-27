/**
 * TesseractOCRProcessor - Реализация OCR-процессора на базе Tesseract
 * 
 * Особенности:
 * - Интеграция с библиотекой Tesseract.js
 * - Поддержка различных языков
 * - Предобработка изображений для улучшения качества распознавания
 * - Кэширование результатов для оптимизации производительности
 */
class TesseractOCRProcessor extends require('./OCRProcessor') {
  /**
   * @param {Object} options - Опции OCR-процессора
   * @param {Logger} options.logger - Экземпляр логгера
   * @param {ErrorHandler} options.errorHandler - Обработчик ошибок
   * @param {EventEmitter} options.eventEmitter - Система событий
   * @param {CacheManager} options.cacheManager - Менеджер кэша
   * @param {Object} options.config - Конфигурация OCR
   */
  constructor(options = {}) {
    super(options);
    
    // Загружаем Tesseract.js
    this.tesseract = require('tesseract.js');
    
    // Настраиваем конфигурацию по умолчанию
    this.config = {
      language: 'eng',
      cachePath: './cache',
      workerPath: 'https://unpkg.com/tesseract.js@v2.1.0/dist/worker.min.js',
      corePath: 'https://unpkg.com/tesseract.js-core@v2.2.0/tesseract-core.wasm.js',
      ...this.config,
      ...options.config
    };
    
    this.logger?.info('TesseractOCRProcessor initialized', { language: this.config.language });
  }

  /**
   * Распознавание текста на изображении
   * @param {string|Buffer} image - Путь к изображению или буфер с данными
   * @param {Object} options - Опции распознавания
   * @returns {Promise<Object>} - Результат распознавания
   */
  async recognize(image, options = {}) {
    const language = options.language || this.config.language;
    const cacheKey = await this._generateCacheKey(image, { ...options, language });
    
    // Проверяем кэш, если доступен
    if (this.cacheManager) {
      const cachedResult = await this.cacheManager.get(cacheKey);
      if (cachedResult) {
        this.logger?.debug('Using cached OCR result', { language });
        return cachedResult;
      }
    }
    
    this.logger?.info('Starting OCR recognition', { language });
    
    try {
      // Предобработка изображения
      const preprocessedImage = await this._preprocessImage(image, options);
      
      // Уведомляем о начале распознавания
      this.eventEmitter?.emit('ocr:recognition_started', { language });
      
      // Создаем воркер Tesseract
      const worker = await this.tesseract.createWorker({
        logger: progress => {
          // Отправляем события прогресса
          this.eventEmitter?.emit('ocr:progress', {
            status: progress.status,
            progress: progress.progress,
            language
          });
        },
        langPath: this.config.langPath,
        cachePath: this.config.cachePath,
        workerPath: this.config.workerPath,
        corePath: this.config.corePath
      });
      
      // Загружаем данные языка
      await worker.loadLanguage(language);
      await worker.initialize(language);
      
      // Настраиваем параметры распознавания
      const recognizeOptions = {
        ...options
      };
      
      // Если указаны области интереса, используем их
      if (options.regions && Array.isArray(options.regions) && options.regions.length > 0) {
        recognizeOptions.rectangle = options.regions;
      }
      
      // Выполняем распознавание
      const { data } = await worker.recognize(preprocessedImage, recognizeOptions);
      
      // Освобождаем ресурсы воркера
      await worker.terminate();
      
      // Постобработка результатов
      const result = await this._postprocessResult(data, options);
      
      // Уведомляем о завершении распознавания
      this.eventEmitter?.emit('ocr:recognition_completed', { 
        language,
        confidence: result.confidence,
        textLength: result.text.length
      });
      
      // Кэшируем результат, если доступен кэш-менеджер
      if (this.cacheManager) {
        await this.cacheManager.set(cacheKey, result, {
          ttl: options.cacheTTL || this.config.cacheTTL || 3600 // 1 час по умолчанию
        });
      }
      
      return result;
    } catch (error) {
      this.logger?.error('Error during OCR recognition', error);
      
      // Уведомляем об ошибке
      this.eventEmitter?.emit('ocr:recognition_failed', { 
        language,
        error: error.message
      });
      
      // Обрабатываем ошибку
      if (this.errorHandler) {
        throw this.errorHandler.handleError(error, { 
          operation: 'ocr_recognize', 
          language,
          options
        });
      }
      
      throw error;
    }
  }

  /**
   * Проверка поддержки языка
   * @param {string} language - Код языка
   * @returns {boolean} - true, если язык поддерживается
   */
  supportsLanguage(language) {
    const supportedLanguages = this.getSupportedLanguages();
    return supportedLanguages.includes(language);
  }

  /**
   * Получение списка поддерживаемых языков
   * @returns {Array<string>} - Массив кодов поддерживаемых языков
   */
  getSupportedLanguages() {
    // Список основных поддерживаемых языков Tesseract
    return [
      'eng', // Английский
      'rus', // Русский
      'jpn', // Японский
      'kor', // Корейский
      'chi_sim', // Китайский (упрощенный)
      'chi_tra', // Китайский (традиционный)
      'fra', // Французский
      'deu', // Немецкий
      'ita', // Итальянский
      'spa', // Испанский
      'por', // Португальский
      'ara', // Арабский
      'hin', // Хинди
      'vie', // Вьетнамский
      'tha', // Тайский
      'tur', // Турецкий
      'ukr', // Украинский
      'pol', // Польский
      'nld', // Голландский
      'swe', // Шведский
      'fin', // Финский
      'dan', // Датский
      'nor', // Норвежский
      'hun', // Венгерский
      'bul', // Болгарский
      'ces', // Чешский
      'ron', // Румынский
      'slk', // Словацкий
      'slv', // Словенский
      'hrv', // Хорватский
      'ell', // Греческий
      'heb', // Иврит
      'kat', // Грузинский
      'aze', // Азербайджанский
      'bel', // Белорусский
      'ben', // Бенгальский
      'eus', // Баскский
      'cat', // Каталанский
      'est', // Эстонский
      'gle', // Ирландский
      'glg', // Галисийский
      'isl', // Исландский
      'ind', // Индонезийский
      'jav', // Яванский
      'kan', // Каннада
      'kaz', // Казахский
      'khm', // Кхмерский
      'kir', // Киргизский
      'lao', // Лаосский
      'lat', // Латинский
      'lav', // Латышский
      'lit', // Литовский
      'mal', // Малаялам
      'mar', // Маратхи
      'mkd', // Македонский
      'mlt', // Мальтийский
      'msa', // Малайский
      'mya', // Бирманский
      'nep', // Непальский
      'pan', // Панджаби
      'srp', // Сербский
      'swa', // Суахили
      'tam', // Тамильский
      'tel', // Телугу
      'tgk', // Таджикский
      'tgl', // Тагальский
      'uzb', // Узбекский
      'urd', // Урду
      'yid'  // Идиш
    ];
  }

  /**
   * Предобработка изображения
   * @protected
   * @param {string|Buffer} image - Путь к изображению или буфер с данными
   * @param {Object} options - Опции предобработки
   * @returns {Promise<Buffer>} - Обработанное изображение
   */
  async _preprocessImage(image, options = {}) {
    // Если предобработка отключена, возвращаем исходное изображение
    if (options.skipPreprocessing || this.config.skipPreprocessing) {
      return image;
    }
    
    try {
      // Загружаем Sharp для обработки изображений
      const sharp = require('sharp');
      
      // Создаем объект Sharp из изображения
      let sharpImage;
      if (typeof image === 'string') {
        sharpImage = sharp(image);
      } else {
        sharpImage = sharp(image);
      }
      
      // Применяем базовые улучшения для OCR
      sharpImage = sharpImage
        // Преобразуем в оттенки серого
        .grayscale()
        // Увеличиваем контраст
        .normalize()
        // Удаляем шум
        .median(options.medianRadius || this.config.medianRadius || 1);
      
      // Применяем дополнительные улучшения, если указаны
      if (options.sharpen || this.config.sharpen) {
        sharpImage = sharpImage.sharpen();
      }
      
      if (options.threshold || this.config.threshold) {
        sharpImage = sharpImage.threshold(options.thresholdValue || this.config.thresholdValue || 128);
      }
      
      // Изменяем размер, если указано
      if (options.resize || this.config.resize) {
        const width = options.width || this.config.width;
        const height = options.height || this.config.height;
        
        if (width || height) {
          sharpImage = sharpImage.resize(width, height, {
            fit: 'inside',
            withoutEnlargement: true
          });
        }
      }
      
      // Получаем буфер обработанного изображения
      const buffer = await sharpImage.toBuffer();
      
      this.logger?.debug('Image preprocessing completed');
      
      return buffer;
    } catch (error) {
      this.logger?.warn('Error during image preprocessing, using original image', error);
      return image;
    }
  }

  /**
   * Постобработка результатов OCR
   * @protected
   * @param {Object} result - Результат распознавания
   * @param {Object} options - Опции постобработки
   * @returns {Promise<Object>} - Обработанный результат
   */
  async _postprocessResult(result, options = {}) {
    // Если постобработка отключена, возвращаем исходный результат
    if (options.skipPostprocessing || this.config.skipPostprocessing) {
      return result;
    }
    
    try {
      // Создаем копию результата для обработки
      const processedResult = { ...result };
      
      // Удаляем лишние пробелы и переносы строк
      if (options.trimText || this.config.trimText) {
        processedResult.text = processedResult.text.trim();
      }
      
      // Объединяем короткие строки
      if (options.mergeLines || this.config.mergeLines) {
        processedResult.text = processedResult.text
          .replace(/(\S)\n(\S)/g, '$1 $2') // Заменяем переносы между словами на пробелы
          .replace(/\n{2,}/g, '\n\n'); // Оставляем только двойные переносы
      }
      
      // Исправляем распространенные ошибки OCR
      if (options.fixCommonErrors || this.config.fixCommonErrors) {
        processedResult.text = processedResult.text
          .replace(/['']/g, "'") // Стандартизируем апострофы
          .replace(/[""]/g, '"') // Стандартизируем кавычки
          .replace(/\s{2,}/g, ' ') // Удаляем лишние пробелы
          .replace(/[|]l/g, 'I') // Исправляем распространенную ошибку с буквой I
          .replace(/[0](?=[A-Za-z])/g, 'O') // Исправляем 0 на O в словах
          .replace(/l(?=[0-9])/g, '1'); // Исправляем l на 1 в числах
      }
      
      // Фильтруем результаты по уверенности
      if (options.confidenceThreshold || this.config.confidenceThreshold) {
        const threshold = options.confidenceThreshold || this.config.confidenceThreshold;
        
        if (processedResult.words) {
          processedResult.words = processedResult.words.filter(word => word.confidence >= threshold);
          
          // Пересобираем текст из отфильтрованных слов
          if (processedResult.words.length > 0) {
            processedResult.text = processedResult.words.map(word => word.text).join(' ');
          }
        }
      }
      
      this.logger?.debug('OCR result postprocessing completed');
      
      return processedResult;
    } catch (error) {
      this.logger?.warn('Error during OCR result postprocessing, using original result', error);
      return result;
    }
  }
}

module.exports = TesseractOCRProcessor;

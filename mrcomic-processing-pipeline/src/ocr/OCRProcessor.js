/**
 * OCRProcessor - Абстрактный класс для обработки OCR
 * 
 * Особенности:
 * - Базовый интерфейс для всех OCR-процессоров
 * - Определение общих методов и свойств
 * - Поддержка предобработки изображений
 * - Обработка ошибок и восстановление
 */
class OCRProcessor {
  /**
   * @param {Object} options - Опции OCR-процессора
   * @param {Logger} options.logger - Экземпляр логгера
   * @param {ErrorHandler} options.errorHandler - Обработчик ошибок
   * @param {EventEmitter} options.eventEmitter - Система событий
   * @param {CacheManager} options.cacheManager - Менеджер кэша
   * @param {Object} options.config - Конфигурация OCR
   */
  constructor(options = {}) {
    this.logger = options.logger;
    this.errorHandler = options.errorHandler;
    this.eventEmitter = options.eventEmitter;
    this.cacheManager = options.cacheManager;
    this.config = options.config || {};
    
    // Проверяем, что класс не инстанцируется напрямую
    if (this.constructor === OCRProcessor) {
      throw new Error('OCRProcessor is an abstract class and cannot be instantiated directly');
    }
  }

  /**
   * Распознавание текста на изображении
   * @param {string|Buffer} image - Путь к изображению или буфер с данными
   * @param {Object} options - Опции распознавания
   * @returns {Promise<Object>} - Результат распознавания
   */
  async recognize(image, options = {}) {
    throw new Error('Method recognize() must be implemented by subclass');
  }

  /**
   * Распознавание текста на нескольких изображениях
   * @param {Array<string|Buffer>} images - Массив путей к изображениям или буферов
   * @param {Object} options - Опции распознавания
   * @returns {Promise<Array<Object>>} - Результаты распознавания
   */
  async recognizeBatch(images, options = {}) {
    const results = [];
    const errors = [];
    
    this.logger?.info(`Starting batch OCR processing for ${images.length} images`);
    
    // Уведомляем о начале пакетной обработки
    this.eventEmitter?.emit('ocr:batch_started', { 
      count: images.length,
      options
    });
    
    // Обрабатываем изображения параллельно с ограничением параллелизма
    const concurrency = options.concurrency || this.config.concurrency || 2;
    const batches = this._chunkArray(images, concurrency);
    
    let processedCount = 0;
    
    for (const batch of batches) {
      const batchPromises = batch.map(async (image, index) => {
        const imageIndex = processedCount + index;
        
        try {
          // Уведомляем о начале обработки изображения
          this.eventEmitter?.emit('ocr:image_processing', { 
            index: imageIndex,
            total: images.length
          });
          
          const result = await this.recognize(image, options);
          
          // Уведомляем об успешной обработке изображения
          this.eventEmitter?.emit('ocr:image_processed', { 
            index: imageIndex,
            total: images.length,
            success: true
          });
          
          return { success: true, result, index: imageIndex };
        } catch (error) {
          this.logger?.error(`Error processing image at index ${imageIndex}`, error);
          
          // Уведомляем об ошибке обработки изображения
          this.eventEmitter?.emit('ocr:image_processed', { 
            index: imageIndex,
            total: images.length,
            success: false,
            error
          });
          
          return { success: false, error, index: imageIndex };
        }
      });
      
      const batchResults = await Promise.all(batchPromises);
      
      for (const result of batchResults) {
        if (result.success) {
          results[result.index] = result.result;
        } else {
          errors[result.index] = result.error;
          results[result.index] = null;
        }
      }
      
      processedCount += batch.length;
      
      // Уведомляем о прогрессе пакетной обработки
      this.eventEmitter?.emit('ocr:batch_progress', { 
        processed: processedCount,
        total: images.length,
        errors: errors.filter(Boolean).length
      });
    }
    
    // Уведомляем о завершении пакетной обработки
    this.eventEmitter?.emit('ocr:batch_completed', { 
      count: images.length,
      errors: errors.filter(Boolean).length,
      options
    });
    
    return {
      results,
      errors: errors.filter(Boolean).length > 0 ? errors : null
    };
  }

  /**
   * Проверка поддержки языка
   * @param {string} language - Код языка
   * @returns {boolean} - true, если язык поддерживается
   */
  supportsLanguage(language) {
    throw new Error('Method supportsLanguage() must be implemented by subclass');
  }

  /**
   * Получение списка поддерживаемых языков
   * @returns {Array<string>} - Массив кодов поддерживаемых языков
   */
  getSupportedLanguages() {
    throw new Error('Method getSupportedLanguages() must be implemented by subclass');
  }

  /**
   * Предобработка изображения
   * @protected
   * @param {string|Buffer} image - Путь к изображению или буфер с данными
   * @param {Object} options - Опции предобработки
   * @returns {Promise<Buffer>} - Обработанное изображение
   */
  async _preprocessImage(image, options = {}) {
    // Базовая реализация просто возвращает исходное изображение
    // Подклассы могут переопределить этот метод для реализации предобработки
    return image;
  }

  /**
   * Постобработка результатов OCR
   * @protected
   * @param {Object} result - Результат распознавания
   * @param {Object} options - Опции постобработки
   * @returns {Promise<Object>} - Обработанный результат
   */
  async _postprocessResult(result, options = {}) {
    // Базовая реализация просто возвращает исходный результат
    // Подклассы могут переопределить этот метод для реализации постобработки
    return result;
  }

  /**
   * Генерация ключа кэша
   * @protected
   * @param {string|Buffer} image - Путь к изображению или буфер с данными
   * @param {Object} options - Опции распознавания
   * @returns {Promise<string>} - Ключ кэша
   */
  async _generateCacheKey(image, options = {}) {
    let key = 'ocr:';
    
    if (typeof image === 'string') {
      // Если это путь к файлу, используем его как часть ключа
      key += `path:${image}:`;
    } else {
      // Если это буфер, используем хеш содержимого
      const crypto = require('crypto');
      const hash = crypto.createHash('md5').update(image).digest('hex');
      key += `buffer:${hash}:`;
    }
    
    // Добавляем опции в ключ
    const optionsStr = JSON.stringify({
      language: options.language || this.config.language || 'eng',
      ...options
    });
    
    key += crypto.createHash('md5').update(optionsStr).digest('hex');
    
    return key;
  }

  /**
   * Разделение массива на части
   * @private
   * @param {Array} array - Исходный массив
   * @param {number} size - Размер части
   * @returns {Array<Array>} - Массив частей
   */
  _chunkArray(array, size) {
    const chunks = [];
    for (let i = 0; i < array.length; i += size) {
      chunks.push(array.slice(i, i + size));
    }
    return chunks;
  }
}

module.exports = OCRProcessor;

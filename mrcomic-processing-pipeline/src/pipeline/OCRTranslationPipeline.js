/**
 * OCRTranslationPipeline - Интеграция модулей OCR и перевода в единый конвейер обработки
 * 
 * Особенности:
 * - Полный конвейер обработки от OCR до перевода
 * - Асинхронная обработка с поддержкой пакетного режима
 * - Оптимизация производительности и использования ресурсов
 * - Комплексная обработка ошибок и восстановление
 */
class OCRTranslationPipeline {
  /**
   * @param {Object} options - Опции конвейера
   * @param {PipelineManager} options.pipelineManager - Менеджер конвейера
   * @param {OCRProcessorFactory} options.ocrFactory - Фабрика OCR-процессоров
   * @param {TranslationProcessorFactory} options.translationFactory - Фабрика процессоров перевода
   * @param {Logger} options.logger - Экземпляр логгера
   * @param {ErrorHandler} options.errorHandler - Обработчик ошибок
   * @param {EventEmitter} options.eventEmitter - Система событий
   * @param {CacheManager} options.cacheManager - Менеджер кэша
   * @param {Object} options.config - Конфигурация конвейера
   */
  constructor(options = {}) {
    this.pipelineManager = options.pipelineManager;
    this.ocrFactory = options.ocrFactory;
    this.translationFactory = options.translationFactory;
    this.logger = options.logger;
    this.errorHandler = options.errorHandler;
    this.eventEmitter = options.eventEmitter;
    this.cacheManager = options.cacheManager;
    this.config = options.config || {};
    
    // Настраиваем конфигурацию по умолчанию
    this.config = {
      concurrency: 3, // Количество параллельных обработок
      autoDetectLanguage: true, // Автоматическое определение языка
      preferredOCREngine: 'auto', // 'auto', 'tesseract', 'google'
      preferredTranslationEngine: 'auto', // 'auto', 'google', 'deepl'
      highQualityMode: false, // Режим высокого качества
      cacheTTL: 86400, // Время жизни кэша в секундах (24 часа)
      ...this.config
    };
    
    this.logger?.info('OCRTranslationPipeline initialized', {
      concurrency: this.config.concurrency,
      preferredOCREngine: this.config.preferredOCREngine,
      preferredTranslationEngine: this.config.preferredTranslationEngine
    });
  }

  /**
   * Обработка изображения: OCR + перевод
   * @param {string|Buffer} image - Путь к изображению или буфер с данными
   * @param {Object} options - Опции обработки
   * @param {string} options.sourceLanguage - Исходный язык (для OCR)
   * @param {string} options.targetLanguage - Целевой язык (для перевода)
   * @param {string} options.ocrEngine - Тип OCR-движка
   * @param {string} options.translationEngine - Тип движка перевода
   * @param {boolean} options.highQuality - Режим высокого качества
   * @returns {Promise<Object>} - Результат обработки
   */
  async process(image, options = {}) {
    const jobId = options.jobId || `job_${Date.now()}_${Math.random().toString(36).substring(2, 9)}`;
    
    this.logger?.info('Starting OCR and translation pipeline', { jobId });
    
    // Уведомляем о начале обработки
    this.eventEmitter?.emit('pipeline:process_started', { 
      jobId,
      options
    });
    
    try {
      // Определяем языки
      const sourceLanguage = options.sourceLanguage || this.config.sourceLanguage || 'auto';
      const targetLanguage = options.targetLanguage || this.config.targetLanguage || 'en';
      
      // Определяем типы движков
      const ocrEngine = options.ocrEngine || this.config.preferredOCREngine || 'auto';
      const translationEngine = options.translationEngine || this.config.preferredTranslationEngine || 'auto';
      
      // Определяем режим качества
      const highQuality = options.highQuality !== undefined ? options.highQuality : this.config.highQualityMode;
      
      // Шаг 1: OCR
      this.logger?.debug('Starting OCR processing', { jobId, sourceLanguage, ocrEngine });
      
      // Уведомляем о начале OCR
      this.eventEmitter?.emit('pipeline:ocr_started', { 
        jobId,
        sourceLanguage,
        ocrEngine
      });
      
      // Создаем OCR-процессор
      let ocrProcessor;
      if (ocrEngine === 'auto') {
        ocrProcessor = this.ocrFactory.createOptimal({
          language: sourceLanguage,
          highAccuracy: highQuality,
          offline: options.offline
        });
      } else {
        ocrProcessor = this.ocrFactory.create(ocrEngine, {
          language: sourceLanguage
        });
      }
      
      // Выполняем OCR
      const ocrResult = await ocrProcessor.recognize(image, {
        language: sourceLanguage,
        ...options.ocrOptions
      });
      
      // Уведомляем о завершении OCR
      this.eventEmitter?.emit('pipeline:ocr_completed', { 
        jobId,
        sourceLanguage,
        ocrEngine,
        confidence: ocrResult.confidence,
        textLength: ocrResult.text.length
      });
      
      // Если текст не был распознан, возвращаем результат OCR
      if (!ocrResult.text || ocrResult.text.trim() === '') {
        this.logger?.warn('No text recognized during OCR', { jobId });
        
        // Уведомляем о завершении обработки
        this.eventEmitter?.emit('pipeline:process_completed', { 
          jobId,
          success: true,
          stage: 'ocr',
          message: 'No text to translate'
        });
        
        return {
          jobId,
          ocrResult,
          translationResult: null,
          success: true,
          message: 'No text to translate'
        };
      }
      
      // Шаг 2: Перевод
      this.logger?.debug('Starting translation processing', { 
        jobId, 
        sourceLanguage, 
        targetLanguage, 
        translationEngine 
      });
      
      // Уведомляем о начале перевода
      this.eventEmitter?.emit('pipeline:translation_started', { 
        jobId,
        sourceLanguage,
        targetLanguage,
        translationEngine,
        textLength: ocrResult.text.length
      });
      
      // Создаем процессор перевода
      let translationProcessor;
      if (translationEngine === 'auto') {
        translationProcessor = this.translationFactory.createOptimal({
          sourceLanguage: ocrResult.language || sourceLanguage,
          targetLanguage,
          highQuality,
          offline: options.offline
        });
      } else {
        translationProcessor = this.translationFactory.create(translationEngine, {
          sourceLanguage: ocrResult.language || sourceLanguage,
          targetLanguage
        });
      }
      
      // Выполняем перевод
      const translationResult = await translationProcessor.translate(
        ocrResult.text,
        ocrResult.language || sourceLanguage,
        targetLanguage,
        {
          ...options.translationOptions
        }
      );
      
      // Уведомляем о завершении перевода
      this.eventEmitter?.emit('pipeline:translation_completed', { 
        jobId,
        sourceLanguage: translationResult.sourceLanguage,
        targetLanguage,
        translationEngine,
        textLength: translationResult.translatedText.length
      });
      
      // Формируем итоговый результат
      const result = {
        jobId,
        ocrResult,
        translationResult,
        success: true
      };
      
      // Уведомляем о завершении обработки
      this.eventEmitter?.emit('pipeline:process_completed', { 
        jobId,
        success: true,
        stage: 'translation'
      });
      
      return result;
    } catch (error) {
      this.logger?.error('Error during OCR and translation pipeline', { jobId, error });
      
      // Уведомляем об ошибке
      this.eventEmitter?.emit('pipeline:process_failed', { 
        jobId,
        error: error.message
      });
      
      // Обрабатываем ошибку
      if (this.errorHandler) {
        throw this.errorHandler.handleError(error, { 
          operation: 'ocr_translation_pipeline', 
          jobId,
          options
        });
      }
      
      throw error;
    }
  }

  /**
   * Пакетная обработка нескольких изображений
   * @param {Array<string|Buffer>} images - Массив путей к изображениям или буферов с данными
   * @param {Object} options - Опции обработки
   * @returns {Promise<Object>} - Результаты обработки
   */
  async processBatch(images, options = {}) {
    const batchId = options.batchId || `batch_${Date.now()}_${Math.random().toString(36).substring(2, 9)}`;
    
    this.logger?.info('Starting batch OCR and translation processing', { 
      batchId, 
      imageCount: images.length 
    });
    
    // Уведомляем о начале пакетной обработки
    this.eventEmitter?.emit('pipeline:batch_started', { 
      batchId,
      imageCount: images.length,
      options
    });
    
    const results = [];
    const errors = [];
    
    // Определяем параллелизм
    const concurrency = options.concurrency || this.config.concurrency || 3;
    
    // Разбиваем изображения на группы для параллельной обработки
    const batches = this._chunkArray(images, concurrency);
    
    let processedCount = 0;
    
    for (const batch of batches) {
      const batchPromises = batch.map(async (image, index) => {
        const imageIndex = processedCount + index;
        const jobId = `${batchId}_image_${imageIndex}`;
        
        try {
          // Уведомляем о начале обработки изображения
          this.eventEmitter?.emit('pipeline:batch_image_processing', { 
            batchId,
            jobId,
            index: imageIndex,
            total: images.length
          });
          
          const result = await this.process(image, {
            ...options,
            jobId
          });
          
          // Уведомляем об успешной обработке изображения
          this.eventEmitter?.emit('pipeline:batch_image_processed', { 
            batchId,
            jobId,
            index: imageIndex,
            total: images.length,
            success: true
          });
          
          return { success: true, result, index: imageIndex };
        } catch (error) {
          this.logger?.error(`Error processing image at index ${imageIndex}`, { batchId, error });
          
          // Уведомляем об ошибке обработки изображения
          this.eventEmitter?.emit('pipeline:batch_image_processed', { 
            batchId,
            jobId,
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
      this.eventEmitter?.emit('pipeline:batch_progress', { 
        batchId,
        processed: processedCount,
        total: images.length,
        errors: errors.filter(Boolean).length
      });
    }
    
    // Уведомляем о завершении пакетной обработки
    this.eventEmitter?.emit('pipeline:batch_completed', { 
      batchId,
      imageCount: images.length,
      successCount: results.filter(Boolean).length,
      errorCount: errors.filter(Boolean).length
    });
    
    return {
      batchId,
      results,
      errors: errors.filter(Boolean).length > 0 ? errors : null,
      success: errors.filter(Boolean).length === 0
    };
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

module.exports = OCRTranslationPipeline;

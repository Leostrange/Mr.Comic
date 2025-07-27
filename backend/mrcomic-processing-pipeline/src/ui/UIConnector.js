/**
 * UIConnector - Интерфейс взаимодействия между конвейером обработки и пользовательским интерфейсом
 * 
 * Особенности:
 * - Унифицированный API для взаимодействия UI с конвейером
 * - Система событий для обновления UI в реальном времени
 * - Адаптеры для различных компонентов UI
 * - Управление состоянием и прогрессом обработки
 */
class UIConnector {
  /**
   * @param {Object} options - Опции коннектора
   * @param {OCRTranslationPipeline} options.pipeline - Конвейер OCR и перевода
   * @param {PipelineOptimizer} options.optimizer - Оптимизатор конвейера
   * @param {EventEmitter} options.eventEmitter - Система событий
   * @param {Logger} options.logger - Экземпляр логгера
   * @param {Object} options.config - Конфигурация коннектора
   */
  constructor(options = {}) {
    this.pipeline = options.pipeline;
    this.optimizer = options.optimizer;
    this.eventEmitter = options.eventEmitter;
    this.logger = options.logger;
    this.config = options.config || {};
    
    // Состояние обработки
    this.state = {
      isProcessing: false,
      currentJobId: null,
      currentBatchId: null,
      progress: 0,
      errors: [],
      results: new Map()
    };
    
    // Регистрируем обработчики событий
    this._registerEventHandlers();
    
    this.logger?.info('UIConnector initialized');
  }

  /**
   * Запуск OCR для одиночного изображения
   * @param {string|Buffer} image - Путь к изображению или буфер с данными
   * @param {Object} options - Опции обработки
   * @returns {Promise<Object>} - Результат OCR
   */
  async performOCR(image, options = {}) {
    try {
      this.logger?.info('Starting OCR from UI', options);
      
      // Обновляем состояние
      this.state.isProcessing = true;
      this.state.progress = 0;
      
      // Генерируем уникальный идентификатор задачи
      const jobId = `ui_ocr_${Date.now()}_${Math.random().toString(36).substring(2, 9)}`;
      this.state.currentJobId = jobId;
      
      // Уведомляем UI о начале обработки
      this._notifyUI('ocr_started', {
        jobId,
        options
      });
      
      // Создаем оптимальные параметры
      const optimizedOptions = this.optimizer ? 
        this.optimizer.optimizeParameters({
          imageCount: 1,
          ...options
        }) : 
        options;
      
      // Выполняем OCR через конвейер
      const result = await this.pipeline.process(image, {
        ...optimizedOptions,
        jobId,
        skipTranslation: true // Пропускаем этап перевода
      });
      
      // Сохраняем результат
      this.state.results.set(jobId, result);
      
      // Обновляем состояние
      this.state.isProcessing = false;
      this.state.progress = 100;
      
      // Уведомляем UI о завершении обработки
      this._notifyUI('ocr_completed', {
        jobId,
        result
      });
      
      return result;
    } catch (error) {
      this.logger?.error('Error performing OCR from UI', error);
      
      // Обновляем состояние
      this.state.isProcessing = false;
      this.state.errors.push(error);
      
      // Уведомляем UI об ошибке
      this._notifyUI('ocr_failed', {
        jobId: this.state.currentJobId,
        error: error.message
      });
      
      throw error;
    }
  }

  /**
   * Запуск перевода для текста
   * @param {string} text - Текст для перевода
   * @param {string} sourceLanguage - Исходный язык
   * @param {string} targetLanguage - Целевой язык
   * @param {Object} options - Опции перевода
   * @returns {Promise<Object>} - Результат перевода
   */
  async performTranslation(text, sourceLanguage, targetLanguage, options = {}) {
    try {
      this.logger?.info('Starting translation from UI', { 
        sourceLanguage, 
        targetLanguage,
        textLength: text.length
      });
      
      // Обновляем состояние
      this.state.isProcessing = true;
      this.state.progress = 0;
      
      // Генерируем уникальный идентификатор задачи
      const jobId = `ui_translation_${Date.now()}_${Math.random().toString(36).substring(2, 9)}`;
      this.state.currentJobId = jobId;
      
      // Уведомляем UI о начале обработки
      this._notifyUI('translation_started', {
        jobId,
        sourceLanguage,
        targetLanguage
      });
      
      // Создаем оптимальные параметры
      const optimizedOptions = this.optimizer ? 
        this.optimizer.optimizeParameters({
          ...options,
          sourceLanguage,
          targetLanguage
        }) : 
        options;
      
      // Создаем фиктивный результат OCR для передачи в конвейер
      const mockOcrResult = {
        text,
        language: sourceLanguage,
        confidence: 1.0,
        regions: []
      };
      
      // Выполняем перевод через конвейер
      const result = await this.pipeline.process({
        ocrResult: mockOcrResult,
        skipOcr: true // Пропускаем этап OCR
      }, {
        ...optimizedOptions,
        jobId,
        sourceLanguage,
        targetLanguage
      });
      
      // Сохраняем результат
      this.state.results.set(jobId, result);
      
      // Обновляем состояние
      this.state.isProcessing = false;
      this.state.progress = 100;
      
      // Уведомляем UI о завершении обработки
      this._notifyUI('translation_completed', {
        jobId,
        result
      });
      
      return result;
    } catch (error) {
      this.logger?.error('Error performing translation from UI', error);
      
      // Обновляем состояние
      this.state.isProcessing = false;
      this.state.errors.push(error);
      
      // Уведомляем UI об ошибке
      this._notifyUI('translation_failed', {
        jobId: this.state.currentJobId,
        error: error.message
      });
      
      throw error;
    }
  }

  /**
   * Запуск полного конвейера OCR и перевода для изображения
   * @param {string|Buffer} image - Путь к изображению или буфер с данными
   * @param {Object} options - Опции обработки
   * @returns {Promise<Object>} - Результат обработки
   */
  async performOCRAndTranslation(image, options = {}) {
    try {
      this.logger?.info('Starting OCR and translation from UI', options);
      
      // Обновляем состояние
      this.state.isProcessing = true;
      this.state.progress = 0;
      
      // Генерируем уникальный идентификатор задачи
      const jobId = `ui_ocr_translation_${Date.now()}_${Math.random().toString(36).substring(2, 9)}`;
      this.state.currentJobId = jobId;
      
      // Уведомляем UI о начале обработки
      this._notifyUI('ocr_translation_started', {
        jobId,
        options
      });
      
      // Создаем оптимальные параметры
      const optimizedOptions = this.optimizer ? 
        this.optimizer.optimizeParameters({
          imageCount: 1,
          ...options
        }) : 
        options;
      
      // Выполняем полный конвейер
      const result = await this.pipeline.process(image, {
        ...optimizedOptions,
        jobId
      });
      
      // Сохраняем результат
      this.state.results.set(jobId, result);
      
      // Обновляем состояние
      this.state.isProcessing = false;
      this.state.progress = 100;
      
      // Уведомляем UI о завершении обработки
      this._notifyUI('ocr_translation_completed', {
        jobId,
        result
      });
      
      return result;
    } catch (error) {
      this.logger?.error('Error performing OCR and translation from UI', error);
      
      // Обновляем состояние
      this.state.isProcessing = false;
      this.state.errors.push(error);
      
      // Уведомляем UI об ошибке
      this._notifyUI('ocr_translation_failed', {
        jobId: this.state.currentJobId,
        error: error.message
      });
      
      throw error;
    }
  }

  /**
   * Запуск пакетной обработки нескольких изображений
   * @param {Array<string|Buffer>} images - Массив путей к изображениям или буферов с данными
   * @param {Object} options - Опции обработки
   * @returns {Promise<Object>} - Результаты обработки
   */
  async performBatchProcessing(images, options = {}) {
    try {
      this.logger?.info('Starting batch processing from UI', { 
        imageCount: images.length,
        options
      });
      
      // Обновляем состояние
      this.state.isProcessing = true;
      this.state.progress = 0;
      
      // Генерируем уникальный идентификатор пакета
      const batchId = `ui_batch_${Date.now()}_${Math.random().toString(36).substring(2, 9)}`;
      this.state.currentBatchId = batchId;
      
      // Уведомляем UI о начале обработки
      this._notifyUI('batch_started', {
        batchId,
        imageCount: images.length,
        options
      });
      
      // Создаем оптимальные параметры
      const optimizedOptions = this.optimizer ? 
        this.optimizer.optimizeParameters({
          imageCount: images.length,
          ...options
        }) : 
        options;
      
      // Выполняем пакетную обработку
      const result = await this.pipeline.processBatch(images, {
        ...optimizedOptions,
        batchId
      });
      
      // Сохраняем результат
      this.state.results.set(batchId, result);
      
      // Обновляем состояние
      this.state.isProcessing = false;
      this.state.progress = 100;
      
      // Уведомляем UI о завершении обработки
      this._notifyUI('batch_completed', {
        batchId,
        result
      });
      
      return result;
    } catch (error) {
      this.logger?.error('Error performing batch processing from UI', error);
      
      // Обновляем состояние
      this.state.isProcessing = false;
      this.state.errors.push(error);
      
      // Уведомляем UI об ошибке
      this._notifyUI('batch_failed', {
        batchId: this.state.currentBatchId,
        error: error.message
      });
      
      throw error;
    }
  }

  /**
   * Отмена текущей обработки
   * @returns {boolean} - true, если обработка была отменена
   */
  cancelProcessing() {
    if (!this.state.isProcessing) {
      return false;
    }
    
    this.logger?.info('Cancelling processing from UI', {
      jobId: this.state.currentJobId,
      batchId: this.state.currentBatchId
    });
    
    // Отменяем текущую задачу
    // В реальной реализации здесь был бы код для отмены задач в pipeline
    
    // Обновляем состояние
    this.state.isProcessing = false;
    
    // Уведомляем UI об отмене
    this._notifyUI('processing_cancelled', {
      jobId: this.state.currentJobId,
      batchId: this.state.currentBatchId
    });
    
    return true;
  }

  /**
   * Получение текущего состояния обработки
   * @returns {Object} - Текущее состояние
   */
  getState() {
    return { ...this.state };
  }

  /**
   * Получение результата обработки по идентификатору
   * @param {string} id - Идентификатор задачи или пакета
   * @returns {Object|null} - Результат обработки или null, если не найден
   */
  getResult(id) {
    return this.state.results.get(id) || null;
  }

  /**
   * Очистка результатов обработки
   * @param {string} [id] - Идентификатор задачи или пакета (если не указан, очищаются все результаты)
   * @returns {boolean} - true, если результаты были очищены
   */
  clearResults(id) {
    if (id) {
      const result = this.state.results.delete(id);
      
      if (result) {
        this.logger?.info(`Cleared result for ${id}`);
      }
      
      return result;
    } else {
      this.state.results.clear();
      this.logger?.info('Cleared all results');
      
      return true;
    }
  }

  /**
   * Очистка ошибок
   * @returns {boolean} - true, если ошибки были очищены
   */
  clearErrors() {
    this.state.errors = [];
    this.logger?.info('Cleared all errors');
    
    return true;
  }

  /**
   * Регистрация обработчиков событий
   * @private
   */
  _registerEventHandlers() {
    if (!this.eventEmitter) {
      return;
    }
    
    // Обработчик прогресса OCR
    this.eventEmitter.on('pipeline:ocr_progress', (data) => {
      if (data.jobId === this.state.currentJobId) {
        this.state.progress = Math.floor(data.progress * 0.5); // OCR - первая половина процесса
        
        // Уведомляем UI о прогрессе
        this._notifyUI('progress_update', {
          jobId: data.jobId,
          progress: this.state.progress,
          stage: 'ocr'
        });
      }
    });
    
    // Обработчик прогресса перевода
    this.eventEmitter.on('pipeline:translation_progress', (data) => {
      if (data.jobId === this.state.currentJobId) {
        this.state.progress = 50 + Math.floor(data.progress * 0.5); // Перевод - вторая половина процесса
        
        // Уведомляем UI о прогрессе
        this._notifyUI('progress_update', {
          jobId: data.jobId,
          progress: this.state.progress,
          stage: 'translation'
        });
      }
    });
    
    // Обработчик прогресса пакетной обработки
    this.eventEmitter.on('pipeline:batch_progress', (data) => {
      if (data.batchId === this.state.currentBatchId) {
        this.state.progress = Math.floor((data.processed / data.total) * 100);
        
        // Уведомляем UI о прогрессе
        this._notifyUI('progress_update', {
          batchId: data.batchId,
          progress: this.state.progress,
          processed: data.processed,
          total: data.total,
          errors: data.errors
        });
      }
    });
    
    // Обработчик ошибок
    this.eventEmitter.on('pipeline:error', (data) => {
      this.state.errors.push(data.error);
      
      // Уведомляем UI об ошибке
      this._notifyUI('error', {
        error: data.error,
        jobId: data.jobId,
        batchId: data.batchId
      });
    });
  }

  /**
   * Отправка уведомления в UI
   * @private
   * @param {string} event - Тип события
   * @param {Object} data - Данные события
   */
  _notifyUI(event, data) {
    if (!this.eventEmitter) {
      return;
    }
    
    // Отправляем событие в UI
    this.eventEmitter.emit(`ui:${event}`, data);
    
    this.logger?.debug(`Notified UI: ${event}`, data);
  }
}

module.exports = UIConnector;

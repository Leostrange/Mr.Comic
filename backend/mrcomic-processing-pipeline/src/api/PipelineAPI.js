/**
 * PipelineAPI - API для взаимодействия с конвейером обработки
 * 
 * Особенности:
 * - Унифицированный интерфейс для взаимодействия с конвейером
 * - Абстракция над внутренней реализацией
 * - Управление доступом и авторизацией
 * - Документированные методы для интеграции с UI
 */
class PipelineAPI {
  /**
   * @param {Object} options - Опции API
   * @param {PipelineManager} options.pipelineManager - Менеджер конвейера
   * @param {Logger} options.logger - Экземпляр логгера
   * @param {ErrorHandler} options.errorHandler - Обработчик ошибок
   * @param {EventEmitter} options.eventEmitter - Система событий
   * @param {Object} options.config - Конфигурация API
   */
  constructor(options = {}) {
    this.pipelineManager = options.pipelineManager;
    this.logger = options.logger;
    this.errorHandler = options.errorHandler;
    this.eventEmitter = options.eventEmitter;
    this.config = options.config || {};
    
    // Настраиваем обработчики событий для уведомлений UI
    this._setupEventListeners();
  }

  /**
   * Запуск процесса OCR для изображения
   * @param {Object} params - Параметры запроса
   * @param {string|Buffer} params.image - Путь к изображению или буфер с данными
   * @param {string} params.language - Язык для OCR (например, 'eng', 'rus')
   * @param {Object} params.options - Дополнительные опции OCR
   * @param {boolean} params.async - Асинхронное выполнение (по умолчанию true)
   * @returns {Promise<Object>} - Результат OCR или информация о задаче
   */
  async performOCR(params) {
    this._validateParams(params, ['image']);
    
    try {
      this.logger?.info('Starting OCR process', { language: params.language });
      
      const result = await this.pipelineManager.process('ocr', {
        image: params.image,
        language: params.language || 'eng',
        options: params.options || {}
      }, {
        async: params.async !== false,
        priority: params.priority || 0
      });
      
      return result;
    } catch (error) {
      this.logger?.error('Error performing OCR', error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'performOCR', 
          params 
        });
      }
      
      throw error;
    }
  }

  /**
   * Запуск процесса перевода текста
   * @param {Object} params - Параметры запроса
   * @param {string|Object} params.text - Текст для перевода или результат OCR
   * @param {string} params.sourceLanguage - Исходный язык
   * @param {string} params.targetLanguage - Целевой язык
   * @param {Object} params.options - Дополнительные опции перевода
   * @param {boolean} params.async - Асинхронное выполнение (по умолчанию true)
   * @returns {Promise<Object>} - Результат перевода или информация о задаче
   */
  async performTranslation(params) {
    this._validateParams(params, ['text', 'targetLanguage']);
    
    try {
      this.logger?.info('Starting translation process', { 
        sourceLanguage: params.sourceLanguage,
        targetLanguage: params.targetLanguage
      });
      
      const result = await this.pipelineManager.process('translation', {
        text: params.text,
        sourceLanguage: params.sourceLanguage || 'auto',
        targetLanguage: params.targetLanguage,
        options: params.options || {}
      }, {
        async: params.async !== false,
        priority: params.priority || 0
      });
      
      return result;
    } catch (error) {
      this.logger?.error('Error performing translation', error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'performTranslation', 
          params 
        });
      }
      
      throw error;
    }
  }

  /**
   * Запуск полного конвейера OCR + перевод
   * @param {Object} params - Параметры запроса
   * @param {string|Buffer} params.image - Путь к изображению или буфер с данными
   * @param {string} params.sourceLanguage - Исходный язык для OCR
   * @param {string} params.targetLanguage - Целевой язык для перевода
   * @param {Object} params.ocrOptions - Дополнительные опции OCR
   * @param {Object} params.translationOptions - Дополнительные опции перевода
   * @param {boolean} params.async - Асинхронное выполнение (по умолчанию true)
   * @returns {Promise<Object>} - Результат обработки или информация о задаче
   */
  async processImage(params) {
    this._validateParams(params, ['image', 'targetLanguage']);
    
    try {
      this.logger?.info('Starting full processing pipeline', { 
        sourceLanguage: params.sourceLanguage,
        targetLanguage: params.targetLanguage
      });
      
      const result = await this.pipelineManager.process('full_pipeline', {
        image: params.image,
        sourceLanguage: params.sourceLanguage || 'auto',
        targetLanguage: params.targetLanguage,
        ocrOptions: params.ocrOptions || {},
        translationOptions: params.translationOptions || {}
      }, {
        async: params.async !== false,
        priority: params.priority || 0
      });
      
      return result;
    } catch (error) {
      this.logger?.error('Error processing image', error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'processImage', 
          params 
        });
      }
      
      throw error;
    }
  }

  /**
   * Пакетная обработка нескольких изображений
   * @param {Object} params - Параметры запроса
   * @param {Array<string|Buffer>} params.images - Массив путей к изображениям или буферов
   * @param {string} params.sourceLanguage - Исходный язык для OCR
   * @param {string} params.targetLanguage - Целевой язык для перевода
   * @param {Object} params.options - Дополнительные опции обработки
   * @returns {Promise<Object>} - Информация о задаче пакетной обработки
   */
  async processBatch(params) {
    this._validateParams(params, ['images', 'targetLanguage']);
    
    if (!Array.isArray(params.images) || params.images.length === 0) {
      throw new Error('Images must be a non-empty array');
    }
    
    try {
      this.logger?.info('Starting batch processing', { 
        imageCount: params.images.length,
        sourceLanguage: params.sourceLanguage,
        targetLanguage: params.targetLanguage
      });
      
      const result = await this.pipelineManager.process('batch_pipeline', {
        images: params.images,
        sourceLanguage: params.sourceLanguage || 'auto',
        targetLanguage: params.targetLanguage,
        options: params.options || {}
      }, {
        async: true, // Пакетная обработка всегда асинхронная
        priority: params.priority || 0
      });
      
      return result;
    } catch (error) {
      this.logger?.error('Error in batch processing', error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'processBatch', 
          params 
        });
      }
      
      throw error;
    }
  }

  /**
   * Получение статуса задачи
   * @param {string} jobId - ID задачи
   * @returns {Promise<Object>} - Статус задачи
   */
  async getJobStatus(jobId) {
    try {
      return await this.pipelineManager.getStatus(jobId);
    } catch (error) {
      this.logger?.error(`Error getting job status for ${jobId}`, error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'getJobStatus', 
          jobId 
        });
      }
      
      throw error;
    }
  }

  /**
   * Отмена задачи
   * @param {string} jobId - ID задачи
   * @returns {Promise<Object>} - Обновленная задача
   */
  async cancelJob(jobId) {
    try {
      return await this.pipelineManager.cancel(jobId);
    } catch (error) {
      this.logger?.error(`Error cancelling job ${jobId}`, error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'cancelJob', 
          jobId 
        });
      }
      
      throw error;
    }
  }

  /**
   * Приостановка задачи
   * @param {string} jobId - ID задачи
   * @returns {Promise<Object>} - Обновленная задача
   */
  async pauseJob(jobId) {
    try {
      return await this.pipelineManager.pause(jobId);
    } catch (error) {
      this.logger?.error(`Error pausing job ${jobId}`, error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'pauseJob', 
          jobId 
        });
      }
      
      throw error;
    }
  }

  /**
   * Возобновление задачи
   * @param {string} jobId - ID задачи
   * @returns {Promise<Object>} - Обновленная задача
   */
  async resumeJob(jobId) {
    try {
      return await this.pipelineManager.resume(jobId);
    } catch (error) {
      this.logger?.error(`Error resuming job ${jobId}`, error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'resumeJob', 
          jobId 
        });
      }
      
      throw error;
    }
  }

  /**
   * Получение списка активных задач
   * @param {Object} filter - Фильтр задач
   * @returns {Promise<Array<Object>>} - Список задач
   */
  async getActiveJobs(filter = {}) {
    try {
      return await this.pipelineManager.getActiveJobs(filter);
    } catch (error) {
      this.logger?.error('Error getting active jobs', error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'getActiveJobs', 
          filter 
        });
      }
      
      throw error;
    }
  }

  /**
   * Получение статистики конвейера
   * @returns {Promise<Object>} - Статистика конвейера
   */
  async getStats() {
    try {
      return await this.pipelineManager.getStats();
    } catch (error) {
      this.logger?.error('Error getting pipeline stats', error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'getStats'
        });
      }
      
      throw error;
    }
  }

  /**
   * Настройка параметров OCR
   * @param {Object} config - Конфигурация OCR
   * @returns {Promise<Object>} - Обновленная конфигурация
   */
  async configureOCR(config) {
    try {
      this.logger?.info('Updating OCR configuration', config);
      
      // Сохраняем конфигурацию
      if (this.config.ocr) {
        this.config.ocr = { ...this.config.ocr, ...config };
      } else {
        this.config.ocr = config;
      }
      
      // Уведомляем об изменении конфигурации
      this.eventEmitter?.emit('config:ocr_updated', { config: this.config.ocr });
      
      return this.config.ocr;
    } catch (error) {
      this.logger?.error('Error configuring OCR', error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'configureOCR', 
          config 
        });
      }
      
      throw error;
    }
  }

  /**
   * Настройка параметров перевода
   * @param {Object} config - Конфигурация перевода
   * @returns {Promise<Object>} - Обновленная конфигурация
   */
  async configureTranslation(config) {
    try {
      this.logger?.info('Updating translation configuration', config);
      
      // Сохраняем конфигурацию
      if (this.config.translation) {
        this.config.translation = { ...this.config.translation, ...config };
      } else {
        this.config.translation = config;
      }
      
      // Уведомляем об изменении конфигурации
      this.eventEmitter?.emit('config:translation_updated', { config: this.config.translation });
      
      return this.config.translation;
    } catch (error) {
      this.logger?.error('Error configuring translation', error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'configureTranslation', 
          config 
        });
      }
      
      throw error;
    }
  }

  /**
   * Получение текущей конфигурации
   * @returns {Promise<Object>} - Текущая конфигурация
   */
  async getConfiguration() {
    return this.config;
  }

  /**
   * Проверка валидности параметров
   * @private
   * @param {Object} params - Параметры для проверки
   * @param {Array<string>} required - Список обязательных параметров
   * @throws {Error} - Если параметры невалидны
   */
  _validateParams(params, required) {
    if (!params || typeof params !== 'object') {
      throw new Error('Params must be an object');
    }
    
    for (const param of required) {
      if (params[param] === undefined) {
        throw new Error(`Missing required parameter: ${param}`);
      }
    }
  }

  /**
   * Настройка слушателей событий
   * @private
   */
  _setupEventListeners() {
    if (this.eventEmitter) {
      // Слушаем события изменения статуса задачи для уведомления UI
      this.eventEmitter.on('job:status_changed', (data) => {
        // Отправляем событие для UI
        this.eventEmitter.emit('ui:job_status_changed', data);
      });
      
      // Слушаем события обновления прогресса задачи для уведомления UI
      this.eventEmitter.on('job:progress_updated', (data) => {
        // Отправляем событие для UI
        this.eventEmitter.emit('ui:job_progress_updated', data);
      });
      
      // Слушаем события ошибок для уведомления UI
      this.eventEmitter.on('job:failed', (data) => {
        // Отправляем событие для UI
        this.eventEmitter.emit('ui:job_failed', data);
      });
    }
  }
}

module.exports = PipelineAPI;

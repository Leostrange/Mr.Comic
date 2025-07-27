/**
 * OCRProcessorFactory - Фабрика для создания OCR-процессоров
 * 
 * Особенности:
 * - Динамическое создание OCR-процессоров различных типов
 * - Автоматический выбор оптимального процессора
 * - Регистрация и управление доступными процессорами
 * - Поддержка пользовательских процессоров
 */
class OCRProcessorFactory {
  /**
   * @param {Object} options - Опции фабрики
   * @param {Logger} options.logger - Экземпляр логгера
   * @param {ErrorHandler} options.errorHandler - Обработчик ошибок
   * @param {EventEmitter} options.eventEmitter - Система событий
   * @param {CacheManager} options.cacheManager - Менеджер кэша
   * @param {Object} options.config - Конфигурация фабрики
   */
  constructor(options = {}) {
    this.logger = options.logger;
    this.errorHandler = options.errorHandler;
    this.eventEmitter = options.eventEmitter;
    this.cacheManager = options.cacheManager;
    this.config = options.config || {};
    
    // Регистрируем доступные процессоры
    this.processors = new Map();
    this._registerDefaultProcessors();
    
    this.logger?.info('OCRProcessorFactory initialized');
  }

  /**
   * Создание OCR-процессора
   * @param {string} type - Тип процессора
   * @param {Object} options - Опции процессора
   * @returns {OCRProcessor} - Экземпляр OCR-процессора
   */
  create(type, options = {}) {
    // Если тип не указан, используем тип по умолчанию
    if (!type) {
      type = this.config.defaultProcessor || 'tesseract';
    }
    
    // Проверяем наличие процессора
    if (!this.processors.has(type)) {
      this.logger?.error(`OCR processor type "${type}" is not registered`);
      throw new Error(`OCR processor type "${type}" is not registered`);
    }
    
    try {
      // Получаем класс процессора
      const ProcessorClass = this.processors.get(type);
      
      // Создаем экземпляр процессора
      const processor = new ProcessorClass({
        logger: this.logger,
        errorHandler: this.errorHandler,
        eventEmitter: this.eventEmitter,
        cacheManager: this.cacheManager,
        config: { ...this.config[type], ...options }
      });
      
      this.logger?.debug(`Created OCR processor of type "${type}"`);
      
      return processor;
    } catch (error) {
      this.logger?.error(`Error creating OCR processor of type "${type}"`, error);
      
      if (this.errorHandler) {
        throw this.errorHandler.handleError(error, { 
          operation: 'create_ocr_processor', 
          type,
          options
        });
      }
      
      throw error;
    }
  }

  /**
   * Автоматический выбор оптимального процессора
   * @param {Object} context - Контекст выбора
   * @param {string} context.language - Язык для распознавания
   * @param {string} context.imageType - Тип изображения (comic, document, photo)
   * @param {boolean} context.highAccuracy - Требуется высокая точность
   * @param {boolean} context.offline - Требуется офлайн-режим
   * @returns {OCRProcessor} - Экземпляр OCR-процессора
   */
  createOptimal(context = {}) {
    try {
      // Определяем тип процессора на основе контекста
      let type = 'tesseract'; // По умолчанию используем Tesseract
      
      // Если требуется высокая точность и доступен онлайн-режим, используем Google Cloud Vision
      if (context.highAccuracy && !context.offline && this.processors.has('google')) {
        type = 'google';
      }
      
      // Если указан язык, проверяем его поддержку
      if (context.language) {
        // Создаем временный процессор для проверки поддержки языка
        const tempProcessor = this.create(type);
        
        // Если язык не поддерживается, пробуем другие процессоры
        if (!tempProcessor.supportsLanguage(context.language)) {
          for (const [processorType] of this.processors.entries()) {
            if (processorType !== type) {
              const altProcessor = this.create(processorType);
              if (altProcessor.supportsLanguage(context.language)) {
                type = processorType;
                break;
              }
            }
          }
        }
      }
      
      // Создаем процессор выбранного типа
      return this.create(type, { language: context.language });
    } catch (error) {
      this.logger?.error('Error creating optimal OCR processor', error);
      
      if (this.errorHandler) {
        throw this.errorHandler.handleError(error, { 
          operation: 'create_optimal_ocr_processor', 
          context
        });
      }
      
      throw error;
    }
  }

  /**
   * Регистрация процессора
   * @param {string} type - Тип процессора
   * @param {Class} ProcessorClass - Класс процессора
   * @returns {OCRProcessorFactory} - this для цепочки вызовов
   */
  register(type, ProcessorClass) {
    if (!type || typeof type !== 'string') {
      throw new Error('Processor type must be a non-empty string');
    }
    
    if (!ProcessorClass || typeof ProcessorClass !== 'function') {
      throw new Error('ProcessorClass must be a constructor function');
    }
    
    this.processors.set(type, ProcessorClass);
    this.logger?.info(`Registered OCR processor type "${type}"`);
    
    return this;
  }

  /**
   * Отмена регистрации процессора
   * @param {string} type - Тип процессора
   * @returns {boolean} - true, если процессор был удален
   */
  unregister(type) {
    const result = this.processors.delete(type);
    
    if (result) {
      this.logger?.info(`Unregistered OCR processor type "${type}"`);
    }
    
    return result;
  }

  /**
   * Получение списка зарегистрированных типов процессоров
   * @returns {Array<string>} - Массив типов процессоров
   */
  getRegisteredTypes() {
    return Array.from(this.processors.keys());
  }

  /**
   * Проверка регистрации процессора
   * @param {string} type - Тип процессора
   * @returns {boolean} - true, если процессор зарегистрирован
   */
  isRegistered(type) {
    return this.processors.has(type);
  }

  /**
   * Регистрация процессоров по умолчанию
   * @private
   */
  _registerDefaultProcessors() {
    try {
      // Регистрируем Tesseract OCR
      const TesseractOCRProcessor = require('./TesseractOCRProcessor');
      this.register('tesseract', TesseractOCRProcessor);
    } catch (error) {
      this.logger?.warn('Failed to register TesseractOCRProcessor', error);
    }
    
    try {
      // Регистрируем Google Cloud Vision OCR
      const GoogleCloudVisionOCRProcessor = require('./GoogleCloudVisionOCRProcessor');
      this.register('google', GoogleCloudVisionOCRProcessor);
    } catch (error) {
      this.logger?.warn('Failed to register GoogleCloudVisionOCRProcessor', error);
    }
  }
}

module.exports = OCRProcessorFactory;

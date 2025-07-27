/**
 * TranslationProcessorFactory - Фабрика для создания процессоров перевода
 * 
 * Особенности:
 * - Динамическое создание процессоров перевода различных типов
 * - Автоматический выбор оптимального процессора
 * - Регистрация и управление доступными процессорами
 * - Поддержка пользовательских процессоров
 */
class TranslationProcessorFactory {
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
    
    this.logger?.info('TranslationProcessorFactory initialized');
  }

  /**
   * Создание процессора перевода
   * @param {string} type - Тип процессора
   * @param {Object} options - Опции процессора
   * @returns {TranslationProcessor} - Экземпляр процессора перевода
   */
  create(type, options = {}) {
    // Если тип не указан, используем тип по умолчанию
    if (!type) {
      type = this.config.defaultProcessor || 'google';
    }
    
    // Проверяем наличие процессора
    if (!this.processors.has(type)) {
      this.logger?.error(`Translation processor type "${type}" is not registered`);
      throw new Error(`Translation processor type "${type}" is not registered`);
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
      
      this.logger?.debug(`Created translation processor of type "${type}"`);
      
      return processor;
    } catch (error) {
      this.logger?.error(`Error creating translation processor of type "${type}"`, error);
      
      if (this.errorHandler) {
        throw this.errorHandler.handleError(error, { 
          operation: 'create_translation_processor', 
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
   * @param {string} context.sourceLanguage - Исходный язык
   * @param {string} context.targetLanguage - Целевой язык
   * @param {boolean} context.highQuality - Требуется высокое качество
   * @param {boolean} context.offline - Требуется офлайн-режим
   * @returns {TranslationProcessor} - Экземпляр процессора перевода
   */
  createOptimal(context = {}) {
    try {
      // Определяем тип процессора на основе контекста
      let type = 'google'; // По умолчанию используем Google Translate
      
      // Если требуется высокое качество и доступен DeepL, используем его
      if (context.highQuality && this.processors.has('deepl')) {
        type = 'deepl';
      }
      
      // Если требуется офлайн-режим, используем локальный процессор
      if (context.offline && this.processors.has('local')) {
        type = 'local';
      }
      
      // Если указаны языки, проверяем их поддержку
      if (context.sourceLanguage && context.targetLanguage) {
        // Создаем временный процессор для проверки поддержки языков
        const tempProcessor = this.create(type);
        
        // Если языки не поддерживаются, пробуем другие процессоры
        if (!tempProcessor.supportsLanguage(context.sourceLanguage, 'source') || 
            !tempProcessor.supportsLanguage(context.targetLanguage, 'target')) {
          for (const [processorType] of this.processors.entries()) {
            if (processorType !== type) {
              const altProcessor = this.create(processorType);
              if (altProcessor.supportsLanguage(context.sourceLanguage, 'source') && 
                  altProcessor.supportsLanguage(context.targetLanguage, 'target')) {
                type = processorType;
                break;
              }
            }
          }
        }
      }
      
      // Создаем процессор выбранного типа
      return this.create(type, { 
        sourceLanguage: context.sourceLanguage,
        targetLanguage: context.targetLanguage
      });
    } catch (error) {
      this.logger?.error('Error creating optimal translation processor', error);
      
      if (this.errorHandler) {
        throw this.errorHandler.handleError(error, { 
          operation: 'create_optimal_translation_processor', 
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
   * @returns {TranslationProcessorFactory} - this для цепочки вызовов
   */
  register(type, ProcessorClass) {
    if (!type || typeof type !== 'string') {
      throw new Error('Processor type must be a non-empty string');
    }
    
    if (!ProcessorClass || typeof ProcessorClass !== 'function') {
      throw new Error('ProcessorClass must be a constructor function');
    }
    
    this.processors.set(type, ProcessorClass);
    this.logger?.info(`Registered translation processor type "${type}"`);
    
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
      this.logger?.info(`Unregistered translation processor type "${type}"`);
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
      // Регистрируем Google Translate
      const GoogleTranslateProcessor = require('./GoogleTranslateProcessor');
      this.register('google', GoogleTranslateProcessor);
    } catch (error) {
      this.logger?.warn('Failed to register GoogleTranslateProcessor', error);
    }
    
    try {
      // Регистрируем DeepL
      const DeepLTranslateProcessor = require('./DeepLTranslateProcessor');
      this.register('deepl', DeepLTranslateProcessor);
    } catch (error) {
      this.logger?.warn('Failed to register DeepLTranslateProcessor', error);
    }
  }
}

module.exports = TranslationProcessorFactory;

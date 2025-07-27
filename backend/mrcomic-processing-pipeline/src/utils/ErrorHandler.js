/**
 * ErrorHandler - Система обработки ошибок для конвейера обработки
 * 
 * Особенности:
 * - Классификация ошибок по типам
 * - Стратегии обработки различных типов ошибок
 * - Логирование и отчетность
 * - Механизмы восстановления
 */
class ErrorHandler {
  /**
   * Типы ошибок
   * @readonly
   * @enum {string}
   */
  static ERROR_TYPES = {
    VALIDATION: 'validation_error',
    NETWORK: 'network_error',
    RESOURCE: 'resource_error',
    PROCESSING: 'processing_error',
    TIMEOUT: 'timeout_error',
    UNKNOWN: 'unknown_error'
  };

  /**
   * @param {Object} options - Опции обработчика ошибок
   * @param {Logger} options.logger - Экземпляр логгера
   * @param {Object} options.strategies - Стратегии обработки ошибок по типам
   * @param {Function} options.onError - Глобальный обработчик ошибок
   */
  constructor(options = {}) {
    this.logger = options.logger;
    this.strategies = options.strategies || {};
    this.onError = options.onError;
  }

  /**
   * Обработка ошибки
   * @param {Error} error - Объект ошибки
   * @param {Object} context - Контекст ошибки
   * @returns {Object} - Результат обработки ошибки
   */
  handleError(error, context = {}) {
    // Определение типа ошибки
    const errorType = this._classifyError(error);
    
    // Логирование ошибки
    if (this.logger) {
      this.logger.error(`Error occurred: ${error.message}`, {
        errorType,
        error,
        context
      });
    }
    
    // Применение стратегии обработки для данного типа ошибки
    const strategy = this.strategies[errorType] || this.strategies[ErrorHandler.ERROR_TYPES.UNKNOWN];
    
    if (strategy) {
      try {
        return strategy(error, context);
      } catch (strategyError) {
        if (this.logger) {
          this.logger.error('Error in error handling strategy', strategyError);
        }
      }
    }
    
    // Вызов глобального обработчика ошибок, если он определен
    if (this.onError) {
      try {
        return this.onError(error, errorType, context);
      } catch (handlerError) {
        if (this.logger) {
          this.logger.error('Error in global error handler', handlerError);
        }
      }
    }
    
    // Если нет стратегии или глобального обработчика, или они завершились с ошибкой,
    // возвращаем стандартный результат
    return {
      handled: false,
      errorType,
      error,
      message: error.message
    };
  }

  /**
   * Оборачивает функцию в обработчик ошибок
   * @param {Function} fn - Функция для обертывания
   * @param {Object} context - Контекст ошибки
   * @returns {Function} - Обернутая функция
   */
  wrapAsync(fn, context = {}) {
    return async (...args) => {
      try {
        return await fn(...args);
      } catch (error) {
        return this.handleError(error, context);
      }
    };
  }

  /**
   * Оборачивает синхронную функцию в обработчик ошибок
   * @param {Function} fn - Функция для обертывания
   * @param {Object} context - Контекст ошибки
   * @returns {Function} - Обернутая функция
   */
  wrap(fn, context = {}) {
    return (...args) => {
      try {
        return fn(...args);
      } catch (error) {
        return this.handleError(error, context);
      }
    };
  }

  /**
   * Создает новую ошибку с указанным типом
   * @param {string} message - Сообщение об ошибке
   * @param {string} type - Тип ошибки
   * @param {Object} details - Дополнительные детали
   * @returns {Error} - Объект ошибки
   */
  createError(message, type = ErrorHandler.ERROR_TYPES.UNKNOWN, details = {}) {
    const error = new Error(message);
    error.type = type;
    error.details = details;
    return error;
  }

  /**
   * Классифицирует ошибку по типу
   * @private
   * @param {Error} error - Объект ошибки
   * @returns {string} - Тип ошибки
   */
  _classifyError(error) {
    // Если тип ошибки уже определен
    if (error.type && Object.values(ErrorHandler.ERROR_TYPES).includes(error.type)) {
      return error.type;
    }
    
    // Классификация по имени ошибки
    if (error.name === 'ValidationError') {
      return ErrorHandler.ERROR_TYPES.VALIDATION;
    }
    
    if (error.name === 'NetworkError' || error.name === 'FetchError' || 
        error.message.includes('network') || error.message.includes('connection')) {
      return ErrorHandler.ERROR_TYPES.NETWORK;
    }
    
    if (error.name === 'ResourceError' || error.message.includes('resource') || 
        error.message.includes('memory') || error.message.includes('capacity')) {
      return ErrorHandler.ERROR_TYPES.RESOURCE;
    }
    
    if (error.name === 'TimeoutError' || error.message.includes('timeout') || 
        error.message.includes('timed out')) {
      return ErrorHandler.ERROR_TYPES.TIMEOUT;
    }
    
    if (error.name === 'ProcessingError' || error.message.includes('processing') || 
        error.message.includes('failed to process')) {
      return ErrorHandler.ERROR_TYPES.PROCESSING;
    }
    
    // По умолчанию - неизвестный тип ошибки
    return ErrorHandler.ERROR_TYPES.UNKNOWN;
  }

  /**
   * Стандартные стратегии обработки ошибок
   * @readonly
   * @type {Object}
   */
  static get DEFAULT_STRATEGIES() {
    return {
      [ErrorHandler.ERROR_TYPES.VALIDATION]: (error, context) => ({
        handled: true,
        errorType: ErrorHandler.ERROR_TYPES.VALIDATION,
        message: 'Validation error: ' + error.message,
        retry: false,
        userMessage: 'The provided data is invalid. Please check your input and try again.'
      }),
      
      [ErrorHandler.ERROR_TYPES.NETWORK]: (error, context) => ({
        handled: true,
        errorType: ErrorHandler.ERROR_TYPES.NETWORK,
        message: 'Network error: ' + error.message,
        retry: true,
        retryDelay: 1000,
        userMessage: 'A network error occurred. Please check your connection and try again.'
      }),
      
      [ErrorHandler.ERROR_TYPES.RESOURCE]: (error, context) => ({
        handled: true,
        errorType: ErrorHandler.ERROR_TYPES.RESOURCE,
        message: 'Resource error: ' + error.message,
        retry: false,
        userMessage: 'The system is running low on resources. Please close other applications and try again.'
      }),
      
      [ErrorHandler.ERROR_TYPES.TIMEOUT]: (error, context) => ({
        handled: true,
        errorType: ErrorHandler.ERROR_TYPES.TIMEOUT,
        message: 'Timeout error: ' + error.message,
        retry: true,
        retryDelay: 2000,
        userMessage: 'The operation timed out. Please try again later.'
      }),
      
      [ErrorHandler.ERROR_TYPES.PROCESSING]: (error, context) => ({
        handled: true,
        errorType: ErrorHandler.ERROR_TYPES.PROCESSING,
        message: 'Processing error: ' + error.message,
        retry: context.retryCount < 3,
        retryDelay: Math.pow(2, context.retryCount || 0) * 1000,
        userMessage: 'An error occurred while processing your request. Please try again.'
      }),
      
      [ErrorHandler.ERROR_TYPES.UNKNOWN]: (error, context) => ({
        handled: false,
        errorType: ErrorHandler.ERROR_TYPES.UNKNOWN,
        message: 'Unknown error: ' + error.message,
        retry: false,
        userMessage: 'An unexpected error occurred. Please try again later.'
      })
    };
  }
}

module.exports = ErrorHandler;

/**
 * Logger - Система логирования для конвейера обработки
 * 
 * Особенности:
 * - Поддержка различных уровней логирования (debug, info, warn, error)
 * - Форматирование логов с временными метками
 * - Настраиваемые обработчики для вывода логов (консоль, файл и т.д.)
 * - Контекстное логирование для отслеживания связанных событий
 */
class Logger {
  /**
   * Уровни логирования
   * @readonly
   * @enum {number}
   */
  static LEVELS = {
    DEBUG: 0,
    INFO: 1,
    WARN: 2,
    ERROR: 3,
    NONE: 4
  };

  /**
   * @param {Object} options - Опции логгера
   * @param {number} options.level - Минимальный уровень логирования (по умолчанию INFO)
   * @param {Array<Function>} options.handlers - Обработчики для вывода логов
   * @param {Object} options.context - Контекст логирования
   */
  constructor(options = {}) {
    this.level = options.level !== undefined ? options.level : Logger.LEVELS.INFO;
    this.handlers = options.handlers || [Logger.consoleHandler];
    this.context = options.context || {};
  }

  /**
   * Создает новый логгер с дополнительным контекстом
   * @param {Object} additionalContext - Дополнительный контекст
   * @returns {Logger} - Новый экземпляр логгера с объединенным контекстом
   */
  withContext(additionalContext) {
    return new Logger({
      level: this.level,
      handlers: this.handlers,
      context: { ...this.context, ...additionalContext }
    });
  }

  /**
   * Логирование на уровне DEBUG
   * @param {string} message - Сообщение для логирования
   * @param {Object} [data] - Дополнительные данные
   */
  debug(message, data) {
    this._log(Logger.LEVELS.DEBUG, message, data);
  }

  /**
   * Логирование на уровне INFO
   * @param {string} message - Сообщение для логирования
   * @param {Object} [data] - Дополнительные данные
   */
  info(message, data) {
    this._log(Logger.LEVELS.INFO, message, data);
  }

  /**
   * Логирование на уровне WARN
   * @param {string} message - Сообщение для логирования
   * @param {Object} [data] - Дополнительные данные
   */
  warn(message, data) {
    this._log(Logger.LEVELS.WARN, message, data);
  }

  /**
   * Логирование на уровне ERROR
   * @param {string} message - Сообщение для логирования
   * @param {Object|Error} [data] - Дополнительные данные или объект ошибки
   */
  error(message, data) {
    // Если data - это объект ошибки, преобразуем его в объект с полями
    if (data instanceof Error) {
      data = {
        name: data.name,
        message: data.message,
        stack: data.stack,
        cause: data.cause
      };
    }
    this._log(Logger.LEVELS.ERROR, message, data);
  }

  /**
   * Внутренний метод для логирования
   * @private
   * @param {number} level - Уровень логирования
   * @param {string} message - Сообщение
   * @param {Object} [data] - Дополнительные данные
   */
  _log(level, message, data) {
    if (level < this.level) {
      return;
    }

    const logEntry = {
      timestamp: new Date(),
      level: this._getLevelName(level),
      message,
      data,
      context: this.context
    };

    for (const handler of this.handlers) {
      try {
        handler(logEntry);
      } catch (error) {
        console.error('Error in log handler:', error);
      }
    }
  }

  /**
   * Получение имени уровня логирования по его числовому значению
   * @private
   * @param {number} level - Числовое значение уровня
   * @returns {string} - Имя уровня
   */
  _getLevelName(level) {
    for (const [name, value] of Object.entries(Logger.LEVELS)) {
      if (value === level) {
        return name;
      }
    }
    return 'UNKNOWN';
  }

  /**
   * Стандартный обработчик для вывода в консоль
   * @param {Object} logEntry - Запись лога
   */
  static consoleHandler(logEntry) {
    const { timestamp, level, message, data, context } = logEntry;
    
    // Форматирование временной метки
    const timeStr = timestamp.toISOString();
    
    // Выбор метода консоли в зависимости от уровня
    let consoleMethod;
    switch (level) {
      case 'DEBUG':
        consoleMethod = console.debug;
        break;
      case 'INFO':
        consoleMethod = console.info;
        break;
      case 'WARN':
        consoleMethod = console.warn;
        break;
      case 'ERROR':
        consoleMethod = console.error;
        break;
      default:
        consoleMethod = console.log;
    }
    
    // Форматирование контекста
    const contextStr = Object.keys(context).length > 0 
      ? `[${Object.entries(context).map(([k, v]) => `${k}=${v}`).join(', ')}]` 
      : '';
    
    // Вывод в консоль
    if (data !== undefined) {
      consoleMethod(`${timeStr} ${level} ${contextStr} ${message}`, data);
    } else {
      consoleMethod(`${timeStr} ${level} ${contextStr} ${message}`);
    }
  }

  /**
   * Создание обработчика для записи в файл
   * @param {string} filePath - Путь к файлу
   * @returns {Function} - Функция-обработчик
   */
  static fileHandler(filePath) {
    const fs = require('fs');
    
    return function(logEntry) {
      const { timestamp, level, message, data, context } = logEntry;
      
      // Форматирование временной метки
      const timeStr = timestamp.toISOString();
      
      // Форматирование контекста
      const contextStr = Object.keys(context).length > 0 
        ? `[${Object.entries(context).map(([k, v]) => `${k}=${v}`).join(', ')}]` 
        : '';
      
      // Форматирование данных
      const dataStr = data !== undefined ? ` ${JSON.stringify(data)}` : '';
      
      // Формирование строки лога
      const logLine = `${timeStr} ${level} ${contextStr} ${message}${dataStr}\n`;
      
      // Запись в файл
      fs.appendFileSync(filePath, logLine);
    };
  }
}

module.exports = Logger;

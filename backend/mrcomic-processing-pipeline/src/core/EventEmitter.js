/**
 * EventEmitter - Система событий для коммуникации между компонентами конвейера обработки
 * 
 * Особенности:
 * - Поддержка асинхронных обработчиков
 * - Поддержка приоритетов обработчиков
 * - Возможность однократной подписки (once)
 * - Поддержка шаблонов событий (wildcards)
 */
class EventEmitter {
  constructor() {
    this._events = new Map();
    this._onceEvents = new Set();
  }

  /**
   * Подписка на событие
   * @param {string} eventName - Имя события
   * @param {Function} listener - Функция-обработчик
   * @param {Object} options - Дополнительные опции
   * @param {number} options.priority - Приоритет обработчика (чем выше, тем раньше вызывается)
   * @returns {EventEmitter} - this для цепочки вызовов
   */
  on(eventName, listener, options = {}) {
    if (typeof listener !== 'function') {
      throw new TypeError('Listener must be a function');
    }

    const priority = options.priority || 0;
    
    if (!this._events.has(eventName)) {
      this._events.set(eventName, []);
    }
    
    const listeners = this._events.get(eventName);
    
    // Добавляем обработчик с приоритетом
    listeners.push({ listener, priority });
    
    // Сортируем по приоритету (по убыванию)
    listeners.sort((a, b) => b.priority - a.priority);
    
    return this;
  }

  /**
   * Подписка на событие с однократным вызовом
   * @param {string} eventName - Имя события
   * @param {Function} listener - Функция-обработчик
   * @param {Object} options - Дополнительные опции
   * @returns {EventEmitter} - this для цепочки вызовов
   */
  once(eventName, listener, options = {}) {
    const onceWrapper = (...args) => {
      this.off(eventName, onceWrapper);
      return listener.apply(this, args);
    };
    
    this._onceEvents.add(onceWrapper);
    return this.on(eventName, onceWrapper, options);
  }

  /**
   * Отписка от события
   * @param {string} eventName - Имя события
   * @param {Function} listener - Функция-обработчик
   * @returns {EventEmitter} - this для цепочки вызовов
   */
  off(eventName, listener) {
    if (!this._events.has(eventName)) {
      return this;
    }
    
    if (!listener) {
      this._events.delete(eventName);
      return this;
    }
    
    const listeners = this._events.get(eventName);
    const filteredListeners = listeners.filter(item => {
      return item.listener !== listener && 
             !(this._onceEvents.has(item.listener) && item.listener._originalListener === listener);
    });
    
    if (filteredListeners.length === 0) {
      this._events.delete(eventName);
    } else {
      this._events.set(eventName, filteredListeners);
    }
    
    return this;
  }

  /**
   * Генерация события
   * @param {string} eventName - Имя события
   * @param {...any} args - Аргументы для передачи обработчикам
   * @returns {boolean} - true если были обработчики, false если нет
   */
  emit(eventName, ...args) {
    const hasListeners = this._events.has(eventName);
    
    if (!hasListeners) {
      // Проверяем шаблоны событий (wildcards)
      for (const [pattern, listeners] of this._events.entries()) {
        if (this._matchWildcard(eventName, pattern)) {
          this._invokeListeners(listeners, args);
        }
      }
      return false;
    }
    
    const listeners = this._events.get(eventName);
    return this._invokeListeners(listeners, args);
  }

  /**
   * Асинхронная генерация события
   * @param {string} eventName - Имя события
   * @param {...any} args - Аргументы для передачи обработчикам
   * @returns {Promise<boolean>} - Promise, который резолвится в true если были обработчики
   */
  async emitAsync(eventName, ...args) {
    const hasListeners = this._events.has(eventName);
    
    if (!hasListeners) {
      // Проверяем шаблоны событий (wildcards)
      for (const [pattern, listeners] of this._events.entries()) {
        if (this._matchWildcard(eventName, pattern)) {
          await this._invokeListenersAsync(listeners, args);
        }
      }
      return false;
    }
    
    const listeners = this._events.get(eventName);
    return this._invokeListenersAsync(listeners, args);
  }

  /**
   * Получение списка имен событий
   * @returns {Array<string>} - Массив имен событий
   */
  eventNames() {
    return Array.from(this._events.keys());
  }

  /**
   * Получение количества слушателей для события
   * @param {string} eventName - Имя события
   * @returns {number} - Количество слушателей
   */
  listenerCount(eventName) {
    if (!this._events.has(eventName)) {
      return 0;
    }
    return this._events.get(eventName).length;
  }

  /**
   * Получение списка слушателей для события
   * @param {string} eventName - Имя события
   * @returns {Array<Function>} - Массив функций-обработчиков
   */
  listeners(eventName) {
    if (!this._events.has(eventName)) {
      return [];
    }
    return this._events.get(eventName).map(item => item.listener);
  }

  /**
   * Удаление всех обработчиков
   * @param {string} [eventName] - Имя события (если не указано, удаляются все обработчики)
   * @returns {EventEmitter} - this для цепочки вызовов
   */
  removeAllListeners(eventName) {
    if (eventName) {
      this._events.delete(eventName);
    } else {
      this._events.clear();
    }
    return this;
  }

  /**
   * Вызов обработчиков синхронно
   * @private
   * @param {Array} listeners - Массив обработчиков
   * @param {Array} args - Аргументы для передачи обработчикам
   * @returns {boolean} - true если были обработчики
   */
  _invokeListeners(listeners, args) {
    if (!listeners || listeners.length === 0) {
      return false;
    }
    
    for (const { listener } of listeners) {
      try {
        listener.apply(this, args);
      } catch (error) {
        console.error('Error in event listener:', error);
      }
    }
    
    return true;
  }

  /**
   * Вызов обработчиков асинхронно
   * @private
   * @param {Array} listeners - Массив обработчиков
   * @param {Array} args - Аргументы для передачи обработчикам
   * @returns {Promise<boolean>} - Promise, который резолвится в true если были обработчики
   */
  async _invokeListenersAsync(listeners, args) {
    if (!listeners || listeners.length === 0) {
      return false;
    }
    
    const promises = [];
    
    for (const { listener } of listeners) {
      try {
        const result = listener.apply(this, args);
        if (result instanceof Promise) {
          promises.push(result);
        }
      } catch (error) {
        console.error('Error in async event listener:', error);
      }
    }
    
    if (promises.length > 0) {
      await Promise.all(promises);
    }
    
    return true;
  }

  /**
   * Проверка соответствия события шаблону
   * @private
   * @param {string} eventName - Имя события
   * @param {string} pattern - Шаблон события
   * @returns {boolean} - true если событие соответствует шаблону
   */
  _matchWildcard(eventName, pattern) {
    if (pattern === '*') {
      return true;
    }
    
    if (pattern.endsWith('*')) {
      const prefix = pattern.slice(0, -1);
      return eventName.startsWith(prefix);
    }
    
    if (pattern.startsWith('*')) {
      const suffix = pattern.slice(1);
      return eventName.endsWith(suffix);
    }
    
    return false;
  }
}

module.exports = EventEmitter;

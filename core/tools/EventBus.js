/**
 * EventBus - Шина событий для коммуникации между компонентами
 * 
 * Отвечает за:
 * - Публикацию и подписку на события
 * - Асинхронную обработку событий
 * - Фильтрацию и маршрутизацию событий
 */
class EventBus {
  /**
   * @constructor
   */
  constructor() {
    this.listeners = new Map(); // Карта слушателей событий
    this.onceListeners = new Map(); // Карта одноразовых слушателей
  }

  /**
   * Подписка на событие
   * @param {string} eventName - Имя события
   * @param {Function} listener - Функция-обработчик события
   * @returns {EventBus} - this для цепочки вызовов
   */
  on(eventName, listener) {
    if (!this.listeners.has(eventName)) {
      this.listeners.set(eventName, []);
    }
    
    this.listeners.get(eventName).push(listener);
    return this;
  }

  /**
   * Подписка на событие с однократным вызовом
   * @param {string} eventName - Имя события
   * @param {Function} listener - Функция-обработчик события
   * @returns {EventBus} - this для цепочки вызовов
   */
  once(eventName, listener) {
    if (!this.onceListeners.has(eventName)) {
      this.onceListeners.set(eventName, []);
    }
    
    this.onceListeners.get(eventName).push(listener);
    return this;
  }

  /**
   * Отписка от события
   * @param {string} eventName - Имя события
   * @param {Function} [listener] - Функция-обработчик события (если не указана, удаляются все обработчики)
   * @returns {EventBus} - this для цепочки вызовов
   */
  off(eventName, listener) {
    // Если указан конкретный слушатель, удаляем только его
    if (listener) {
      if (this.listeners.has(eventName)) {
        const index = this.listeners.get(eventName).indexOf(listener);
        if (index !== -1) {
          this.listeners.get(eventName).splice(index, 1);
        }
      }
      
      if (this.onceListeners.has(eventName)) {
        const index = this.onceListeners.get(eventName).indexOf(listener);
        if (index !== -1) {
          this.onceListeners.get(eventName).splice(index, 1);
        }
      }
    } 
    // Если слушатель не указан, удаляем всех слушателей для этого события
    else {
      this.listeners.delete(eventName);
      this.onceListeners.delete(eventName);
    }
    
    return this;
  }

  /**
   * Генерация события
   * @param {string} eventName - Имя события
   * @param {Object} [data] - Данные события
   * @returns {boolean} - true, если были слушатели события
   */
  emit(eventName, data = {}) {
    let handled = false;
    
    // Вызываем обычных слушателей
    if (this.listeners.has(eventName)) {
      const listeners = this.listeners.get(eventName);
      for (const listener of listeners) {
        try {
          listener(data);
          handled = true;
        } catch (error) {
          console.error(`Error in event listener for ${eventName}:`, error);
        }
      }
    }
    
    // Вызываем одноразовых слушателей
    if (this.onceListeners.has(eventName)) {
      const listeners = this.onceListeners.get(eventName);
      // Очищаем список одноразовых слушателей перед вызовом,
      // чтобы избежать проблем при добавлении новых слушателей внутри обработчиков
      this.onceListeners.delete(eventName);
      
      for (const listener of listeners) {
        try {
          listener(data);
          handled = true;
        } catch (error) {
          console.error(`Error in once event listener for ${eventName}:`, error);
        }
      }
    }
    
    return handled;
  }

  /**
   * Асинхронная генерация события
   * @param {string} eventName - Имя события
   * @param {Object} [data] - Данные события
   * @returns {Promise<boolean>} - Promise, который разрешается в true, если были слушатели события
   */
  async emitAsync(eventName, data = {}) {
    let handled = false;
    
    // Вызываем обычных слушателей
    if (this.listeners.has(eventName)) {
      const listeners = this.listeners.get(eventName);
      for (const listener of listeners) {
        try {
          await listener(data);
          handled = true;
        } catch (error) {
          console.error(`Error in async event listener for ${eventName}:`, error);
        }
      }
    }
    
    // Вызываем одноразовых слушателей
    if (this.onceListeners.has(eventName)) {
      const listeners = this.onceListeners.get(eventName);
      // Очищаем список одноразовых слушателей перед вызовом
      this.onceListeners.delete(eventName);
      
      for (const listener of listeners) {
        try {
          await listener(data);
          handled = true;
        } catch (error) {
          console.error(`Error in async once event listener for ${eventName}:`, error);
        }
      }
    }
    
    return handled;
  }

  /**
   * Получение всех имен событий, на которые есть подписчики
   * @returns {Array<string>} - Массив имен событий
   */
  getEventNames() {
    const regularEvents = Array.from(this.listeners.keys());
    const onceEvents = Array.from(this.onceListeners.keys());
    
    // Объединяем уникальные имена событий
    return [...new Set([...regularEvents, ...onceEvents])];
  }

  /**
   * Получение количества слушателей для события
   * @param {string} eventName - Имя события
   * @returns {number} - Количество слушателей
   */
  listenerCount(eventName) {
    let count = 0;
    
    if (this.listeners.has(eventName)) {
      count += this.listeners.get(eventName).length;
    }
    
    if (this.onceListeners.has(eventName)) {
      count += this.onceListeners.get(eventName).length;
    }
    
    return count;
  }

  /**
   * Удаление всех слушателей
   * @returns {EventBus} - this для цепочки вызовов
   */
  removeAllListeners() {
    this.listeners.clear();
    this.onceListeners.clear();
    return this;
  }
}

module.exports = EventBus;

/**
 * CacheManager - Система кэширования для конвейера обработки
 * 
 * Особенности:
 * - Кэширование результатов операций
 * - Управление жизненным циклом кэша
 * - Стратегии вытеснения (LRU, TTL)
 * - Инвалидация кэша
 */
class CacheManager {
  /**
   * @param {Object} options - Опции менеджера кэша
   * @param {number} options.maxSize - Максимальный размер кэша (в элементах)
   * @param {number} options.defaultTTL - Время жизни элементов по умолчанию (в мс)
   * @param {string} options.strategy - Стратегия вытеснения ('lru', 'ttl', 'lfu')
   * @param {Logger} options.logger - Экземпляр логгера
   * @param {EventEmitter} options.eventEmitter - Система событий
   */
  constructor(options = {}) {
    this.maxSize = options.maxSize || 1000;
    this.defaultTTL = options.defaultTTL || 3600000; // 1 час по умолчанию
    this.strategy = options.strategy || 'lru';
    this.logger = options.logger;
    this.eventEmitter = options.eventEmitter;
    
    this.cache = new Map();
    this.metadata = new Map();
    this.stats = {
      hits: 0,
      misses: 0,
      sets: 0,
      evictions: 0
    };
    
    // Запускаем периодическую очистку устаревших элементов
    this._startCleanupInterval();
  }

  /**
   * Установка значения в кэш
   * @param {string} key - Ключ
   * @param {any} value - Значение
   * @param {Object} options - Опции
   * @param {number} options.ttl - Время жизни элемента (в мс)
   * @returns {Promise<void>}
   */
  async set(key, value, options = {}) {
    const ttl = options.ttl !== undefined ? options.ttl : this.defaultTTL;
    const now = Date.now();
    
    // Проверяем, нужно ли вытеснить элементы
    if (!this.cache.has(key) && this.cache.size >= this.maxSize) {
      this._evict();
    }
    
    // Сохраняем значение
    this.cache.set(key, value);
    
    // Обновляем метаданные
    this.metadata.set(key, {
      createdAt: now,
      accessedAt: now,
      expiresAt: ttl > 0 ? now + ttl : Infinity,
      accessCount: 0,
      size: this._estimateSize(value)
    });
    
    // Обновляем статистику
    this.stats.sets++;
    
    // Уведомляем о добавлении элемента в кэш
    this.eventEmitter?.emit('cache:set', { key, ttl });
    
    this.logger?.debug(`Cache set: ${key}`, { ttl });
  }

  /**
   * Получение значения из кэша
   * @param {string} key - Ключ
   * @returns {Promise<any>} - Значение или undefined, если не найдено
   */
  async get(key) {
    // Проверяем наличие ключа
    if (!this.cache.has(key)) {
      this.stats.misses++;
      this.logger?.debug(`Cache miss: ${key}`);
      return undefined;
    }
    
    // Проверяем срок действия
    const metadata = this.metadata.get(key);
    const now = Date.now();
    
    if (metadata.expiresAt <= now) {
      // Элемент устарел, удаляем его
      this.cache.delete(key);
      this.metadata.delete(key);
      
      this.stats.misses++;
      this.logger?.debug(`Cache expired: ${key}`);
      
      // Уведомляем об устаревании элемента
      this.eventEmitter?.emit('cache:expired', { key });
      
      return undefined;
    }
    
    // Обновляем метаданные
    metadata.accessedAt = now;
    metadata.accessCount++;
    
    // Обновляем статистику
    this.stats.hits++;
    
    this.logger?.debug(`Cache hit: ${key}`);
    
    // Уведомляем о получении элемента из кэша
    this.eventEmitter?.emit('cache:hit', { key });
    
    return this.cache.get(key);
  }

  /**
   * Проверка наличия ключа в кэше
   * @param {string} key - Ключ
   * @returns {Promise<boolean>} - true, если ключ существует и не устарел
   */
  async has(key) {
    // Проверяем наличие ключа
    if (!this.cache.has(key)) {
      return false;
    }
    
    // Проверяем срок действия
    const metadata = this.metadata.get(key);
    const now = Date.now();
    
    if (metadata.expiresAt <= now) {
      // Элемент устарел, удаляем его
      this.cache.delete(key);
      this.metadata.delete(key);
      
      // Уведомляем об устаревании элемента
      this.eventEmitter?.emit('cache:expired', { key });
      
      return false;
    }
    
    return true;
  }

  /**
   * Удаление значения из кэша
   * @param {string} key - Ключ
   * @returns {Promise<boolean>} - true, если значение было удалено
   */
  async delete(key) {
    const exists = this.cache.has(key);
    
    if (exists) {
      this.cache.delete(key);
      this.metadata.delete(key);
      
      this.logger?.debug(`Cache delete: ${key}`);
      
      // Уведомляем об удалении элемента
      this.eventEmitter?.emit('cache:deleted', { key });
    }
    
    return exists;
  }

  /**
   * Очистка кэша
   * @returns {Promise<void>}
   */
  async clear() {
    const size = this.cache.size;
    
    this.cache.clear();
    this.metadata.clear();
    
    this.logger?.info(`Cache cleared: ${size} items removed`);
    
    // Уведомляем об очистке кэша
    this.eventEmitter?.emit('cache:cleared', { size });
  }

  /**
   * Установка TTL для ключа
   * @param {string} key - Ключ
   * @param {number} ttl - Время жизни (в мс)
   * @returns {Promise<boolean>} - true, если TTL был установлен
   */
  async setTTL(key, ttl) {
    if (!this.cache.has(key)) {
      return false;
    }
    
    const metadata = this.metadata.get(key);
    const now = Date.now();
    
    metadata.expiresAt = ttl > 0 ? now + ttl : Infinity;
    
    this.logger?.debug(`Cache TTL set: ${key}`, { ttl });
    
    // Уведомляем об изменении TTL
    this.eventEmitter?.emit('cache:ttl_set', { key, ttl });
    
    return true;
  }

  /**
   * Инвалидация кэша по шаблону
   * @param {string|RegExp} pattern - Шаблон для инвалидации
   * @returns {Promise<number>} - Количество инвалидированных элементов
   */
  async invalidate(pattern) {
    let count = 0;
    const keys = Array.from(this.cache.keys());
    
    for (const key of keys) {
      if (this._matchPattern(key, pattern)) {
        this.cache.delete(key);
        this.metadata.delete(key);
        count++;
      }
    }
    
    this.logger?.info(`Cache invalidated: ${count} items removed`, { pattern });
    
    // Уведомляем об инвалидации кэша
    this.eventEmitter?.emit('cache:invalidated', { pattern, count });
    
    return count;
  }

  /**
   * Получение статистики кэша
   * @returns {Promise<Object>} - Статистика кэша
   */
  async getStats() {
    const now = Date.now();
    let totalSize = 0;
    let oldestTimestamp = Infinity;
    let newestTimestamp = 0;
    
    // Подсчитываем размер и находим самый старый и новый элементы
    for (const metadata of this.metadata.values()) {
      totalSize += metadata.size;
      
      if (metadata.createdAt < oldestTimestamp) {
        oldestTimestamp = metadata.createdAt;
      }
      
      if (metadata.createdAt > newestTimestamp) {
        newestTimestamp = metadata.createdAt;
      }
    }
    
    return {
      ...this.stats,
      size: this.cache.size,
      maxSize: this.maxSize,
      totalSize,
      oldestAge: oldestTimestamp !== Infinity ? now - oldestTimestamp : 0,
      newestAge: newestTimestamp !== 0 ? now - newestTimestamp : 0,
      hitRatio: this.stats.hits / (this.stats.hits + this.stats.misses) || 0
    };
  }

  /**
   * Запуск интервала очистки устаревших элементов
   * @private
   */
  _startCleanupInterval() {
    // Очищаем устаревшие элементы каждую минуту
    const interval = setInterval(() => {
      this._cleanup();
    }, 60000);
    
    // Предотвращаем блокировку процесса Node.js
    if (interval.unref) {
      interval.unref();
    }
  }

  /**
   * Очистка устаревших элементов
   * @private
   */
  _cleanup() {
    const now = Date.now();
    let count = 0;
    
    for (const [key, metadata] of this.metadata.entries()) {
      if (metadata.expiresAt <= now) {
        this.cache.delete(key);
        this.metadata.delete(key);
        count++;
      }
    }
    
    if (count > 0) {
      this.logger?.debug(`Cache cleanup: ${count} items removed`);
      
      // Уведомляем об очистке устаревших элементов
      this.eventEmitter?.emit('cache:cleanup', { count });
    }
  }

  /**
   * Вытеснение элементов из кэша
   * @private
   */
  _evict() {
    // Выбираем стратегию вытеснения
    switch (this.strategy) {
      case 'lru':
        this._evictLRU();
        break;
      case 'ttl':
        this._evictTTL();
        break;
      case 'lfu':
        this._evictLFU();
        break;
      default:
        this._evictLRU();
    }
  }

  /**
   * Вытеснение по стратегии LRU (Least Recently Used)
   * @private
   */
  _evictLRU() {
    let oldestKey = null;
    let oldestAccess = Infinity;
    
    // Находим самый давно использованный элемент
    for (const [key, metadata] of this.metadata.entries()) {
      if (metadata.accessedAt < oldestAccess) {
        oldestAccess = metadata.accessedAt;
        oldestKey = key;
      }
    }
    
    if (oldestKey) {
      this.cache.delete(oldestKey);
      this.metadata.delete(oldestKey);
      this.stats.evictions++;
      
      this.logger?.debug(`Cache eviction (LRU): ${oldestKey}`);
      
      // Уведомляем о вытеснении элемента
      this.eventEmitter?.emit('cache:evicted', { key: oldestKey, strategy: 'lru' });
    }
  }

  /**
   * Вытеснение по стратегии TTL (Time To Live)
   * @private
   */
  _evictTTL() {
    let closestKey = null;
    let closestExpiry = Infinity;
    
    // Находим элемент с ближайшим сроком истечения
    for (const [key, metadata] of this.metadata.entries()) {
      if (metadata.expiresAt < closestExpiry) {
        closestExpiry = metadata.expiresAt;
        closestKey = key;
      }
    }
    
    if (closestKey) {
      this.cache.delete(closestKey);
      this.metadata.delete(closestKey);
      this.stats.evictions++;
      
      this.logger?.debug(`Cache eviction (TTL): ${closestKey}`);
      
      // Уведомляем о вытеснении элемента
      this.eventEmitter?.emit('cache:evicted', { key: closestKey, strategy: 'ttl' });
    }
  }

  /**
   * Вытеснение по стратегии LFU (Least Frequently Used)
   * @private
   */
  _evictLFU() {
    let leastUsedKey = null;
    let leastUsedCount = Infinity;
    
    // Находим наименее часто используемый элемент
    for (const [key, metadata] of this.metadata.entries()) {
      if (metadata.accessCount < leastUsedCount) {
        leastUsedCount = metadata.accessCount;
        leastUsedKey = key;
      }
    }
    
    if (leastUsedKey) {
      this.cache.delete(leastUsedKey);
      this.metadata.delete(leastUsedKey);
      this.stats.evictions++;
      
      this.logger?.debug(`Cache eviction (LFU): ${leastUsedKey}`);
      
      // Уведомляем о вытеснении элемента
      this.eventEmitter?.emit('cache:evicted', { key: leastUsedKey, strategy: 'lfu' });
    }
  }

  /**
   * Проверка соответствия ключа шаблону
   * @private
   * @param {string} key - Ключ
   * @param {string|RegExp} pattern - Шаблон
   * @returns {boolean} - true, если ключ соответствует шаблону
   */
  _matchPattern(key, pattern) {
    if (pattern instanceof RegExp) {
      return pattern.test(key);
    }
    
    if (typeof pattern === 'string') {
      // Поддержка простых шаблонов с * (например, "user:*:profile")
      if (pattern.includes('*')) {
        const regex = new RegExp('^' + pattern.replace(/\*/g, '.*') + '$');
        return regex.test(key);
      }
      
      return key === pattern;
    }
    
    return false;
  }

  /**
   * Оценка размера значения
   * @private
   * @param {any} value - Значение
   * @returns {number} - Примерный размер в байтах
   */
  _estimateSize(value) {
    if (value === null || value === undefined) {
      return 0;
    }
    
    if (typeof value === 'boolean') {
      return 4;
    }
    
    if (typeof value === 'number') {
      return 8;
    }
    
    if (typeof value === 'string') {
      return value.length * 2;
    }
    
    if (typeof value === 'object') {
      try {
        const json = JSON.stringify(value);
        return json.length * 2;
      } catch (e) {
        // Если не удалось сериализовать, используем приблизительную оценку
        return 1024;
      }
    }
    
    return 8; // Значение по умолчанию
  }
}

module.exports = CacheManager;

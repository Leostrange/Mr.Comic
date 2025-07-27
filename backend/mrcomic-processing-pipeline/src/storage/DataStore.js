/**
 * DataStore - Абстракция хранилища данных для конвейера обработки
 * 
 * Особенности:
 * - Абстракция над различными хранилищами
 * - Сохранение и загрузка данных
 * - Управление метаданными
 * - Версионирование данных
 */
class DataStore {
  /**
   * @param {Object} adapter - Адаптер для конкретного хранилища
   * @param {Object} options - Опции хранилища данных
   * @param {Logger} options.logger - Экземпляр логгера
   * @param {ErrorHandler} options.errorHandler - Обработчик ошибок
   * @param {EventEmitter} options.eventEmitter - Система событий
   */
  constructor(adapter, options = {}) {
    if (!adapter || typeof adapter !== 'object') {
      throw new Error('Adapter is required');
    }
    
    this.adapter = adapter;
    this.logger = options.logger;
    this.errorHandler = options.errorHandler;
    this.eventEmitter = options.eventEmitter;
    
    this.transactionActive = false;
    this.transactionOperations = [];
  }

  /**
   * Создание записи в коллекции
   * @param {string} collection - Имя коллекции
   * @param {Object} data - Данные для сохранения
   * @returns {Promise<Object>} - Созданная запись
   */
  async create(collection, data) {
    this._validateCollection(collection);
    
    if (!data || typeof data !== 'object') {
      throw new Error('Data must be an object');
    }
    
    // Добавляем метаданные
    const record = {
      ...data,
      _meta: {
        createdAt: Date.now(),
        updatedAt: Date.now(),
        version: 1
      }
    };
    
    // Если транзакция активна, добавляем операцию в список
    if (this.transactionActive) {
      this.transactionOperations.push({
        type: 'create',
        collection,
        data: record
      });
      return record;
    }
    
    try {
      this.logger?.debug(`Creating record in collection ${collection}`);
      
      const result = await this.adapter.create(collection, record);
      
      // Уведомляем о создании записи
      this.eventEmitter?.emit('datastore:created', { 
        collection, 
        data: result 
      });
      
      return result;
    } catch (error) {
      this.logger?.error(`Error creating record in collection ${collection}`, error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'create', 
          collection, 
          data 
        });
      }
      
      throw error;
    }
  }

  /**
   * Чтение записи из коллекции
   * @param {string} collection - Имя коллекции
   * @param {string|Object} id - ID записи или условие поиска
   * @returns {Promise<Object>} - Найденная запись
   */
  async read(collection, id) {
    this._validateCollection(collection);
    
    try {
      this.logger?.debug(`Reading record from collection ${collection}`, { id });
      
      const result = await this.adapter.read(collection, id);
      
      return result;
    } catch (error) {
      this.logger?.error(`Error reading record from collection ${collection}`, error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'read', 
          collection, 
          id 
        });
      }
      
      throw error;
    }
  }

  /**
   * Обновление записи в коллекции
   * @param {string} collection - Имя коллекции
   * @param {string|Object} id - ID записи или условие поиска
   * @param {Object} data - Данные для обновления
   * @returns {Promise<Object>} - Обновленная запись
   */
  async update(collection, id, data) {
    this._validateCollection(collection);
    
    if (!data || typeof data !== 'object') {
      throw new Error('Data must be an object');
    }
    
    // Если транзакция активна, добавляем операцию в список
    if (this.transactionActive) {
      this.transactionOperations.push({
        type: 'update',
        collection,
        id,
        data
      });
      return { id, ...data };
    }
    
    try {
      // Получаем текущую запись для обновления метаданных
      const current = await this.adapter.read(collection, id);
      
      // Обновляем метаданные
      const updatedData = {
        ...data,
        _meta: {
          ...(current._meta || {}),
          updatedAt: Date.now(),
          version: ((current._meta && current._meta.version) || 0) + 1
        }
      };
      
      this.logger?.debug(`Updating record in collection ${collection}`, { id });
      
      const result = await this.adapter.update(collection, id, updatedData);
      
      // Уведомляем об обновлении записи
      this.eventEmitter?.emit('datastore:updated', { 
        collection, 
        id, 
        data: result 
      });
      
      return result;
    } catch (error) {
      this.logger?.error(`Error updating record in collection ${collection}`, error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'update', 
          collection, 
          id, 
          data 
        });
      }
      
      throw error;
    }
  }

  /**
   * Удаление записи из коллекции
   * @param {string} collection - Имя коллекции
   * @param {string|Object} id - ID записи или условие поиска
   * @returns {Promise<boolean>} - true, если запись была удалена
   */
  async delete(collection, id) {
    this._validateCollection(collection);
    
    // Если транзакция активна, добавляем операцию в список
    if (this.transactionActive) {
      this.transactionOperations.push({
        type: 'delete',
        collection,
        id
      });
      return true;
    }
    
    try {
      this.logger?.debug(`Deleting record from collection ${collection}`, { id });
      
      const result = await this.adapter.delete(collection, id);
      
      // Уведомляем об удалении записи
      this.eventEmitter?.emit('datastore:deleted', { 
        collection, 
        id 
      });
      
      return result;
    } catch (error) {
      this.logger?.error(`Error deleting record from collection ${collection}`, error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'delete', 
          collection, 
          id 
        });
      }
      
      throw error;
    }
  }

  /**
   * Поиск записей в коллекции
   * @param {string} collection - Имя коллекции
   * @param {Object} filter - Фильтр для поиска
   * @returns {Promise<Array<Object>>} - Найденные записи
   */
  async query(collection, filter = {}) {
    this._validateCollection(collection);
    
    try {
      this.logger?.debug(`Querying collection ${collection}`, { filter });
      
      const result = await this.adapter.query(collection, filter);
      
      return result;
    } catch (error) {
      this.logger?.error(`Error querying collection ${collection}`, error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'query', 
          collection, 
          filter 
        });
      }
      
      throw error;
    }
  }

  /**
   * Создание коллекции
   * @param {string} name - Имя коллекции
   * @param {Object} options - Опции коллекции
   * @returns {Promise<boolean>} - true, если коллекция была создана
   */
  async createCollection(name, options = {}) {
    this._validateCollectionName(name);
    
    // Если транзакция активна, добавляем операцию в список
    if (this.transactionActive) {
      this.transactionOperations.push({
        type: 'createCollection',
        name,
        options
      });
      return true;
    }
    
    try {
      this.logger?.info(`Creating collection ${name}`, options);
      
      const result = await this.adapter.createCollection(name, options);
      
      // Уведомляем о создании коллекции
      this.eventEmitter?.emit('datastore:collection_created', { 
        name, 
        options 
      });
      
      return result;
    } catch (error) {
      this.logger?.error(`Error creating collection ${name}`, error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'createCollection', 
          name, 
          options 
        });
      }
      
      throw error;
    }
  }

  /**
   * Удаление коллекции
   * @param {string} name - Имя коллекции
   * @returns {Promise<boolean>} - true, если коллекция была удалена
   */
  async deleteCollection(name) {
    this._validateCollectionName(name);
    
    // Если транзакция активна, добавляем операцию в список
    if (this.transactionActive) {
      this.transactionOperations.push({
        type: 'deleteCollection',
        name
      });
      return true;
    }
    
    try {
      this.logger?.info(`Deleting collection ${name}`);
      
      const result = await this.adapter.deleteCollection(name);
      
      // Уведомляем об удалении коллекции
      this.eventEmitter?.emit('datastore:collection_deleted', { name });
      
      return result;
    } catch (error) {
      this.logger?.error(`Error deleting collection ${name}`, error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'deleteCollection', 
          name 
        });
      }
      
      throw error;
    }
  }

  /**
   * Получение списка коллекций
   * @returns {Promise<Array<string>>} - Список имен коллекций
   */
  async listCollections() {
    try {
      this.logger?.debug('Listing collections');
      
      const result = await this.adapter.listCollections();
      
      return result;
    } catch (error) {
      this.logger?.error('Error listing collections', error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'listCollections' 
        });
      }
      
      throw error;
    }
  }

  /**
   * Начало транзакции
   * @returns {Promise<void>}
   */
  async beginTransaction() {
    if (this.transactionActive) {
      throw new Error('Transaction already active');
    }
    
    this.logger?.debug('Beginning transaction');
    
    this.transactionActive = true;
    this.transactionOperations = [];
    
    // Если адаптер поддерживает транзакции, вызываем его метод
    if (typeof this.adapter.beginTransaction === 'function') {
      await this.adapter.beginTransaction();
    }
  }

  /**
   * Фиксация транзакции
   * @returns {Promise<void>}
   */
  async commitTransaction() {
    if (!this.transactionActive) {
      throw new Error('No active transaction');
    }
    
    this.logger?.debug('Committing transaction', { 
      operations: this.transactionOperations.length 
    });
    
    try {
      // Если адаптер поддерживает транзакции, вызываем его метод
      if (typeof this.adapter.commitTransaction === 'function') {
        await this.adapter.commitTransaction();
      } else {
        // Иначе выполняем операции последовательно
        for (const operation of this.transactionOperations) {
          switch (operation.type) {
            case 'create':
              await this.adapter.create(operation.collection, operation.data);
              break;
            case 'update':
              await this.adapter.update(operation.collection, operation.id, operation.data);
              break;
            case 'delete':
              await this.adapter.delete(operation.collection, operation.id);
              break;
            case 'createCollection':
              await this.adapter.createCollection(operation.name, operation.options);
              break;
            case 'deleteCollection':
              await this.adapter.deleteCollection(operation.name);
              break;
          }
        }
      }
      
      // Уведомляем о фиксации транзакции
      this.eventEmitter?.emit('datastore:transaction_committed', { 
        operations: this.transactionOperations.length 
      });
    } finally {
      // Сбрасываем состояние транзакции
      this.transactionActive = false;
      this.transactionOperations = [];
    }
  }

  /**
   * Откат транзакции
   * @returns {Promise<void>}
   */
  async rollbackTransaction() {
    if (!this.transactionActive) {
      throw new Error('No active transaction');
    }
    
    this.logger?.debug('Rolling back transaction', { 
      operations: this.transactionOperations.length 
    });
    
    try {
      // Если адаптер поддерживает транзакции, вызываем его метод
      if (typeof this.adapter.rollbackTransaction === 'function') {
        await this.adapter.rollbackTransaction();
      }
      
      // Уведомляем об откате транзакции
      this.eventEmitter?.emit('datastore:transaction_rolled_back', { 
        operations: this.transactionOperations.length 
      });
    } finally {
      // Сбрасываем состояние транзакции
      this.transactionActive = false;
      this.transactionOperations = [];
    }
  }

  /**
   * Проверка существования коллекции
   * @param {string} name - Имя коллекции
   * @returns {Promise<boolean>} - true, если коллекция существует
   */
  async collectionExists(name) {
    try {
      const collections = await this.listCollections();
      return collections.includes(name);
    } catch (error) {
      this.logger?.error(`Error checking if collection ${name} exists`, error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'collectionExists', 
          name 
        });
      }
      
      throw error;
    }
  }

  /**
   * Получение статистики хранилища
   * @returns {Promise<Object>} - Статистика хранилища
   */
  async getStats() {
    try {
      if (typeof this.adapter.getStats === 'function') {
        return await this.adapter.getStats();
      }
      
      // Если адаптер не поддерживает статистику, собираем базовую информацию
      const collections = await this.listCollections();
      const stats = {
        collections: collections.length,
        collectionDetails: {}
      };
      
      for (const collection of collections) {
        const items = await this.query(collection);
        stats.collectionDetails[collection] = {
          count: items.length
        };
      }
      
      return stats;
    } catch (error) {
      this.logger?.error('Error getting datastore stats', error);
      
      if (this.errorHandler) {
        return this.errorHandler.handleError(error, { 
          operation: 'getStats' 
        });
      }
      
      throw error;
    }
  }

  /**
   * Проверка валидности имени коллекции
   * @private
   * @param {string} name - Имя коллекции
   * @throws {Error} - Если имя невалидно
   */
  _validateCollectionName(name) {
    if (!name || typeof name !== 'string') {
      throw new Error('Collection name must be a non-empty string');
    }
    
    // Проверяем формат имени (только буквы, цифры, подчеркивания и дефисы)
    if (!/^[a-zA-Z0-9_-]+$/.test(name)) {
      throw new Error('Collection name can only contain letters, numbers, underscores and hyphens');
    }
  }

  /**
   * Проверка валидности коллекции
   * @private
   * @param {string} collection - Имя коллекции
   * @throws {Error} - Если коллекция невалидна
   */
  _validateCollection(collection) {
    this._validateCollectionName(collection);
  }
}

module.exports = DataStore;

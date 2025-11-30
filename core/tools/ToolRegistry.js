/**
 * ToolRegistry - Реестр всех доступных инструментов редактирования
 * 
 * Отвечает за:
 * - Хранение метаданных инструментов
 * - Поиск инструментов по типу, категории и возможностям
 * - Управление зависимостями между инструментами
 */
class ToolRegistry {
  /**
   * @constructor
   * @param {Object} options - Опции для инициализации реестра инструментов
   */
  constructor(options = {}) {
    this.tools = new Map(); // Хранилище метаданных инструментов
    this.categories = new Map(); // Категории инструментов
    this.capabilities = new Map(); // Возможности инструментов
    this.dependencies = new Map(); // Зависимости между инструментами
    this.eventBus = options.eventBus || null; // Шина событий для коммуникации
    this.initialized = false; // Флаг инициализации
  }

  /**
   * Инициализация реестра инструментов
   * @returns {Promise<void>}
   */
  async initialize() {
    if (this.initialized) {
      return;
    }

    // Создаем шину событий, если она не была предоставлена
    if (!this.eventBus) {
      const EventBus = require('./EventBus');
      this.eventBus = new EventBus();
    }

    this.initialized = true;
    this.eventBus.emit('toolRegistry.initialized', { registry: this });
  }

  /**
   * Регистрация метаданных инструмента
   * @param {Object} metadata - Метаданные инструмента
   * @returns {boolean} - Успешность регистрации
   */
  registerTool(metadata) {
    if (!metadata || !metadata.id || !metadata.type) {
      console.error('Invalid tool metadata provided for registration');
      return false;
    }

    if (this.tools.has(metadata.id)) {
      console.warn(`Tool with id ${metadata.id} is already registered`);
      return false;
    }

    // Регистрируем метаданные инструмента
    this.tools.set(metadata.id, metadata);

    // Регистрируем категорию инструмента
    if (metadata.category) {
      if (!this.categories.has(metadata.category)) {
        this.categories.set(metadata.category, new Set());
      }
      this.categories.get(metadata.category).add(metadata.id);
    }

    // Регистрируем возможности инструмента
    if (metadata.capabilities && Array.isArray(metadata.capabilities)) {
      metadata.capabilities.forEach(capability => {
        if (!this.capabilities.has(capability)) {
          this.capabilities.set(capability, new Set());
        }
        this.capabilities.get(capability).add(metadata.id);
      });
    }

    // Регистрируем зависимости инструмента
    if (metadata.dependencies && Array.isArray(metadata.dependencies)) {
      this.dependencies.set(metadata.id, new Set(metadata.dependencies));
    }

    this.eventBus.emit('toolRegistry.toolRegistered', { toolId: metadata.id, metadata });
    return true;
  }

  /**
   * Отмена регистрации инструмента
   * @param {string} toolId - ID инструмента для отмены регистрации
   * @returns {boolean} - Успешность отмены регистрации
   */
  unregisterTool(toolId) {
    if (!this.tools.has(toolId)) {
      console.warn(`Tool with id ${toolId} is not registered`);
      return false;
    }

    const metadata = this.tools.get(toolId);

    // Удаляем из категорий
    if (metadata.category && this.categories.has(metadata.category)) {
      this.categories.get(metadata.category).delete(toolId);
      if (this.categories.get(metadata.category).size === 0) {
        this.categories.delete(metadata.category);
      }
    }

    // Удаляем из возможностей
    if (metadata.capabilities && Array.isArray(metadata.capabilities)) {
      metadata.capabilities.forEach(capability => {
        if (this.capabilities.has(capability)) {
          this.capabilities.get(capability).delete(toolId);
          if (this.capabilities.get(capability).size === 0) {
            this.capabilities.delete(capability);
          }
        }
      });
    }

    // Удаляем зависимости
    this.dependencies.delete(toolId);

    // Проверяем, не является ли инструмент зависимостью для других инструментов
    for (const [id, deps] of this.dependencies.entries()) {
      if (deps.has(toolId)) {
        console.warn(`Tool ${toolId} is a dependency for ${id}`);
        // Можно также автоматически удалить зависимые инструменты
        // this.unregisterTool(id);
      }
    }

    // Удаляем метаданные инструмента
    this.tools.delete(toolId);

    this.eventBus.emit('toolRegistry.toolUnregistered', { toolId, metadata });
    return true;
  }

  /**
   * Получение метаданных инструмента по ID
   * @param {string} toolId - ID инструмента
   * @returns {Object|null} - Метаданные инструмента или null, если не найден
   */
  getToolMetadata(toolId) {
    return this.tools.get(toolId) || null;
  }

  /**
   * Получение всех зарегистрированных инструментов
   * @returns {Array} - Массив метаданных инструментов
   */
  getAllTools() {
    return Array.from(this.tools.values());
  }

  /**
   * Получение инструментов по типу
   * @param {string} type - Тип инструментов для фильтрации
   * @returns {Array} - Массив метаданных инструментов указанного типа
   */
  getToolsByType(type) {
    return this.getAllTools().filter(metadata => metadata.type === type);
  }

  /**
   * Получение инструментов по категории
   * @param {string} category - Категория инструментов для фильтрации
   * @returns {Array} - Массив метаданных инструментов указанной категории
   */
  getToolsByCategory(category) {
    if (!this.categories.has(category)) {
      return [];
    }

    return Array.from(this.categories.get(category))
      .map(toolId => this.tools.get(toolId))
      .filter(Boolean);
  }

  /**
   * Получение инструментов по возможности
   * @param {string} capability - Возможность инструментов для фильтрации
   * @returns {Array} - Массив метаданных инструментов с указанной возможностью
   */
  getToolsByCapability(capability) {
    if (!this.capabilities.has(capability)) {
      return [];
    }

    return Array.from(this.capabilities.get(capability))
      .map(toolId => this.tools.get(toolId))
      .filter(Boolean);
  }

  /**
   * Проверка зависимостей инструмента
   * @param {string} toolId - ID инструмента для проверки зависимостей
   * @returns {Object} - Результат проверки зависимостей
   */
  checkDependencies(toolId) {
    if (!this.tools.has(toolId)) {
      return { valid: false, message: `Tool ${toolId} is not registered` };
    }

    if (!this.dependencies.has(toolId) || this.dependencies.get(toolId).size === 0) {
      return { valid: true, message: 'No dependencies' };
    }

    const missingDependencies = [];
    for (const depId of this.dependencies.get(toolId)) {
      if (!this.tools.has(depId)) {
        missingDependencies.push(depId);
      }
    }

    if (missingDependencies.length > 0) {
      return {
        valid: false,
        message: `Missing dependencies: ${missingDependencies.join(', ')}`,
        missingDependencies
      };
    }

    return { valid: true, message: 'All dependencies satisfied' };
  }

  /**
   * Получение зависимостей инструмента
   * @param {string} toolId - ID инструмента
   * @returns {Array} - Массив ID зависимостей
   */
  getToolDependencies(toolId) {
    if (!this.dependencies.has(toolId)) {
      return [];
    }

    return Array.from(this.dependencies.get(toolId));
  }

  /**
   * Получение инструментов, зависящих от указанного
   * @param {string} toolId - ID инструмента
   * @returns {Array} - Массив ID зависимых инструментов
   */
  getDependentTools(toolId) {
    const dependentTools = [];

    for (const [id, deps] of this.dependencies.entries()) {
      if (deps.has(toolId)) {
        dependentTools.push(id);
      }
    }

    return dependentTools;
  }

  /**
   * Освобождение ресурсов при уничтожении реестра
   * @returns {Promise<void>}
   */
  async dispose() {
    // Очищаем коллекции
    this.tools.clear();
    this.categories.clear();
    this.capabilities.clear();
    this.dependencies.clear();
    
    this.initialized = false;
    this.eventBus.emit('toolRegistry.disposed', { registry: this });
  }
}

module.exports = ToolRegistry;

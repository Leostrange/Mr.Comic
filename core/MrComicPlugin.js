/**
 * MrComicPlugin - Базовый класс для всех плагинов Mr.Comic
 * 
 * Этот класс предоставляет базовую функциональность для всех плагинов,
 * включая управление жизненным циклом, обработку событий и интеграцию с API.
 */
class MrComicPlugin {
  /**
   * Конструктор плагина
   * @param {Object} metadata - Метаданные плагина
   * @param {string} metadata.id - Уникальный идентификатор плагина
   * @param {string} metadata.name - Название плагина
   * @param {string} metadata.version - Версия плагина
   * @param {string} [metadata.description] - Описание плагина
   * @param {string} [metadata.author] - Автор плагина
   * @param {Object} [metadata.dependencies] - Зависимости плагина
   * @param {Array<string>} [metadata.permissions] - Запрашиваемые разрешения
   */
  constructor(metadata) {
    if (!metadata) {
      throw new Error('Metadata is required for plugin initialization');
    }
    
    if (!metadata.id || !metadata.name || !metadata.version) {
      throw new Error('Plugin ID, name, and version are required');
    }
    
    // Метаданные плагина
    this._metadata = {
      id: metadata.id,
      name: metadata.name,
      version: metadata.version,
      description: metadata.description || '',
      author: metadata.author || '',
      dependencies: metadata.dependencies || {},
      permissions: metadata.permissions || []
    };
    
    // Контекст плагина (устанавливается при активации)
    this._context = null;
    
    // Состояние плагина
    this._state = {
      isActive: false,
      isLoaded: true,
      error: null
    };
    
    // Обработчики событий
    this._eventHandlers = new Map();
  }
  
  /**
   * Получение идентификатора плагина
   * @returns {string} Идентификатор плагина
   */
  get id() {
    return this._metadata.id;
  }
  
  /**
   * Получение названия плагина
   * @returns {string} Название плагина
   */
  get name() {
    return this._metadata.name;
  }
  
  /**
   * Получение версии плагина
   * @returns {string} Версия плагина
   */
  get version() {
    return this._metadata.version;
  }
  
  /**
   * Получение описания плагина
   * @returns {string} Описание плагина
   */
  get description() {
    return this._metadata.description;
  }
  
  /**
   * Получение автора плагина
   * @returns {string} Автор плагина
   */
  get author() {
    return this._metadata.author;
  }
  
  /**
   * Получение зависимостей плагина
   * @returns {Object} Зависимости плагина
   */
  get dependencies() {
    return { ...this._metadata.dependencies };
  }
  
  /**
   * Получение запрашиваемых разрешений
   * @returns {Array<string>} Запрашиваемые разрешения
   */
  get permissions() {
    return [...this._metadata.permissions];
  }
  
  /**
   * Проверка активности плагина
   * @returns {boolean} true, если плагин активен
   */
  get isActive() {
    return this._state.isActive;
  }
  
  /**
   * Получение всех метаданных плагина
   * @returns {Object} Метаданные плагина
   */
  getMetadata() {
    return { ...this._metadata };
  }
  
  /**
   * Метод активации плагина
   * @param {PluginContext} context - Контекст плагина
   * @returns {Promise<void>}
   */
  async activate(context) {
    if (!context) {
      throw new Error('Plugin context is required for activation');
    }
    
    if (this._state.isActive) {
      return; // Плагин уже активен
    }
    
    // Сохранение контекста
    this._context = context;
    
    // Обновление состояния
    this._state.isActive = true;
    this._state.error = null;
  }
  
  /**
   * Метод деактивации плагина
   * @returns {Promise<void>}
   */
  async deactivate() {
    if (!this._state.isActive) {
      return; // Плагин уже неактивен
    }
    
    // Удаление обработчиков событий
    this._eventHandlers.clear();
    
    // Обновление состояния
    this._state.isActive = false;
    this._context = null;
  }
  
  /**
   * Регистрация обработчика события
   * @param {string} event - Название события
   * @param {Function} handler - Обработчик события
   * @returns {Function} Функция для отмены регистрации
   */
  on(event, handler) {
    if (!this._eventHandlers.has(event)) {
      this._eventHandlers.set(event, new Set());
    }
    
    this._eventHandlers.get(event).add(handler);
    
    // Возвращаем функцию для отмены регистрации
    return () => {
      if (this._eventHandlers.has(event)) {
        this._eventHandlers.get(event).delete(handler);
      }
    };
  }
  
  /**
   * Отмена регистрации обработчика события
   * @param {string} event - Название события
   * @param {Function} handler - Обработчик события
   */
  off(event, handler) {
    if (this._eventHandlers.has(event)) {
      if (handler) {
        this._eventHandlers.get(event).delete(handler);
      } else {
        this._eventHandlers.delete(event);
      }
    }
  }
  
  /**
   * Генерация события
   * @param {string} event - Название события
   * @param {...any} args - Аргументы события
   */
  emit(event, ...args) {
    if (this._eventHandlers.has(event)) {
      for (const handler of this._eventHandlers.get(event)) {
        try {
          handler(...args);
        } catch (error) {
          console.error(`Error in event handler for ${event}:`, error);
        }
      }
    }
  }
  
  /**
   * Выполнение команды плагина
   * @param {string} command - Идентификатор команды
   * @param {Array} args - Аргументы команды
   * @returns {Promise<any>} - Результат выполнения команды
   * @throws {Error} Если команда не найдена или произошла ошибка при выполнении
   */
  async executeCommand(command, ...args) {
    throw new Error(`Command ${command} not implemented in plugin ${this.id}`);
  }
}

// Экспорт класса
module.exports = MrComicPlugin;

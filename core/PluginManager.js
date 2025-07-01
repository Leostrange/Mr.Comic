/**
 * PluginManager - Менеджер плагинов для Mr.Comic
 * 
 * Этот класс управляет жизненным циклом плагинов, их регистрацией,
 * активацией, деактивацией и взаимодействием с основным приложением.
 */
class PluginManager {
  /**
   * Конструктор менеджера плагинов
   * @param {Object} options - Опции менеджера
   * @param {PluginDependencyManager} options.dependencyManager - Менеджер зависимостей
   * @param {PermissionManager} options.permissionManager - Менеджер разрешений
   * @param {PluginSandbox} options.sandbox - Песочница для плагинов
   */
  constructor(options = {}) {
    // Реестр плагинов: pluginId -> plugin
    this._registry = {};
    
    // Активные плагины: pluginId -> plugin
    this._activePlugins = {};
    
    // Менеджер зависимостей
    this._dependencyManager = options.dependencyManager;
    
    // Менеджер разрешений
    this._permissionManager = options.permissionManager;
    
    // Песочница для плагинов
    this._sandbox = options.sandbox;
    
    // Обработчики событий
    this._eventHandlers = {};
  }
  
  /**
   * Регистрация плагина
   * @param {MrComicPlugin} plugin - Экземпляр плагина
   * @returns {Promise<boolean>} true, если плагин успешно зарегистрирован
   */
  async register(plugin) {
    if (!plugin || !plugin.id) {
      throw new Error('Invalid plugin');
    }
    
    if (this._registry[plugin.id]) {
      throw new Error(`Plugin ${plugin.id} is already registered`);
    }
    
    // Регистрация плагина в реестре
    this._registry[plugin.id] = plugin;
    
    // Регистрация зависимостей
    if (this._dependencyManager) {
      this._dependencyManager.registerDependencies(plugin.id, plugin.dependencies, this._registry);
    }
    
    // Регистрация разрешений
    if (this._permissionManager && plugin.permissions) {
      this._permissionManager.registerRequestedPermissions(plugin.id, plugin.permissions);
    }
    
    // Создание контекста выполнения
    if (this._sandbox) {
      this._sandbox.createExecutionContext(plugin.id);
    }
    
    // Генерация события регистрации
    this._emitEvent('plugin:registered', { plugin });
    
    return true;
  }
  
  /**
   * Активация плагина
   * @param {string} pluginId - Идентификатор плагина
   * @returns {Promise<boolean>} true, если плагин успешно активирован
   */
  async activate(pluginId) {
    if (!this._registry[pluginId]) {
      throw new Error(`Plugin ${pluginId} is not registered`);
    }
    
    if (this._activePlugins[pluginId]) {
      return true; // Плагин уже активен
    }
    
    const plugin = this._registry[pluginId];
    
    // Активация зависимостей
    if (this._dependencyManager) {
      const dependencies = this._dependencyManager.getDependencies(pluginId);
      for (const dep of dependencies) {
        if (!this._activePlugins[dep.id]) {
          await this.activate(dep.id);
        }
      }
    }
    
    // Создание контекста плагина
    const PluginContext = require('./PluginContext');
    const context = new PluginContext(pluginId, {
      permissionManager: this._permissionManager
    });
    
    try {
      // Активация плагина
      await plugin.activate(context);
      
      // Добавление в список активных плагинов
      this._activePlugins[pluginId] = plugin;
      
      // Генерация события активации
      this._emitEvent('plugin:activated', { plugin });
      
      return true;
    } catch (error) {
      console.error(`Error activating plugin ${pluginId}:`, error);
      
      // Очистка контекста
      if (context.dispose) {
        context.dispose();
      }
      
      // Генерация события ошибки
      this._emitEvent('plugin:error', { plugin, error });
      
      throw error;
    }
  }
  
  /**
   * Деактивация плагина
   * @param {string} pluginId - Идентификатор плагина
   * @returns {Promise<boolean>} true, если плагин успешно деактивирован
   */
  async deactivate(pluginId) {
    if (!this._activePlugins[pluginId]) {
      return true; // Плагин уже неактивен
    }
    
    const plugin = this._activePlugins[pluginId];
    
    // Проверка зависимых плагинов
    if (this._dependencyManager) {
      const dependentPlugins = this._dependencyManager.getDependentPlugins(pluginId);
      for (const depPluginId of dependentPlugins) {
        if (this._activePlugins[depPluginId]) {
          await this.deactivate(depPluginId);
        }
      }
    }
    
    try {
      // Деактивация плагина
      await plugin.deactivate();
      
      // Удаление из списка активных плагинов
      delete this._activePlugins[pluginId];
      
      // Удаление контекста выполнения
      if (this._sandbox) {
        this._sandbox.removeExecutionContext(pluginId);
      }
      
      // Генерация события деактивации
      this._emitEvent('plugin:deactivated', { plugin });
      
      return true;
    } catch (error) {
      console.error(`Error deactivating plugin ${pluginId}:`, error);
      
      // Генерация события ошибки
      this._emitEvent('plugin:error', { plugin, error });
      
      throw error;
    }
  }
  
  /**
   * Деактивация всех плагинов
   * @returns {Promise<void>}
   */
  async deactivateAll() {
    const pluginIds = Object.keys(this._activePlugins);
    for (const pluginId of pluginIds) {
      await this.deactivate(pluginId);
    }
  }
  
  /**
   * Удаление плагина
   * @param {string} pluginId - Идентификатор плагина
   * @returns {Promise<boolean>} true, если плагин успешно удален
   */
  async unregister(pluginId) {
    if (!this._registry[pluginId]) {
      return true; // Плагин не зарегистрирован
    }
    
    // Деактивация плагина, если он активен
    if (this._activePlugins[pluginId]) {
      await this.deactivate(pluginId);
    }
    
    const plugin = this._registry[pluginId];
    
    // Очистка зависимостей
    if (this._dependencyManager) {
      this._dependencyManager.clearDependencies(pluginId);
    }
    
    // Очистка разрешений
    if (this._permissionManager) {
      this._permissionManager.clearPermissions(pluginId);
    }
    
    // Удаление из реестра
    delete this._registry[pluginId];
    
    // Генерация события удаления
    this._emitEvent('plugin:unregistered', { plugin });
    
    return true;
  }
  
  /**
   * Получение плагина по идентификатору
   * @param {string} pluginId - Идентификатор плагина
   * @returns {MrComicPlugin|null} Экземпляр плагина или null, если не найден
   */
  getPlugin(pluginId) {
    return this._registry[pluginId] || null;
  }
  
  /**
   * Получение всех зарегистрированных плагинов
   * @returns {Array<MrComicPlugin>} Список плагинов
   */
  getAllPlugins() {
    return Object.values(this._registry);
  }
  
  /**
   * Получение всех активных плагинов
   * @returns {Array<MrComicPlugin>} Список активных плагинов
   */
  getActivePlugins() {
    return Object.values(this._activePlugins);
  }
  
  /**
   * Проверка, зарегистрирован ли плагин
   * @param {string} pluginId - Идентификатор плагина
   * @returns {boolean} true, если плагин зарегистрирован
   */
  isRegistered(pluginId) {
    return !!this._registry[pluginId];
  }
  
  /**
   * Проверка, активен ли плагин
   * @param {string} pluginId - Идентификатор плагина
   * @returns {boolean} true, если плагин активен
   */
  isActive(pluginId) {
    return !!this._activePlugins[pluginId];
  }
  
  /**
   * Выполнение команды плагина
   * @param {string} pluginId - Идентификатор плагина
   * @param {string} command - Идентификатор команды
   * @param {...any} args - Аргументы команды
   * @returns {Promise<any>} Результат выполнения команды
   */
  async executeCommand(pluginId, command, ...args) {
    if (!this._activePlugins[pluginId]) {
      throw new Error(`Plugin ${pluginId} is not active`);
    }
    
    const plugin = this._activePlugins[pluginId];
    
    try {
      return await plugin.executeCommand(command, ...args);
    } catch (error) {
      console.error(`Error executing command ${command} in plugin ${pluginId}:`, error);
      
      // Генерация события ошибки
      this._emitEvent('plugin:error', { plugin, error, command, args });
      
      throw error;
    }
  }
  
  /**
   * Регистрация обработчика события
   * @param {string} event - Название события
   * @param {Function} handler - Обработчик события
   * @returns {Function} Функция для отмены регистрации
   */
  on(event, handler) {
    if (!this._eventHandlers[event]) {
      this._eventHandlers[event] = [];
    }
    
    this._eventHandlers[event].push(handler);
    
    // Возвращаем функцию для отмены регистрации
    return () => {
      this.off(event, handler);
    };
  }
  
  /**
   * Отмена регистрации обработчика события
   * @param {string} event - Название события
   * @param {Function} handler - Обработчик события
   */
  off(event, handler) {
    if (!this._eventHandlers[event]) {
      return;
    }
    
    if (handler) {
      this._eventHandlers[event] = this._eventHandlers[event].filter(h => h !== handler);
    } else {
      delete this._eventHandlers[event];
    }
  }
  
  /**
   * Генерация события
   * @param {string} event - Название события
   * @param {Object} data - Данные события
   * @private
   */
  _emitEvent(event, data) {
    if (!this._eventHandlers[event]) {
      return;
    }
    
    for (const handler of this._eventHandlers[event]) {
      try {
        handler(data);
      } catch (error) {
        console.error(`Error in event handler for ${event}:`, error);
      }
    }
  }
}

// Экспорт класса
module.exports = PluginManager;
